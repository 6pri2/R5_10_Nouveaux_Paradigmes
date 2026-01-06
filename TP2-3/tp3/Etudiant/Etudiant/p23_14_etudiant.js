/* Eric Porcq p23_14.js 07/03/2018 */
var net = require("net");

// Connexion au port 3000
var client = net.connect(3000, function() {
    console.log("Client connecté au serveur");
});

// Quand le client reçoit des données
client.on('data', function(data) {
    console.log("Données reçues du serveur : " + data.toString());
});

// Quand la connexion est fermée par le serveur
client.on('end', function() {
    console.log("Connexion terminée par le serveur");
});

// Gérer les erreurs
client.on('error', function(err) {
    console.log("Erreur de connexion : " + err.message);
});

