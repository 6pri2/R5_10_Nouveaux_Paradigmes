/* Cyprien Duroy et Alexandre Le Roy p21_5.js 01/03/2016 */
db = connect("maBDDTP2");
for (let j = 1; j<=10; j++){
    db.maCollec4.insert({i : j})
}