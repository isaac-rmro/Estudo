algoritmo "Ex075"
//75) Crie um programa que preencha automaticamente (usando lógica, não apenas
//atribuindo diretamente) um vetor numérico com 15 posições com os primeiros
//elementos da sequência de Fibonacci:
//1 1 2 3 5 8 13 21 34 55 89 144 233 377
//0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
var
  //Fiz com ajuda do ChatGPT
  I: Inteiro //Contador
  VetFibonacci: vetor[1..15] de Inteiro //Vetor de 15 posiçoes

Funcao Fibonacci(T: Inteiro): Inteiro
inicio
  Se (T <= 1)entao //Se o indice for 0 ou 1 ira retornar o numero recebido
    Retorne T
  senao //Caso contrario
    Retorne Fibonacci(T-1) + Fibonacci(T-2) //Ira fazer a soma entre o primeiro
    //antecessor e o segundo antecessor e retornar o resultado
  FimSe
FimFuncao

inicio
  Para I de 1 ate 15 faca //Preenche a var nas 15 posições
    VetFibonacci[I] <- Fibonacci(I-1) //Chama funcao
  FimPara

  Para I de 1 ate 15 faca //Imprimi o resultado
    Escreva(VetFibonacci[I])
  FimPara
fimalgoritmo