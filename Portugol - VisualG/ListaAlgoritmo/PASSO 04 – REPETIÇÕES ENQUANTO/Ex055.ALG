algoritmo "Ex055"
//55) [DESAFIO] Vamos melhorar o jogo que fizemos no exercício 32.
//A partir de agora, o computador vai sortear um número entre 1 e 10 e
//o jogador vai ter 4 tentativas para tentar acertar.
var
  Robo,N,C: Inteiro //Var para contagem e result
inicio
  C <- 1 //Contador inicia com 1
  Robo <- Randi(5)+ 1 //È gerado um numero aleatorio entre 1-5
  Escreva("Digite o numero da sorte: ")
  Leia(N) //Sera que voce acerta de primeira?
  
  Se (N = Robo)entao //Se acertar
    Escreval("NUMERO DO ROBO: ",Robo) //Exiba
    Escreva("Parabens o numero correto é este")
  senao //Se errar
    Enquanto (N <> Robo) e (C <= 4)faca //Enquanto vc errar e tiver tentativas
      Escreva("[",C,"°]Digite o numero da sorte: ") //exiba
        Leia(N)
      Se (N = Robo)entao //Se voce acertar
        Escreval("NUMERO DO ROBO: ",Robo) //Parabens e exiba isto
        Escreva("Parabens o numero correto é este")
      senao //Se nao acertar mostre a quantidade de tentivas
        EscrevaL("Tentivas Restantes: ",4 - C)
      FimSe
      //Repita o looping
    C <- C + 1 //Contador recebe + 1 ate atingir 4 e depois se desfaz
    //Ai voce perde :)
    FimEnquanto
  FimSe

fimalgoritmo