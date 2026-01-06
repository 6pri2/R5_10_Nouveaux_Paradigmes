// p22_12.js
const express = require('express');
const app = express();
const http = require('http');

const server = http.createServer(app); // Pour pouvoir arrêter le serveur plus tard

// Middleware pour logger les infos de chaque requête
app.use((req, res, next) => {
  console.log("la page complète est :", req.url);
  console.log("---------------------------------------------------------");
  console.log("la page est :", req.path);
  console.log("---------------------------------------------------------");
  console.log("les paramètres sont :", req.query ? new URLSearchParams(req.query).toString() : null);
  console.log("---------------------------------------------------------");
  console.log(req.query);
  console.log("---------------------------------------------------------");
  next();
});

// Route d'accueil
app.get('/', (req, res) => {
  res.send("<h3>Bienvenue. Essayez avec /add?val1=3&val2=2 ou /fin</h3>");
});

// Route pour l'addition
app.get('/add', (req, res) => {
  const val1 = parseFloat(req.query.val1);
  const val2 = parseFloat(req.query.val2);

  let result;
  if (!isNaN(val1) && !isNaN(val2)) {
    result = val1 + val2;
  } else {
    result = "Erreur : paramètres non numériques";
  }

  console.log("Résultat :", result);
  res.send(`<h3>Résultat de l'addition : ${result}</h3>`);
});

// Route pour arrêter le serveur
app.get('/fin', (req, res) => {
  res.send("<h3>Le serveur va s'arrêter. Bye Bye</h3>");
  server.close(() => {
    console.log("Bye Bye");
  });
});

// Démarrage du serveur
server.listen(3000, () => {
  console.log("Serveur en écoute sur le port 3000");
});
