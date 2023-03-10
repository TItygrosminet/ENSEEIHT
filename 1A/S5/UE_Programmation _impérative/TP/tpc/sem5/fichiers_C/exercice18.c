#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <stdbool.h>

// Definition du type t_note
struct t_note {
        int valeur;
        float coefficient;
};
typedef struct t_note t_note;
// Definition d'un tableau de notes t_tab_notes de 5 éléments.
typedef int t_tab_notes[5];

/**
 * \brief Initialiser une note
 * \param[out] note note à initialiser
 * \param[in] valeur nombre de points
 * \param[in] coef coefficient
 * \pre valeur <= 20 && valeur >= 0
 * \pre coef <= 1 && coef >= 0
 */
void initialiser_note(t_note note, float valeur, float coef){
    
    assert(valeur <= 20 && valeur >= 0);
    assert(coef <= 20 && coef >= 0);
    note.valeur = valeur;
    note.coefficient = coef;
}


/**
 * \brief Calculer la moyenne des notes du tableau
 * \param[in] tab_notes tableau de nodes
 * \param[in] nb_notes nombre de notes
 */
float moyenne(t_tab_notes tab_notes, int nb_notes){
    float moy;
    for ( int i=0;i<nb_notes;i++) {
        moy+=*(tab_notes+i);
    }
    return moy/nb_notes;
}


int main(void){
    t_tab_notes notes;
    
    //Initialiser les éléments d'une variable tableau à 0.0
    initialiser_note(notes[0], 10, 0.2);
    initialiser_note(notes[1], 1.5, 0.3);
    initialiser_note(notes[2], 12, 0.5);
    
    //Calculer la moyenne des 3 notes
    float moy = moyenne(notes, 3);
    assert( (int)(moy*100) == (int)((10*0.2 + 1*0.3 + 12*0.5)*100));
    return EXIT_SUCCESS;
}
