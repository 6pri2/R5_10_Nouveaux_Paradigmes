// E.Porcq p21_14_etudiant.js

var util = require("util");
var event = require("events");
var obj1 = new event.EventEmitter();

obj1.addListener("eve1",function A1(x)
{
	console.log("1:eve1 détécté");
    console.log (x.eventNames());
    x.emit ("eve3","Porcq","Eric");
});

obj1.addListener("eve1",function A2(x)
{
    console.log("2:eve1 détécté");
    console.log (x.eventNames());
});

obj1.addListener("eve3", function B(a,b)
{
    console.log("L'objet a recu un autre evenement ev3 M."+a+" "+b);
});

console.log("----------------");
obj1.emit("eve1",obj1);
console.log("----------------");
console.log("----------------");
console.dir(obj1);
  
  