algoritmo "Ex071"
//71) Faça um programa que preencha automaticamente um vetor numérico com 8
//posições, conforme abaixo:
//999 999 999 999 999 999 999 999
//0 1 2 3 4 5 6 7
var
  I: Inteiro //Contador
  V: vetor[1..8] de Inteiro //Vetor para guarda de valor
inicio
  Para I de 1 ate 8 faca //Enchi as variaveis com o valor 999
    V[I] <- 999
  FimPara
  
  Para I de 1 ate 8 faca //Imprimi as variaveis
    EscrevaL("Vetor [", I, " ]", V[I])
  FimPara
fimalgoritmo