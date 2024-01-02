algoritmo "Ex041"
//41) Desenvolva um programa que mostre na tela a seguinte contagem:
//100 95 90 85 80 ... 0 Acabou!
var
  C: Inteiro
inicio
  C <- 100 //Contagem começa por 100
  Enquanto (C >= 0)faca //Enquanto 100 for maior que 0
    Escreva(C) //Exiba C valendo 100
    C <- C - 5 //Apos retire 5 e volte pro looping
    //Agora com C valendo 95 e etc..
  FimEnquanto
  
  Escreva(" Acabou!")

fimalgoritmo