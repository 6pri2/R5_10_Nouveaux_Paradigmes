/* Eric Porcq p21_12.js 05/03/2016 */
var http = require("http"); 
console.log("--------------------------------------------------");
var server = http.createServer(function(request,response) {
  response.setHeader("Content-Type","text/html");
  //response.writeHead(200, {'Content-Type': 'text/plain'}); // Sends a response header to the request. 200 = pas d'erreur
  response.writeHead(200); // Sends a response header to the request. 200 = pas d'erreur
  response.write("<h3>Bonjour C3</h3>");
  console.log("param : "+request.url);
  response.end();
});
server.listen(3000);
console.log("Serveur en écoute sur le port 3000");
// HTTP server hérite t-il de events.EventEmitter ?


  