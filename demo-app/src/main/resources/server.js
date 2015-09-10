var vertx = require('vertx')
var console = require('vertx/console');

var server = vertx.createHttpServer();

console.log("Starting..");

server.requestHandler(function (request) {
  request.response.end("<html><body><h1>Hello from Demo-App!</h1></body></html>");
});

server.listen(8080);

console.log("Started..");
