"""Registro simples de jobs em background (import, bulk, reconcile).

Import de ~8k prefixos nao pode segurar a request HTTP: o endpoint devolve um
job_id e a UI acompanha o progresso por polling.
"""
from __future__ import annotations

import threading
import time
import traceback
import uuid
from typing import Any, Callable

_jobs: dict[str, dict] = {}
_lock = threading.Lock()
MAX_JOBS = 50


def create(kind: str, total: int = 0) -> str:
    job_id = uuid.uuid4().hex[:12]
    with _lock:
        _jobs[job_id] = {
            "id": job_id,
            "kind": kind,
            "status": "pending",
            "total": total,
            "done": 0,
            "result": None,
            "error": None,
            "started_at": time.time(),
            "finished_at": None,
        }
        if len(_jobs) > MAX_JOBS:
            oldest = sorted(_jobs.values(), key=lambda j: j["started_at"])
            for job in oldest[: len(_jobs) - MAX_JOBS]:
                if job["status"] in ("done", "error"):
                    _jobs.pop(job["id"], None)
    return job_id


def progress(job_id: str, done: int, total: int | None = None) -> None:
    with _lock:
        job = _jobs.get(job_id)
        if job:
            job["done"] = done
            if total is not None:
                job["total"] = total


def get(job_id: str) -> dict | None:
    with _lock:
        job = _jobs.get(job_id)
        return dict(job) if job else None


def listing() -> list[dict]:
    with _lock:
        return sorted((dict(j) for j in _jobs.values()),
                      key=lambda j: j["started_at"], reverse=True)


def run(job_id: str, fn: Callable[[], Any]) -> None:
    """Executa `fn` numa thread, atualizando o estado do job."""

    def _wrapper() -> None:
        with _lock:
            if job_id in _jobs:
                _jobs[job_id]["status"] = "running"
        try:
            result = fn()
            with _lock:
                job = _jobs.get(job_id)
                if job:
                    job["status"] = "done"
                    job["result"] = result
                    job["finished_at"] = time.time()
        except Exception as exc:  # noqa: BLE001
            with _lock:
                job = _jobs.get(job_id)
                if job:
                    job["status"] = "error"
                    job["error"] = str(exc)
                    job["detail"] = traceback.format_exc(limit=3)
                    job["finished_at"] = time.time()

    threading.Thread(target=_wrapper, name=f"job-{job_id}", daemon=True).start()
