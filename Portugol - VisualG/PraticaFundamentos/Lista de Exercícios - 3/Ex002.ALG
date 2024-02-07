algoritmo "Ex002"
//2. Leia dez valores inteiros em um vetor A. Construir um vetor B de mesmo
//tamanho com os elemntos do vetor A multiplicados por 3.
var
  I: Inteiro //Var indice
  A: Vetor[1..10] de Inteiro //Vetor A 10 casas
  B: Vetor[1..10] de Inteiro //Vetor B 10 casas
  
Funcao MultiA(a: Inteiro): Inteiro //Funcao para realizar o calculo da conta
var
  m: Inteiro //Var para guarda de resultado da multiplicação
inicio
  m <- a * 3 //Multiplica valor atual * 3
  Retorne m //Retorna o resultado
FimFuncao
  
inicio
  Para I de 1 ate 10 faca //Solicita 10 numeros
    Escreva("Digite os valores na posição [ A,", I, " ]: ")
      Leia(A[I])
  FimPara
  
  Para I de 1 ate 10 faca //Atribui os 10 numeros a função
    B[I] <- MultiA(A[I])
  FimPara

  LimpaTela

  //Imprime os resultados
  EscrevaL("VALORES MULTIPLICADOS POR 3")
  EscrevaL()
  Para I de 1 ate 10 faca
    EscrevaL(I:4, "° Pos: ", B[I]:4)
  FimPara
fimalgoritmo