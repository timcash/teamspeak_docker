var http = require('http');
var send = require('send');
var url = require('url');

var root = '/root/oakleon_dist';
var port = 3000;

var app = http.createServer(function(req, res){
  // transfer arbitrary files from within
  // /www/example.com/public/*
  send(req, url.parse(req.url).pathname)
  .root(root)
  .pipe(res);
}).listen(port);