const BASE = '/api';

export class ApiError extends Error {
  constructor(message, status) {
    super(message);
    this.status = status;
  }
}

async function request(path, { method = 'GET', body, formData, signal } = {}) {
  const init = { method, credentials: 'same-origin', signal, headers: {} };
  if (formData) {
    init.body = formData;
  } else if (body !== undefined) {
    init.headers['Content-Type'] = 'application/json';
    init.body = JSON.stringify(body);
  }

  const res = await fetch(`${BASE}${path}`, init);
  const isJson = (res.headers.get('content-type') || '').includes('application/json');
  const payload = isJson ? await res.json().catch(() => null) : await res.text();

  if (!res.ok) {
    const detail = (payload && payload.detail) || (typeof payload === 'string' ? payload : null);
    throw new ApiError(detail || `erro ${res.status}`, res.status);
  }
  return payload;
}

const qs = (params) => {
  const usable = Object.entries(params || {}).filter(
    ([, v]) => v !== undefined && v !== null && v !== ''
  );
  return usable.length ? `?${new URLSearchParams(usable).toString()}` : '';
};

export const api = {
  login: (username, password) =>
    request('/auth/login', { method: 'POST', body: { username, password } }),
  logout: () => request('/auth/logout', { method: 'POST' }),
  me: () => request('/auth/me'),

  stats: () => request('/stats'),
  health: () => request('/health'),
  reconcile: () => request('/reconcile', { method: 'POST' }),
  job: (id) => request(`/jobs/${id}`),
  ribSample: (params) => request(`/rib${qs(params)}`),
  audit: (params) => request(`/audit${qs(params)}`),

  peers: () => request('/peers'),
  peerCreate: (body) => request('/peers', { method: 'POST', body }),
  peerUpdate: (id, body) => request(`/peers/${id}`, { method: 'PATCH', body }),
  peerDelete: (id) => request(`/peers/${id}`, { method: 'DELETE' }),
  peerSoftReset: (id, direction = 'out') =>
    request(`/peers/${id}/softreset?direction=${direction}`, { method: 'POST' }),
  peerReset: (id) => request(`/peers/${id}/reset`, { method: 'POST' }),
  peerEnable: (id) => request(`/peers/${id}/enable`, { method: 'POST' }),
  peerDisable: (id) => request(`/peers/${id}/disable`, { method: 'POST' }),

  routes: (params) => request(`/routes${qs(params)}`),
  routeCategories: () => request('/routes/categories'),
  routeCreate: (body) => request('/routes', { method: 'POST', body }),
  routeDelete: (id) => request(`/routes/${id}`, { method: 'DELETE' }),
  routeToggle: (id) => request(`/routes/${id}/toggle`, { method: 'POST' }),
  routeBulkDelete: (ids) => request('/routes/bulk-delete', { method: 'POST', body: { ids } }),
  routeBulkAdd: (body) => request('/routes/bulk', { method: 'POST', body }),
  importPreview: (formData) => request('/routes/preview', { method: 'POST', formData }),
  importCommit: (formData) => request('/routes/import', { method: 'POST', formData }),
  exportUrl: (format, enabledOnly = true) =>
    `${BASE}/routes/export?format=${format}&enabled_only=${enabledOnly}`
};
