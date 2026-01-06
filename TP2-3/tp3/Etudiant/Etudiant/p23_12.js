/* Eric Porcq p23_12.js 07/03/2018 */
const net = require("net");

// Création du serveur
const server = net.createServer((socket) => {
    // Quand un client se connecte

    // --- Côté client (envoyé dès la connexion) ---
    socket.write("Bienvenue sur le serveur Node.js !\n");
    socket.write("Vous êtes connecté depuis " + socket.remoteAddress + ":" + socket.remotePort + "\n");

    // --- Côté serveur (console locale) ---
    console.log("Un client s'est connecté.");
    console.log("Adresse du client : " + socket.remoteAddress + ":" + socket.remotePort);
});

// Lancement du serveur
const PORT = 3000;
server.listen(PORT, () => {
    const address = server.address();
    console.log("Serveur démarré.");
    console.log("Adresse IP du serveur :", address.address);
    console.log("Port d'écoute :", address.port);
});
