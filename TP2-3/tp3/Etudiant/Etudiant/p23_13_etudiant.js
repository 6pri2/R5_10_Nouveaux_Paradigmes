
/* Eric Porcq p23_13_etudiant.js 07/03/2018 */
var net = require("net");
i=0;
var sockets = []; 
    
server = net.createServer();
server.on ("connection",function(socket)
{
    i++;
    sockets.push(socket); //ajout des sockets
    console.log("un client s'est connecté "+i);
    //console.log(socket);
    s = i+"";
    socket.write(s);
    socket.on('error', () => {"erreur intercepté hihihih"});
    server.getConnections( function(err,count)
    {
        console.log(count);
        var val = server.address();
        // compléter
        if (i == 3) {
            sockets.forEach(s => s.write("Le serveur va fermer la connexion dans 5 secondes...\n"));
            
            setTimeout(() => {
                sockets.forEach(s => {
                    s.end();
                    s.on('error', () => {}); // éviter ECONNRESET
                });
                server.close(() => {
                    console.log("3 connexion detectées");
                });
            }, 5000);
        }
        
    });

});
server.on ("listening",function()
{
    console.log("le serveur est en écoute");
});

server.on('close',function(){
    console.log("serveur fermé")
});

server.listen(3000);

// telnet localhost 3000


