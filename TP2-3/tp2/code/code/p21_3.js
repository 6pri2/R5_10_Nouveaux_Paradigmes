
db = connect("maBDDTP2");
var doc = db.maCollec1.find({nom : { $exists: true }});
doc.forEach(function(val)
{
  printjson(val);
});