// E.Porcq p21_13_etudiant.js

var event = require("events");
const { emit, eventNames } = require("process");
var obj1 = new event.EventEmitter();
//console.log(obj1);
obj1.defaultMaxListeners = 9;
obj1.setMaxListeners(4) ;

function maFonction3() 
{
	console.log("Détection d'un événement");
}

obj1.addListener("eve1", function()
{
	console.log("Détection 1 de l'évènement eve1");
});

obj1.addListener("eve1", function f2()
{
	console.log("Détection 2 de l'évènement eve1");
});

obj1.addListener("eve1",maFonction3);
obj1.addListener("eve2",maFonction3);

obj1.emit("eve1");
obj1.emit("eve2");

console.log("---------------");
console.dir(obj1);
console.log("---------------");




  
  