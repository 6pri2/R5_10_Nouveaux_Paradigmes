// 
// 5.11.13

mongoose = require("mongoose");
mongoose.connect("mongodb://localhost/maBDDTP3", { useNewUrlParser: true ,  useUnifiedTopology: true }); // choix de la BD
const conn = mongoose.connection;
console.log (conn);
conn.close();