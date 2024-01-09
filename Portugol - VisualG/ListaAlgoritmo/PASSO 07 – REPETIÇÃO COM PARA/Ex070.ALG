algoritmo "Ex070"
//70) [DESAFIO] Faça um programa que mostre os 10 primeiros elementos da
//Sequência de Fibonacci:
//1 1 2 3 5 8 13 21...
var
  A, B, C, Cont: Inteiro //Var para sequencia
inicio
  A <- 0 //A inicia com 0
  B <- 1 //B com 1
  Para Cont de 1 ate 10 faca //10 repetições
    C <- A + B //0 + 1
    A <- B // Descarta o valor antigo (A)
    B <- C //E segue com o valor C adiante
    //Repitindo descartando o valor anterior
    Escreva(A) //Exibi o valor Antes de ser descartado
  FimPara
fimalgoritmo