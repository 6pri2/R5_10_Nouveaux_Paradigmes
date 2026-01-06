/* Eric Porcq p12_1_etudiant.js 01/03/2016 */
db = connect("maBDDTP3");
for (i=0;i<10;i++)
{
  var s = {i:i+1};
  db.macollecs.insertOne(s);
};

for (i=0;i<8;i++)
{
  var s = {i:i+1};
  db.macollecs.deleteOne(s);
};

var doc = db.macollecs.find();
doc.forEach(function(val)
{
  printjson(val);
});

