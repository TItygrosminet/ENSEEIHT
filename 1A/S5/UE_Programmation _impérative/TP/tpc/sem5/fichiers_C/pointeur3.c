#include <stdlib.h>
#include <stdio.h>

int main(){
    int d1 = 1;
    int d2 = 4; 
    int* p_1=&d1 ;
    int* p_2=&d2 ;
    printf("Avant échange : *p_1 = %d, *p_2 = %d\n", *p_1, *p_2);
    p_1=&d2;
    p_2=&d1;
    printf("Après échange : *p_1 = %d, *p_2 = %d\n", *p_1, *p_2);
    return EXIT_SUCCESS;
}
