algoritmo "Ex074"
//74) Crie um programa que preencha automaticamente (usando l�gica, n�o apenas
//atribuindo diretamente) um vetor num�rico com 10 posi��es, conforme abaixo:
//5 3 5 3 5 3 5 3 5 3
//0 1 2 3 4 5 6 7 8 9
var
  I: Inteiro //Var contadora
  Vet: vetor[0..9] de Inteiro //Vetor de 10 posi��es
inicio
  Para I de 0 ate 9 faca //Preenchimento dos vetores
    Se (I%2= 0)entao //Se contagem for Par
      Vet[I] <- 5 //Vetor na posi��o contagem ira recebe 5
    senao //Se for impar
      Vet[I] <- 3 //Vetor na posi��o contagem ira receber 3
    FimSe
  FimPara

  //Imprimi os vetores e suas posi��es
  Para I de 0 ate 9 faca
    EscrevaL("Pos. [", I, "] ", Vet[I])
  FimPara
fimalgoritmo