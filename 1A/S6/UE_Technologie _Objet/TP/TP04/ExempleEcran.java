import afficheur.Ecran;
import java.awt.Color;

/**
  * Exemple d'utilisation de la classe Ecran.
  */
class ExempleEcran {

	public static void main(String[] args) {
		// Construire un écran
		Ecran E = new Ecran ("ExempleEcran", 400, 250,15);

		// Dessiner un point vert de coordonnées (1, 2)
		E.dessinerPoint(1, 2, Color.green);

		// Dessiner un segment rouge d'extrémités (6, 2) et (11, 9)
		E.dessinerLigne(6, 2, 11, 9, Color.red);

		// Dessiner un cercle jaune de centre (4, 3) et rayon 2.5
		E.dessinerCercle(4, 4, 2.5, Color.yellow);

		// Dessiner le texte "Premier dessin" en bleu à la position (1, -2)
		E.dessinerTexte(1, -2, "Premier dessin", Color.blue);
	}

}
