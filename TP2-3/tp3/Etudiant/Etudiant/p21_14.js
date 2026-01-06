// p21_14.js
const http = require("http");
const url = require("url");
const querystring = require("querystring");

console.log("Serveur en écoute sur le port 3000");

const server = http.createServer(function (request, response) {
  // Déclarer fullUrl d'abord
  const fullUrl = request.url;

  if (fullUrl === "/favicon.ico") {
    response.writeHead(204); // 204 = No Content
    response.end();
    return;
  }
  
  console.log("- 1 --------------------------------------------------------");
  console.log("la page complète est :", fullUrl);

  // 2 - Découper avec url.parse
  const parsedUrl = url.parse(fullUrl);
  const pathname = parsedUrl.pathname;
  const query = parsedUrl.query;

  console.log("- 2 --------------------------------------------------------");
  console.log("la page est :", pathname);

  console.log("- 3 --------------------------------------------------------");
  console.log("les paramètres sont", query);

  // 4 - Convertir les paramètres avec querystring.parse
  const params = querystring.parse(query);
  console.log("- 4 --------------------------------------------------------");
  console.log(params); // { val3: '5', val4: '8' }

  let result;

  // 5 - Si la fonction appelée est "add"
  if (pathname === "/add") {
    const a = parseFloat(params.val3);
    const b = parseFloat(params.val4);

    if (!isNaN(a) && !isNaN(b)) {
      result = a + b;
    } else {
      result = "Erreur : paramètres non numériques";
    }

    console.log("- 5 --------------------------------------------------------");
    console.log("Résultat :", result);

    response.writeHead(200, { "Content-Type": "text/html;charset=utf-8" });
    response.write(`<h3>Résultat de l'addition : ${result}</h3>`);
  } else {
    // Pour ignorer favicon.ico
    if (pathname !== "/favicon.ico") {
      response.writeHead(200, { "Content-Type": "text/html;charset=utf-8" });
      response.write("<h3>Bienvenue. Essayez avec /add?val3=5&val4=8</h3>");
    }
  }

  console.log("- 6 ----------------------------");
  console.log("- 7 ----------------------------");

  response.end();
});

server.listen(3000);
