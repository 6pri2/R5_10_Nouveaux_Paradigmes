// p19_etudiant.js
var util = require("util");

function Portable(p1, p2)
{
  this.p1 = p1;
  this.p2 = p2;
}
function Telephone(t1, p1, p2)
{
  this.fixe = t1;
  this.portable = new Portable(p1,p2)
}
function Personne (no, pr, t1, p1, p2) {
  this.no = no;
  this.pr = pr;
  this.telephone = new Telephone(t1, p1, p2);
}

var per1 = new Personne("Supormoi","Steven","02 31 48 49 50","06 31 48 49 66","06 31 48 68 66");
var per2 = new Personne("Jarface","Sylvain","02 32 36 16 50","06 38 48 49 32","06 45 48 68 31");
var monde = new Array (per1, per2);

console.log("--------------------------");
console.log(Object.keys(monde));
console.log("--------------------------");
console.log(Object.keys(per1));
console.log("--------------------------");
console.log("--------------------------");
for (var i in monde) {
        console.log( i ) ;
        console.log( monde[i] ) ;
}
console.log("--------------------------");
console.log( monde[1].telephone.fixe );