package mongoNoSQL;

import com.mongodb.client.*;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;
import org.bson.Document;
import org.bson.conversions.Bson;

import java.util.Arrays;

//savoir utiliser critere de cri, de projection et de restriction

public class AppliNoSQL {
	
	//pour avoir la chaine de connexion dans mongosh taper : db.getMongo()
	//ou mettre basique juste avec adresse et port
	
	private MongoClient mongoClient;
	private MongoDatabase database;
	private MongoCollection<Document> collection;

    public static void main(String[] args) {
        try {

        	AppliNoSQL app = new AppliNoSQL();
        	
            // Connexion à MongoDB
            app.connecter();

            
            app.insererDonnees(app.collection);
            app.insererUnNouveauProf(app.collection);
            app.modifierDonnees(app.collection);
            app.lireDonneesAjuster(app.collection);
            app.supprimerDonnees(app.collection);
            

        } catch (Exception e) {
            e.printStackTrace();
        }
        
    }
    
    //Méthode pour se connecter 
    public int connecter() {
    	String uri = "mongodb://localhost:27017";
    	mongoClient = MongoClients.create(uri);
    	database = mongoClient.getDatabase("maBDDTP4");
        System.out.println("Connecté à la base : " + database.getName());
        database.listCollectionNames().forEach(System.out::println);
        collection = database.getCollection("mes_jdbc_profs");
        System.out.println(collection.getNamespace());
        collection.drop();
        return 0;
    }
    

    // Méthode d’insertion initiale
    public void insererDonnees(MongoCollection<Document> collection) {
        collection.insertMany(Arrays.asList(
            new Document("_id", 1).append("nom", "Deraclette").append("prenom", "Stéfan").append("ecole", "8"),
            new Document("_id", 2).append("nom", "Scolaire").append("prenom", "Emmanuel").append("ecole", "7"),
            new Document("_id", 3).append("nom", "Jort").append("prenom", "Dany").append("ecole", "8"),
            new Document("_id", 4).append("nom", "Téria").append("prenom", "Alice").append("ecole", "8"),
            new Document("_id", 5).append("nom", "Royce").append("prenom", "Carole").append("ecole", "8"),
            new Document("_id", 6).append("nom", "Dinateur").append("prenom", "Laure").append("ecole", "9")
        ));
        System.out.println("Documents insérés !");
        lireDonnees(collection);
    }
    
    //retenir lire donnees avec filtres
    // Méthode de lecture
    public void lireDonnees(MongoCollection<Document> collection) {
        System.out.println("=== Contenu de la collection ===");
        FindIterable<Document> docs = collection.find().projection(new Document("_id", 0));
        for (Document d : docs) {
            System.out.println(d);
        }
    }
    
    public void lireDonneesAjuster(MongoCollection<Document> collection) {
        System.out.println("=== Contenu de la collection filtre ===");
        Bson filtre = Filters.eq("nom", "Jort");  //filtre contenant jort
        Bson filtre2 = Filters.ne("nom", "Jort"); //filtre ne contenant pas jort
        Document tri = new Document("prenom",-1); //1 pour l'ordre croissant et -1 pour décroissant
        Document affichage = new Document("_id", 0); //Ici sa enleve l'id, possible de mettre ce qu'on veut comme mongosh
        FindIterable<Document> docs = collection.find(filtre2).projection(affichage).sort(tri);
        for (Document d : docs) {
            System.out.println(d);
        }
    }

    // Ajout d’un nouveau prof
    public void insererUnNouveauProf(MongoCollection<Document> collection) {
        Document nouveau = new Document("_id", 7)
                .append("nom", "Bombadil")
                .append("prenom", "Tom")
                .append("ecole", "7");
        collection.insertOne(nouveau);
        System.out.println("Nouveau prof inséré !");
        lireDonnees(collection);
    }

    // Modification d’une donnée
    public void modifierDonnees(MongoCollection<Document> collection) {
        Bson filtre = Filters.eq("nom", "Jort");
        Bson miseAJour = Updates.set("prenom", "Etama");
        var result = collection.updateOne(filtre, miseAJour);
        System.out.println("Données modifiées " + result);
        lireDonnees(collection);
    }

    // Suppression de certaines données
    public void supprimerDonnees(MongoCollection<Document> collection) {
        // Exemple : supprimer les profs de l’école 9 ou 8 avec prenom "Carole"
        Bson filtre = Filters.or(Filters.eq("ecole", "9"), Filters.eq("prenom", "Carole"));
        var result = collection.deleteMany(filtre);
        System.out.println("Deleted document count: " + result.getDeletedCount());
        lireDonnees(collection);
    }
    
    public void fermerConnexion() {
    	mongoClient.close();
    	collection = null;
    }
}

