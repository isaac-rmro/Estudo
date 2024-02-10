algoritmo "Ex001"
var
  I: Inteiro //Indice
  Mat: Vetor[1..5,1..5] de Inteiro //Matriz de 5x5
  l, c: Inteiro //Var para linha e coluna
  
inicio
  Para l de 1 ate 5 faca //Preenche a matriz
    Para c de 1 ate 5 faca
      Se (l = c)entao //Se a linha e a coluna for igual
        Mat[l,c] <- 1 //A matriz na posicao linha e coluna vai receber 1
      senao //Se for diferente
        Mat[l,c] <- 0 //Vai receber 0
      FimSe
    FimPara
  FimPara
  
  Para l de 1 ate 5 faca //Imprimi a matriz
    Para c de 1 ate 5 faca
      Escreva(Mat[l,c])
    FimPara
    EscrevaL()
  FimPara
fimalgoritmo