// E.Porcq p22_2.js

var fs = require("fs");
let start = Date.now();
let delai;
 
// A Callback function!
function readFinishedFile1(err, data)  {
   if (err) console.log(err);
   console.log("- Data of file 1: ");
   console.log(data.toString());
}
 
// A Callback function!
function readFinishedFile2(err, data)  {
   if (err) console.log(err);
   console.log("- Data of file 2: ");
   console.log(data.toString());
}
 
// -----> Read file 1:
console.log("\n");
console.log("Read File 1");
 
fs.readFile('file1.txt', readFinishedFile1);
 
// -----> Read file 2:
console.log("\n");
console.log("Read File 2");
 
fs.readFile('file2.txt', readFinishedFile2);
 
console.log("\n");
let end = Date.now(); 
delai = end-start;

console.log("---------------");
console.log("Program Ended "+ delai);
console.log("---------------");


  
  