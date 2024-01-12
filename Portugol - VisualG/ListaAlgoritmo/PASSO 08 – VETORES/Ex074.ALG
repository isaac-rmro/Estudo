algoritmo "Ex074"
//74) Crie um programa que preencha automaticamente (usando lógica, não apenas
//atribuindo diretamente) um vetor numérico com 10 posições, conforme abaixo:
//5 3 5 3 5 3 5 3 5 3
//0 1 2 3 4 5 6 7 8 9
var
  I: Inteiro //Var contadora
  Vet: vetor[0..9] de Inteiro //Vetor de 10 posições
inicio
  Para I de 0 ate 9 faca //Preenchimento dos vetores
    Se (I%2= 0)entao //Se contagem for Par
      Vet[I] <- 5 //Vetor na posição contagem ira recebe 5
    senao //Se for impar
      Vet[I] <- 3 //Vetor na posição contagem ira receber 3
    FimSe
  FimPara

  //Imprimi os vetores e suas posições
  Para I de 0 ate 9 faca
    EscrevaL("Pos. [", I, "] ", Vet[I])
  FimPara
fimalgoritmo