// E.Porcq p17.js

var tab1 = Buffer.from("Bonjour les etudiants");
var tab2 = Buffer.from("Bonjour les étudiants");
var tab3 =  new String("Bonjour les etudiants");

console.log("tab1 : %s",tab1); //
console.log("tab1 : "+tab1); // 
console.log(tab1); // 
console.log(tab2); // 
console.log(tab3); // 
console.log("tab3 : %s",tab3); // 
console.log("tab3 : "+tab3); // 
console.log("tab3 : %d",tab3.length);
console.log("-------------------------------");
tab1[2] = 0x75;
console.log("tab1 : %s",tab1);
tab3 = tab3.replace(tab3.substring(3,4),"X");
console.log("tab3 : %s",tab3);
tab3[2] = 0x41; // 
console.log("tab3 : %s",tab3);
console.log("-------------------------------");
console.dir(tab1);
console.dir(tab2);
console.dir(tab3);
console.log("-------------------------------");
for (i=0;i<tab1.length;i++)
	console.log(tab1[i]);
for (i=0;i<tab3.length;i++)
	console.log(tab3[i]);

  
  