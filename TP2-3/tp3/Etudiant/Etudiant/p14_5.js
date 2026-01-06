const mongoose = require('mongoose');


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
  const result = await Personne.updateOne(
    { nom: 'Dupont' },                     // Critère de sélection
    { $set: { adresse: '10 rue des Lilas' } } // Ce qu’on modifie
  );

  console.log(`🛠️ ${result.modifiedCount} document(s) modifié(s).`);
})
.catch(err => console.log('❌ Erreur :', err))
.finally(() => mongoose.connection.close());