// E.Porcq p21_14_etudiant.js

var event = require("events");
var obj1 = new event.EventEmitter();
//console.log(obj1);

function maFonction3(a,b) 
{
	console.log("Détection "+a+" "+b);
	console.log (obj1.eventNames());
}

obj1.addListener("eve1",function(a,b)
{
	console.log("Détection 1 ev1 "+a+" "+b);
});

obj1.addListener("eve1",function(a,b)
{
	console.log("Détection 2 ev1 "+a+" "+b);
});

obj1.addListener('eve1', maFonction3);
obj1.addListener('eve2', maFonction3);

obj1.emit("eve1","Porcq","Eric");
obj1.emit("eve2","Porcq","Eric");

console.log(obj1);
  
  