const mongoose = require('mongoose');
const conn = mongoose.connection;
var cli;

async function main(){
  console.log("début");
  await mongoose.connect('mongodb://127.0.0.1:27017/maBDDTP3',{ useNewUrlParser: true ,  useUnifiedTopology: true });

  var client = new mongoose.Schema({
    nom: String,
    prenom: String,
    adresse: String
  },
  {versionKey: false}
  );
  var Client = mongoose.model('Personne', personneSchema);
  cli1= new Client({nom : "Secouard",prenom:"Stephane",adresse:"Caen"})
  cli2= new Client({nom : "Secouard",prenom:"Stephane"})
  cli2.adresse = "Brest";
  var r1 =  await cli1.save;
  var r2 =  await cli2.save;
  console.log("Documents insérés avec succés :", r1, r2);

  mongoose.deleteModel("macollec3")

  await conn.close();

  return this;
}

async function erreur(er){
  console.error(er);
  mongoose.deleteModel("macollec3")

  await conn.close();
}

main()
  .then(console.log("Ok"))
  .catch((err)=>{erreur(err)})
  .finally(()=> conn.close());


/*
// Connexion à la base de données
mongoose.connect('mongodb://127.0.0.1:27017/maBDDTP3')
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

// Créer une instance du modèle avec les données
const nouvellePersonne = new Personne({
  nom: 'Dupont',
  prenom: 'Jean',
  adresse: '123 Rue de Paris, 75000 Paris'
});

// Enregistrer le document dans la collection
nouvellePersonne.save()
  .then(() => console.log('Document enregistré avec succès'))
  .catch((err) => console.log('Erreur lors de l\'enregistrement :', err))
  .finally(() => mongoose.connection.close()); // Fermer la connexion après l'insertion
  */