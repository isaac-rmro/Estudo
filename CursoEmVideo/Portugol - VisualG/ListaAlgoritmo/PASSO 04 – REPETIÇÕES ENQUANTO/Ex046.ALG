algoritmo "Ex046"
//46) Crie um programa que calcule e mostre na tela o resultado da soma
//entre 6 + 8 + 10 + 12 + 14 + ... + 98 + 100.
var
  C: Inteiro //Var contadora
  Soma: Inteiro //Var para soma
inicio
  C <- 6 //Contador inicia com 6
  Enquanto (C <= 100)faca //Enquanto 6 for menor que 100
    Escreva(C," + ") //Exiba C
    Soma <- Soma + C //A var soma ira receber o valor exibido e somar com o prox
    C <- C + 2 //Ira ser adicionado + 2 e volta para o inicio do loop
  FimEnquanto
  
  EscrevaL(" ")
  
  Escreva("Soma de todos os numeros: ",Soma) //Exibição do resultado :)
fimalgoritmo