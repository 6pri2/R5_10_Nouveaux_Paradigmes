const { MongoClient } = require('mongodb');

// Connection URL
const url = 'mongodb://127.0.0.1:27017';
const client = new MongoClient(url);

// Database Name
const dbName = 'maBDDTP3';

async function main() {
  // Utiliser la méthode connect pour se connecter au serveur
  await client.connect();
  console.log('Connected successfully to server');
  
  // Accéder à la base de données et à la collection
  const db = client.db(dbName);
  const collection = db.collection('documents');

  // Données à insérer
  const documents = [
    { _id: 1, matiere: 'Anglais', importance: 1 },
    { _id: 2, matiere: 'EGO', importance: 2 },
    { _id: 3, matiere: 'PPP', importance: 2 },
    { _id: 4, matiere: 'Maths', importance: 2 },
    { _id: 5, matiere: 'BDD', importance: 4 },
    { _id: 6, matiere: 'UML', importance: 3 },
    { _id: 7, matiere: 'NoSQL', importance: 3 }
  ];

  

  // Insertion des documents dans la collection
  const result = await collection.insertMany(documents);
  console.log(`${result.insertedCount} documents insérés`);

  return 'done.';
}

main()
  .then(console.log)
  .catch(console.error)
  .finally(() => client.close());