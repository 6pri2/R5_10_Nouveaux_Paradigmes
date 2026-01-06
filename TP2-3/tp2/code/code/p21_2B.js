/* Eric Porcq p21_3.js 01/03/2016 */
db = connect("maBDDTP2");
var doc = db.maCollec2.find({},{auteur:1});
doc.forEach(function(val)
{
  printjson(val);
});