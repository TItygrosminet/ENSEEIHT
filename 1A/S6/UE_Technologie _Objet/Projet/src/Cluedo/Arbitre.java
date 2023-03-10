package Cluedo;

import java.util.Collections;
import java.util.ArrayList;
import java.util.Iterator;
import java.io.IOException;

/**
 * Classe permettant de mettre le jeu en place à travers différentes mécaniques.
 */
public class Arbitre {
    TirageCrime tirage;
    Joueur[] joueurs;
    int indiceCourant; // le numéro du joueur courant
    Jeu jeu;

    /**
     * Constructeur de la classe arbitre
     * 
     * @param joueurs la liste des joueurs allant jouer la partie
     * @throws IOException 
     */
    public Arbitre(Joueur[] joueurs) throws IOException {
        this.jeu = new Jeu();
        this.joueurs = joueurs;
        this.indiceCourant = 0;
        /* Tirage du crime */
        this.tirage = new TirageCrime(this.jeu);
        setTirage(tirage);
        try  {
            this.jeu = new Jeu();
            
        } catch (IOException e) {

        }
    }

    /**
     * Retourne le jeu.
     * @return le jeu
     */
    public Jeu getJeu() {
        return this.jeu;
    }
    /**
     * Définir les cartes du crime.
     * @param nouveauTirage le tirage de cartes du crime
     */
    public void setTirage (TirageCrime nouveauTirage) {
        this.tirage = nouveauTirage;
    }
    
    /**
     * Renvoie le tirage des cartes du crime.
     * @return le tirage des cartes du crime
     */
    public TirageCrime getTirage () {
        return this.tirage;
    }

    /**
     * Obtenir le joueur courant
     * 
     * @return le joueur courant
     */
    public Joueur joueurCourant() { 
        return joueurs[indiceCourant]; 
    }

    /**
     * Passer au joueur suivant
     */
    public void joueurSuivant() {
        indiceCourant = (indiceCourant + 1) % joueurs.length;
    }

    /** Retirer les 3 cartes du crime au jeu */
    public void retirerCartesCrime(Jeu jeu, TirageCrime tirage) {
        ArrayList<Carte> paquet = jeu.getCartes();
        paquet.remove(tirage.getPerso());
        paquet.remove(tirage.getArme());
        paquet.remove(tirage.getSalle());
    }

    /** Distribuer le reste des cartes aux joueurs */
    public void distribuerCartes() {

        ArrayList<Carte> paquet = jeu.getCartes();
        /* Mélanger le paquet */
        Collections.shuffle(paquet);

        Iterator<Carte> itr = paquet.iterator();
        int i=0;
        while (itr.hasNext()) {
            if (i == this.joueurs.length) {
                i=0;
            }
            Carte c = itr.next();
            System.out.println(c.getNomCarte() + " donnée au joueur " + (i+1));
            this.joueurs[i].ajouterCarte(c);
            i++;
        }

    }

    public void arbitrer(Joueur joueur, Arbitre arbitre) {
        /* Retirer du paquet de cartes les 3 cartes du crime */
        retirerCartesCrime(this.jeu, tirage);
        /* Distribuer le reste des cartes aux joueurs */
        System.out.println("Distribution des cartes : ");
        distribuerCartes();

        MenuPrincipal menu = new MenuPrincipal(joueurs[0], arbitre);
        // on passe le joueur humain en paramètre du menu principal pour lui associer le personnage qu'il choisit

        /**   TODO Faire jouer les joueurs un par un
            * Demander le déplacement (pour un bot)
            * Vérifier le déplacement
            * Déplacer le joueur
            * Réafficher le plateau
            * Demander l'hypothèse
            * Fournir la réponse
            * Demander l'accusation (éventuellement NULL)
            */
    }

}