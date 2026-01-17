package essaiGraphique;

public class Application {

	public static void main(String[] args) {
		AppliNoSQL monMongo = new AppliNoSQL();
		FenetreCoureur fen = new FenetreCoureur();
		fen.attribuerBase(monMongo);
		
		
	}

}
