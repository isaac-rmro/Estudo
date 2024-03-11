algoritmo "Ex072"
//72) Crie um programa que preencha automaticamente (usando lógica, não apenas
//atribuindo diretamente) um vetor numérico com 10 posições, conforme abaixo:
//5 10 15 20 25 30 35 40 45 50
//0 1 2 3 4 5 6 7 8 9
var
  I: Inteiro //Var Contadora
  Vet: vetor[1..10] de Real //Vetor com 10 posições
inicio
  Para I de 1 ate 10 faca //Preenche os vetores
    Vet[I] <- I * 5 //Contador * 5
  FimPara
  
  Para I de 1 ate 10 faca //Imprimi vetor na posição do contador ou seja 1 a 10
    Escreva(Vet[I])
  FimPara
fimalgoritmo