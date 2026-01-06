var util = require("util");

class Portable 
{	
	constructor(p1,p2) 
	{	
		this.p1 = p1;
		this.p2 = p2;
	}	
}

class Telephone
{
	constructor(t1, p1 ,p2) 
	{	
		this.fixe = t1;
		this.portable = new Portable(p1,p2);
	}	
}

class Individu
{
	constructor(no, pr, t1, p1 ,p2) 
	{	
		this.nom = no;
		this.prenom = pr;
		this.telephone = new Telephone(t1, p1,p2);
	}	
}

indiv1 = new Individu("Boudu","Sylvie","02 31 48 49 50","06 31 48 49 66", "06 31 48 68 66");
indiv2 = new Individu("Gorin","Bernard","02 31 48 66 00","07 31 48 49 66", "06 30 40 60 66");

console.log(util.inspect(indiv1, showHidden=false, depth=0, colorize=true));
console.log("---------------------------------------------------------");
console.log(util.inspect(indiv1, showHidden=false, depth=1, colorize=true));
console.log("---------------------------------------------------------");
console.log(util.inspect(indiv1, showHidden=false, depth=2, colorize=true));
console.log("---------------------------------------------------------");
console.log(util.inspect(indiv2, showHidden=false, depth=2, colorize=true));
console.log("---------------------------------------------------------");



  
  