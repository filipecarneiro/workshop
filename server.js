const express = require('express');
const http = require('http');
const { ExpressPeerServer } = require('peer');
const os = require('os');

const PORT = process.env.PORT || 9000;
const app = express();
const server = http.createServer(app);

const peerServer = ExpressPeerServer(server, {
  path: '/',
  allow_discovery: false
});
app.use('/peerjs', peerServer);
app.use(function (req, res, next) {
  if (req.path.endsWith('.html') || req.path === '/') {
    res.setHeader('Cache-Control', 'no-store');
  }
  next();
});
app.use(express.static('.'));

function getLocalIP() {
  const nets = os.networkInterfaces();
  for (const name of Object.keys(nets)) {
    for (const net of nets[name]) {
      if (net.family === 'IPv4' && !net.internal) return net.address;
    }
  }
  return 'localhost';
}

server.listen(PORT, function () {
  const ip = getLocalIP();
  console.log('');
  console.log('  Workshop Cibersegurança — servidor local');
  console.log('  ─────────────────────────────────────────');
  console.log('  Apresentador:  http://' + ip + ':' + PORT + '/apresentador/');
  console.log('  Alunos:        http://' + ip + ':' + PORT + '/');
  console.log('');
});
