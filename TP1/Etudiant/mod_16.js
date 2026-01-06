//mod p16.js
a=11;
var b=12;
e = 9;
var c=105;
  
function main()
{
	let c=15;
	let i=0;
	var j=0;
	d = 8;
	console.log("dans le main a vaut "+a++);
	console.log("dans le main b vaut "+b++);
	console.log("dans le main c vaut "+c++);
	console.log("dans le main d vaut "+d++);
	console.log("dans le main e vaut "+e++);
	console.log("------------------------");
	while (i<10 && j<10)
	{
		let i=5;
		i++;
		j++;
		console.log("dans la boucle i vaut "+i);
		console.log("dans la boucle j vaut "+j);
	}
	console.log("------------------------");
	console.log("dans le main i vaut "+i);
	console.log("dans le main j vaut "+j);
	console.log("------------------------");
}
module.exports = main;

