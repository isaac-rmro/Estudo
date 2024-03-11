algoritmo "Ex031"
//[DESAFIO] Crie um jogo de JoKenPo (Pedra-Papel-Tesoura)
var
  Opcao1,Opcao2: Inteiro
inicio
  //Opção para o primeiro usuario
  Escreval("VEZ DE: Jogador[1]")
  Escreval("[0]pedra")
  Escreval("[1]papel")
  Escreval("[2]tesoura")

  Leia(Opcao1)
  
  LimpaTela //Nao mostra a escolha do primeiro
  
  //Opção para o segundo usuario
  Escreval("VEZ DE: Jogador[2]")
  Escreval("[0]pedra")
  Escreval("[1]papel")
  Escreval("[2]tesoura")
  
  Leia(Opcao2)
  
  LimpaTela
  
  //Condiçoes
  Se (Opcao1 = Opcao2)entao //Se logo os dois forem iguais
    Escreval("------")
    Escreval("EMPATE") //Empate
    Escreval("------")
  senao
    Se (Opcao1 - Opcao2 = -2) ou (Opcao1 - Opcao2 = 1)entao
    //Se a primeira opcao menos a segunda for -2 (pedra vs tesoura)
    //O jogador um é vitorioso
    //Se as outras duas opções for igual a 1(tesouro vs papel) e (papel vs pedra)
    //O jogador um continua vitorioso
      Escreval("-----------------")
      Escreval("JOGADOR[1] GANHOU")
      Escreval("-----------------")
    senao //Caso contrario so entendemos que o jogador 2 é vitorioso
      Escreval("-----------------")
      Escreval("JOGADOR[2] GANHOU")
      Escreval("-----------------")
    FimSe
  FimSe
  
  Escreval(" ")

  //Opções caso queiram ver
  Escreval("OPCAO DO JOGADOR[1]: ",Opcao1)
  Escreval("OPCAO DO JOGADOR[2]: ",Opcao2)
  
  Escreval(" ")
  
  //E informações uteis
  Escreval("Tabela de Referencia")
  Escreval("[0]pedra")
  Escreval("[1]papel")
  Escreval("[2]tesoura")
  
  Escreval(" ")
  
  Escreval("--------------------------------------------")
  Escreval("pedra ganha de tesoura,mas perde para papel")
  Escreval("tesoura ganha de papel,mas perde para pedra")
  Escreval("papel ganha de pedra, mas perda para tesoura")
  Escreval("--------------------------------------------")
fimalgoritmo