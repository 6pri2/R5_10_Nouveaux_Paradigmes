/* Eric Porcq p21_2.js 01/03/2016 */
db = connect("maBDDTP2");
var dbs = db.adminCommand("listDatabases");
printjson(dbs);
