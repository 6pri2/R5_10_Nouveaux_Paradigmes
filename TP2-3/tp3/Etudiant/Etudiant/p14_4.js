const mongoose = require('mongoose');
const conn = mongoose.connection;
var cli;

async function main(){
  console.log("début");
  await mongoose.connect('mongodb://127.0.0.1:27017/maBDDTP3');

  var client = new mongoose.Schema({
    nom: String,
    prenom: String,
    adresse: String
  },
  {versionKey: false}
  );

  var Client = mongoose.model('Personne', personneSchema);

  var res = await Client.find( {nom:"Secouard"},{id:0, nom:1, prenom:1});
  
  console.log(res);

  for(var i = 0, l = res.length; i<l; i++)
    console.log(i+" "+res[i]);

  mongoose.deleteModel("macollec3")

  await conn.close();
}

var res = main();

/*const mongoose = require('mongoose');

// Connexion à la base de données
mongoose.connect('mongodb://127.0.0.1:27017/maBDDTP3', { useNewUrlParser: true, useUnifiedTopology: true })
  .then(() => console.log('Connexion réussie à MongoDB'))
  .catch((err) => console.log('Erreur de connexion :', err));

// Définir le schéma pour le document
const personneSchema = new mongoose.Schema({
  nom: String,
  prenom: String,
  adresse: String
});

// Créer le modèle basé sur le schéma
// Le nom de la collection peut être en minuscule ou avec un 's' à la fin
const Personne = mongoose.model('Personne', personneSchema);


mongoose.connect('mongodb://127.0.0.1:27017/maBDDTP3')
  .then(async () => {
    const personnes = await Personne.find(); // tu peux mettre un filtre ici
    console.log('📄 Documents trouvés :', personnes);
  })
  .catch(err => console.log('❌ Erreur :', err))
  .finally(() => mongoose.connection.close());*/