/* Eric Porcq p21_13.js */
var http = require("http"); 

console.log("--------------------------------------------------");

var server = http.createServer(function(request, response) {
  response.setHeader("Content-Type", "text/html;charset=utf-8", );

  // Affichage dans la console de chaque requête
  console.log("Paramètre : " + request.url);

  if (request.url === "/fin") {
    console.log("✅ Requête /fin reçue, arrêt du serveur...");

    response.writeHead(200);
    response.write("<h3>Le serveur va s'arrêter...</h3>");
    response.end(() => {
      // Une fois la réponse envoyée, on arrête le serveur
      server.close(() => {
        console.log("🛑 Serveur arrêté.");
      });
    });
  } else {
    response.writeHead(200);
    response.write("<h3>Bonjour C3</h3>");
    response.end();
  }
});

// Démarrage du serveur
server.listen(3000);
console.log("Serveur en écoute sur le port 3000");

