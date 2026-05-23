const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello DevOps!');
});

app.get('/login', (req, res) => {
  res.json({ status: 'login page' });
});

module.exports = app;