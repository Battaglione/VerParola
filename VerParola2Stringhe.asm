#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX 50
#define MAX2 10

int main(){
    char a[MAX], b[MAX2];
    int i,j, conta;

    printf("Inserisci la prima stringa: ");
    gets(a);
    printf("Inserisci una parola: ");
    gets(b);
    j = 0;
    i = 0;
    do{
        if(j == strlen(b)){
            j = 0;
        }
        if(a[i] == b[j]){
            conta++;
            j++;
            i++;
        }
        else{
            if(a[i] == 32){
                j = 0;
                i++;
                conta = 0;
            }
            else{
                i++;
                j++;
            }
        }
        if(conta == strlen(b)){
            break;
        }
        
    }while(i < strlen(a));
    if(conta >= strlen(b)){
        printf("La parola e' presente nella stringa\n");
    }
    else{
        printf("La parola NON e' presente nella stringa\n");
    }
    system("pause");
}