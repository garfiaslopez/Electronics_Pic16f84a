#include <cstdlib>
#include <iostream>
#include <cstdio.h>

using namespace std;

int main(int argc, char *argv[])
{
    int a,b,resultado,opcion;
    
    printf(" 1:SUMA /n 2:RESTA /n 3:MULTIPLICACION /n 4:DIVICION /n")
    
    scanf("%d",&opcion);
    
    if(opcion == 1){
              printf("Dame tus dos numeros :D");
              
              scanf("%d",&a);
              scanf("%d",&b);
              
              resultado = a+b;
              
              printf("RESULTADO: %d",resultado);
              
              }
        if(opcion == 2){
              printf("Dame tus dos numeros :D");
              
              scanf("%d",&a);
              scanf("%d",&b);
              
              resultado = a-b;
              
              printf("RESULTADO: %d",resultado);
              
              }
        if(opcion == 3){
              printf("Dame tus dos numeros :D");
              
              scanf("%d",&a);
              scanf("%d",&b);
              
              resultado = a*b;
              
              printf("RESULTADO: %d",resultado);
              
              }
        if(opcion == 4){
              printf("Dame tus dos numeros :D");
              
              scanf("%d",&a);
              scanf("%d",&b);
              
              resultado = a/b;
              
              printf("RESULTADO: %d",resultado);
              
              }
    
    system("PAUSE");
    return EXIT_SUCCESS;
}
