/* Eric Porcq p22_11.js 07/03/2018 */
var express = require('express');
var app = express();

app.get('/', function(req, res) {

	res.setHeader('Content-Type', 'text/plain; charset="utf-8"');
	res.writeHeader(200 , {"Content-Type" : "text/html; charset=utf-8"});
	res.write ("<!DOCTYPE html>");
	res.write ("<html lang='fr'>");
	res.write ("<head>");
	res.write ("<meta charset='utf-8'>");
	res.write ("<title>node.js</title>");
	res.write ("<head>");

	res.end('Vous êtes à l\'accueil');

});


app.listen(3000);;