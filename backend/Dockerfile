FROM python:3.11-slim

ENV PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYTECODE=1

WORKDIR /srv

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt \
 && pip install --no-cache-dir grpcio-tools==1.68.1

# Stubs gRPC gerados no build a partir dos .proto vendorizados (mesma tag do gobgpd).
COPY protos ./protos
RUN mkdir -p app/gen \
 && python -m grpc_tools.protoc -Iprotos \
      --python_out=app/gen --grpc_python_out=app/gen --pyi_out=app/gen \
      protos/api/gobgp.proto protos/api/attribute.proto protos/api/capability.proto \
      protos/api/common.proto protos/api/extcom.proto protos/api/nlri.proto \
 && touch app/gen/__init__.py app/gen/api/__init__.py \
 && pip uninstall -y grpcio-tools

COPY app ./app

ENV PYTHONPATH=/srv:/srv/app/gen
EXPOSE 4000
CMD ["sh", "-c", "exec uvicorn app.main:app --host ${BIND_HOST:-0.0.0.0} --port ${BIND_PORT:-4000} --no-server-header --proxy-headers"]
