algoritmo "Ex032"
//32) [DESAFIO] Crie um jogo onde o computador vai sortear um número
//entre 1 e 5 o jogador vai tentar descobrir qual foi o valor sorteado.
var
  Robo,N: Inteiro //Var tipo inteiro para uso de entrada e saida de dados :0
inicio
  //Var robo recebe numero aleatorio entre 1 e 5
  Robo <- Randi(5)+ 1
  Escreva("Digite o numero da sorte: ")
  Leia(N)

  Escreval("NUMERO DO ROBO: ",Robo)
  
  //Se o numero aleatorio for o mesmo que o digitado
  Se (N = Robo)entao
    Escreva("Parabens o numero correto é este") //R1
  senao //Se for diferente
    Escreva("Que pena tente novamente") //R2
  FimSe
  
fimalgoritmo