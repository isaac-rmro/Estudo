algoritmo "Ex048"
//48) Fa�a um programa que leia 7 n�meros inteiros e no final mostre
//o somat�rio entre eles.
var
  C: Inteiro //Var contadora
  N: Inteiro //Numero a ser lido 7 vezes
  Soma: Inteiro //Var para soma de todos os results
inicio
  C <- 1 //Contador inicia com 1
  Enquanto (C <= 7)faca //Enquanto 1 for menor que 7
  Escreva("Digite o ",C,"� para soma: ") //Pe�a o user um numero
    Leia(N) //Guarde ele em N
  Soma <- Soma + N //Adicione a var Soma
  C <- C + 1 //E apos adicione +1 ao contador
  FimEnquanto
  
  Escreva("A soma entre os numeros � de: ",Soma) //Total
fimalgoritmo