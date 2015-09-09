var vertx = require('vertx')

var server = vertx.createHttpServer();

server.requestHandler(function (request) {
  request.response.end("<html><body><h1>Hello from Demo-App!</h1></body></html>");
});

server.listen(8080);
