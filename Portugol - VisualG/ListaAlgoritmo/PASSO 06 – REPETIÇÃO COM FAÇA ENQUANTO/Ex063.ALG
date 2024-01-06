algoritmo "Ex063"
//63) Crie um programa usando a estrutura “faça enquanto” que leia vários
//números. A cada laço, pergunte se o usuário quer continuar ou não. No final,
//mostre na tela:
//a) O somatório entre todos os valores
//b) Qual foi o menor valor digitado
//c) A média entre todos os valores
//d) Quantos valores são pares
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
    Enquanto (Resp <> "N")faca //Enquanto Resposta não for N
      C <- C + 1 //Contador Soma +1
      Escreva("Digite um numero: ") //Peça um numero
        Leia(N)
        
      Somatorio <- Somatorio + N //Numero digitado é somado ao numero anterior
      
      Se (N%2 = 0)entao //Se N / 2 for resto 0 é par
        TotPar <- TotPar + 1 //Recebe + 1
      FimSe
      
      Se (C = 1)entao //Se o contador for igual a 1
        MenorValor <- N //O primeiro valor sera a base para comparação
      senao //Senao for
        Se (N < MenorValor)entao //Se o valor digitado for menor que o menor valor guardado
          MenorValor <- N //Ele sera o novo menor numero
        FimSe
      FimSe

      Escreva("Deseja continuar? [S/N] ")
        Leia(Resp) //Se (N) ira encerrar
    FimEnquanto

  Media <- Somatorio / C //Media é baseada na soma de todos os num e a quantidade de user
  
  EscrevaL(" ")

  //Resultados
  EscrevaL("Somatorio de todos o valores: ",Somatorio)
  EscrevaL("Menor valor digitado: ",MenorValor)
  EscrevaL("Media entre os valores: ",Media)
  EscrevaL("Quantos valores são pares: ",TotPar)
fimalgoritmo