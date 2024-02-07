algoritmo "Ex008"
var
  I: Inteiro //Contador
  A, B, C: Inteiro //Var A, B, C
  Num: Vetor[1..10] de Inteiro //Vetor de 10 posições
  SomaA, SomaB, SomaC: Inteiro //Variaveis para guarda de soma
  
inicio
  //Entrada de dados
  Escreva("DIGITE O VALOR DE A: ", A)
    Leia(A)
  Escreva("DIGITE O VALOR DE B: ", B)
    Leia(B)
  Escreva("DIGITE O VALOR DE C: ", C)
    Leia(C)

  Para I de 1 ate 10 faca
    Escreva("DIGITE O VALOR DA POSIÇÃO ", I, ": ")
      Leia(Num[I])
  FimPara
  
  //Verifica se o valor é o mesmo nas duas variaveis
  Para I de 1 ate 10 faca
    Se (Num[I] = A)entao
      SomaA <- SomaA + 1 //Se for soma +1
    senao
      Se (Num[I] = B)entao
        SomaB <- SomaB + 1
      senao
        Se (Num[I] = C)entao
          SomaC <- SomaC + 1
        senao
        FimSe
      FimSe
    FimSe
  FimPara
  
  //Imprimi os resultados
  LimpaTela
  
  EscrevaL("A: ", SomaA)
  EscrevaL("B: ", SomaB)
  EscrevaL("C: ", SomaC)
fimalgoritmo