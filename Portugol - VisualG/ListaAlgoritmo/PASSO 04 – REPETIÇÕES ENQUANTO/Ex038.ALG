algoritmo "Ex038"
//38) Escreva um programa que mostre na tela a seguinte contagem:
//6 7 8 9 10 11 Acabou!
var
  C: Inteiro
inicio
  C <- 6 //Contador começa com 6
  Enquanto (C <= 11)faca //Enquanto 6 for menor que 11
    Escreva(C) //Exiba 6
    C <- C + 1 //Adicione mais um e apos volte para o loop valendo agr 7
  FimEnquanto
  
  Escreva(" Acabou!") //Msg final apos contagem
fimalgoritmo