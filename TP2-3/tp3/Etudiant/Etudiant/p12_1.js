//mongo script se lance avec mongosh et pas node

let dbName="maBDDTP3";
let colName="macollecs";

var collec = db.getSiblingDB(dbName).getCollection(colName);

insererDonnee(collec);
effacerDonnee(collec);
afficherDonnee(collec);

function insererDonnee(col)
{
    console.log(col);
    for(i=0;i<10;i++)
    {
        var s = {i:i+1};
        col.insertOne(s);
    };
}

function effacerDonnee(col)
{
    var col = db.getSiblingDB(dbName).getCollection(colName);
    for(i=0;i<8;i++)
    {
        var s = {i:i+1};
        col.deleteOne(s);
    };
}

function afficherDonnee(col)
{
    var col = db.getSiblingDB(dbName).getCollection(colName);
    var doc = col.find();
    doc.forEach(function(val)
    {
        printjson(val);
    });
    console.log("fin");
}
