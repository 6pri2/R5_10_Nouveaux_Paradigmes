/* Cyprien Duroy et Alexandre Le Roy p21_6.js 01/03/2016 */
db = connect("maBDDTP2");
db.maCollec4.find().sort({ i: 1 }).limit(8).forEach(function(doc) {
    db.maCollec4.deleteOne({ _id: doc._id });
  });