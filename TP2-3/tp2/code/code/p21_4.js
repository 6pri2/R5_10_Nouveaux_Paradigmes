/* Cyprien Duroy et Alexandre Le Roy p21_4.js 10/09/2025 */
db = connect("maBDDTP2");
var doc = db.maCollec1.find({nom : { $exists: true }},{nom:1});
doc.forEach(function(val)
{
  printjson(val);
});