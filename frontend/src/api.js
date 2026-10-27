import axios from 'axios';

const API = axios.create({
  // Forwarded port 5000 ka full URL paste karein:
  baseURL: 'https://lifeless-goblin-g4pjp5454xg72vr54-5000.app.github.dev/api',
});

API.interceptors.request.use((req) => {
  const token = localStorage.getItem('token');
  if (token) {
    req.headers.Authorization = `Bearer ${token}`;
  }
  return req;
});

export default API;