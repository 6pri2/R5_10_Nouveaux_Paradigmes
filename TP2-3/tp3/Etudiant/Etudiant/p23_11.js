/* Eric Porcq p23_11.js 07/03/2018 */
var net = require("net");
	
var server = net.createServer();
server.on ("connection",function(socket)
{
	console.log("un client s'est connecté ");
});
server.listen(3000);

// telnet localhost 3000