algoritmo "Ex063"
//63) Crie um programa usando a estrutura �fa�a enquanto� que leia v�rios
//n�meros. A cada la�o, pergunte se o usu�rio quer continuar ou n�o. No final,
//mostre na tela:
//a) O somat�rio entre todos os valores
//b) Qual foi o menor valor digitado
//c) A m�dia entre todos os valores
//d) Quantos valores s�o pares
var
  Resp: Caractere //Var Resposta
  N: Inteiro //Numeros digitados
  Somatorio,MenorValor,TotPar: Inteiro //Var para acumulos de dados e contas
  C: Inteiro //Var contadora de usuarios
  Media: Real //Var para media
inicio
  //Inicia Var com valores
  Resp <- "S"
  C <- 0
  MenorValor <- 0
  TotPar <- 0
    Enquanto (Resp <> "N")faca //Enquanto Resposta n�o for N
      C <- C + 1 //Contador Soma +1
      Escreva("Digite um numero: ") //Pe�a um numero
        Leia(N)
        
      Somatorio <- Somatorio + N //Numero digitado � somado ao numero anterior
      
      Se (N%2 = 0)entao //Se N / 2 for resto 0 � par
        TotPar <- TotPar + 1 //Recebe + 1
      FimSe
      
      Se (C = 1)entao //Se o contador for igual a 1
        MenorValor <- N //O primeiro valor sera a base para compara��o
      senao //Senao for
        Se (N < MenorValor)entao //Se o valor digitado for menor que o menor valor guardado
          MenorValor <- N //Ele sera o novo menor numero
        FimSe
      FimSe

      Escreva("Deseja continuar? [S/N] ")
        Leia(Resp) //Se (N) ira encerrar
    FimEnquanto

  Media <- Somatorio / C //Media � baseada na soma de todos os num e a quantidade de user
  
  EscrevaL(" ")

  //Resultados
  EscrevaL("Somatorio de todos o valores: ",Somatorio)
  EscrevaL("Menor valor digitado: ",MenorValor)
  EscrevaL("Media entre os valores: ",Media)
  EscrevaL("Quantos valores s�o pares: ",TotPar)
fimalgoritmo