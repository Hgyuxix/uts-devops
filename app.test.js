const request = require('supertest');
const app = require('./app');

test('GET / harus mengembalikan 200', async () => {
  const res = await request(app).get('/');
  expect(res.statusCode).toBe(200);
});

test('GET /login harus mengembalikan status login', async () => {
  const res = await request(app).get('/login');
  expect(res.statusCode).toBe(200);
  expect(res.body.status).toBe('login page');
});