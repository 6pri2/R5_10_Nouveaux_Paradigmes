const http = require("http");
const url = require("url");
const querystring = require("querystring");

console.log("Serveur en écoute sur le port 3000");

const server = http.createServer(function (request, response) {
  const fullUrl = request.url;

  // Ignorer favicon.ico (automatique dans le navigateur)
  if (fullUrl === "/favicon.ico") {
    response.writeHead(204); // No Content
    response.end();
    return;
  }

  // 1 - URL complète
  console.log("la page complète est :", fullUrl);
  console.log("---------------------------------------------------------");

  const parsedUrl = url.parse(fullUrl);
  const pathname = parsedUrl.pathname;
  const query = parsedUrl.query;

  // 2 - Chemin
  console.log("la page est :", pathname);
  console.log("---------------------------------------------------------");

  // 3 - Paramètres bruts
  console.log("les paramètres sont :", query);
  console.log("---------------------------------------------------------");

  // 4 - Paramètres sous forme d'objet
  const params = querystring.parse(query);
  console.log(params);
  console.log("---------------------------------------------------------");

  // 5 - Si /fin → arrêter le serveur
  if (pathname === "/fin") {
    console.log("Res :", params);
    response.writeHead(200, { "Content-Type": "text/html;charset=utf-8" });
    response.write("<h3>Le serveur va s'arrêter. Bye Bye</h3>");
    response.end(() => {
      // Fermer le serveur après la réponse
      server.close();
    });
    return;
  }

  // Sinon : route normale
  let result;

  if (pathname === "/add") {
    const a = parseFloat(params.val3);
    const b = parseFloat(params.val4);

    if (!isNaN(a) && !isNaN(b)) {
      result = a + b;
    } else {
      result = "Erreur : paramètres non numériques";
    }

    response.writeHead(200, { "Content-Type": "text/html;charset=utf-8" });
    response.write(`<h3>Résultat de l'addition : ${result}</h3>`);
  } else {
    response.writeHead(200, { "Content-Type": "text/html;charset=utf-8" });
    response.write("<h3>Bienvenue. Essayez avec /add?val3=5&val4=8 ou /fin</h3>");
  }

  response.end();
});

// 6 - Événement `close` du serveur
server.on("close", () => {
  console.log("Bye Bye");
});

server.listen(3000);
