// E.Porcq p22_1.js

var fs = require("fs");
let start = Date.now();
let delai;
// -----> Read file 1:
console.log("\n");
console.log("Read File 1");
 
var data1 = fs.readFileSync('file1.txt');
 
console.log("- Data of file 1: ");
console.log(data1.toString());
 
 
// -----> Read file 2:
console.log("\n");
console.log("Read File 2");
 
var data2 = fs.readFileSync('file2.txt');
console.log("- Data of file 2: ");
console.log(data2.toString());
 
 
console.log("\n");
let end = Date.now(); 
delai = end-start;

console.log("---------------");
console.log("Program Ended "+ delai);
console.log("---------------");



  
  