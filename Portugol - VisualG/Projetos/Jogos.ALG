algoritmo "Jogos"
var
  Opcao,OpcaoJogo: Inteiro
  
Procedimento Menu() //Menu do aplicativo
inicio
  Repita
    EscrevaL("+------------------------------+")
    EscrevaL("|                              |")
    EscrevaL("|       JOGOS EM PORTUGOL      | DESENVOLVEDOR: Isaac Romero")
    EscrevaL("|                              | ATUALIZAÇÃO RECENTE: 18/01/2024")
    EscrevaL("+------------------------------+")

    EscrevaL("JOGOS DISPONÍVEIS")
    EscrevaL("----------------------------------")
    EscrevaL("   2 JOGADORES     |  1 JOGADOR   ")
    EscrevaL("[1] - JOGO DA VELHA| [3] - ADVINHA")
    EscrevaL("[2] - JOKEMPO      | [] - ????    ")
    EscrevaL("----------------------------------")
    EscrevaL()
    Escreva("ESCOLHA UMA OPÇÃO: ")
      Leia(Opcao)
    LimpaTela
  Ate(Opcao > 0) e (Opcao < 5)
FimProcedimento

Procedimento MenuJogoVelha() //Menu jogo da velha
inicio
  EscrevaL("BEM VINDO AO JOGO DA VELHA")
  EscrevaL("[1] MANUAL")
  EscrevaL("[2] PROSSEGUIR PARA O JOGO")
    Leia(OpcaoJogo)
FimProcedimento

Procedimento ManualJogoVelha() //Manual jogo da velha
inicio
  LimpaTela
  EscrevaL("MANUAL DO JOGO DA VELHA")
  EscrevaL("OBJETIVO")
  Escreva(" * Formar uma linha de três símbolos (X ou O) em linha ")
  EscrevaL("horizontal,vertical ou diagonal em um tabuleiro 3x3.")
  Escreva(" * Jogadores alternam turnos, escolhendo uma célula vazia ")
  EscrevaL("para colocar seu símbolo.")
  Escreva(" * Ganhe formando 3 símbolos em linha. Se o tabuleiro lota ")
  EscrevaL(" sem vencedor, é empate.")
FimProcedimento

Procedimento MenuJokempo() //Menu Jokempo
inicio
  EscrevaL("BEM VINDO AO JOKEMPO")
  EscrevaL("[1] MANUAL")
  EscrevaL("[2] PROSSEGUIR PARA O JOGO")
    Leia(OpcaoJogo)
FimProcedimento

Procedimento ManualJokempo() //Manual Jokempo
inicio
  LimpaTela
  EscrevaL("MANUAL DO JOGO JOKEMPO")
  EscrevaL("OBJETIVO")
  Escreva(" * Vencer o oponente escolhendo entre pedra, papel ou tesoura,")
  EscrevaL("escolhas iguais resultam em empate.")
  EscrevaL(" * Pedra esmaga tesoura, papel cobre pedra, tesoura corta papel.")
FimProcedimento

Procedimento MenuAdvinha()//Menu Advinha
inicio
  EscrevaL("BEM VINDO AO JOGO ADVINHA")
  EscrevaL("[1] MANUAL")
  EscrevaL("[2] PROSSEGUIR PARA O JOGO")
    Leia(OpcaoJogo)
FimProcedimento

Procedimento ManualAdvinha()//Manual Advinha
inicio
  LimpaTela
  EscrevaL("MANUAL DO JOGO ADVINHA")
  EscrevaL("OBJETIVO")
  EscrevaL(" * Adivinhar o número escolhido pelo robô,")
FimProcedimento

inicio
  Menu()
  Escolha Opcao
    Caso 1
      OpcaoJogo <- 0
      MenuJogoVelha()
      Se (OpcaoJogo = 1)entao
        ManualJogoVelha()
      senao
        Se(OpcaoJogo = 2)entao
          //Jogo
        FimSe
      FimSe
    Caso 2
      OpcaoJogo <- 0
      MenuJokempo()
      Se (OpcaoJogo = 1)entao
        ManualJokempo()
      senao
        Se(OpcaoJogo = 2)entao
          //Jogo
        FimSe
      FimSe
    Caso 3
      OpcaoJogo <- 0
      MenuAdvinha()
      Se (OpcaoJogo = 1)entao
        ManualAdvinha()
      senao
        Se (OpcaoJogo = 2)entao
        //Jogo
        FimSe
      FimSe
  FimEscolha
fimalgoritmo