algoritmo "Jogos"
var
  Opcao: Inteiro
  Resposta: Caractere
  
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
    EscrevaL("[2] - JOKENPO      | [] - ????    ")
    EscrevaL("----------------------------------")
    EscrevaL()
    Escreva("ESCOLHA UMA OPÇÃO: ")
      Leia(Opcao)
    LimpaTela
  Ate(Opcao > 0) e (Opcao < 5)
FimProcedimento

Procedimento ManualJogoVelha() //Manual jogo da velha
inicio
  EscrevaL("MANUAL DO JOGO DA VELHA")
  EscrevaL("OBJETIVO")
  Escreva(" * Formar uma linha de três símbolos (X ou O) em linha ")
  EscrevaL("horizontal,vertical ou diagonal em um tabuleiro 3x3.")
  Escreva(" * Jogadores alternam turnos, escolhendo uma célula vazia ")
  EscrevaL("para colocar seu símbolo.")
  Escreva(" * Ganhe formando 3 símbolos em linha. Se o tabuleiro lota ")
  Escreva(" sem vencedor, é empate.")
  Escreva("Deseja voltar ao menu [S/N]: ")
FimProcedimento

inicio
  Menu()
  Escolha Opcao
    Caso 1
      Repita
        Opcao <- 0
        EscrevaL("BEM VINDO AO JOGO DA VELHA")
        EscrevaL("[1] MANUAL")
        EscrevaL("[2] PROSSEGUIR PARA O JOGO")
        Leia(Opcao)
        LimpaTela
      Ate(Resposta = "N") ou (Resposta = "n")
        Escolha Opcao
          Caso 1
            ManualJogoVelha()
          Caso 2
            Escreva("Teste 2")
        FimEscolha
    Caso 2
      Opcao <- 0
      EscrevaL("BEM VINDO AO JOKEMPO")
      EscrevaL("[1] MANUAL")
      EscrevaL("[2] PROSSEGUIR PARA O JOGO")
        Leia(Opcao)
      Escolha Opcao
        Caso 1
        Caso 2
      FimEscolha
    Caso 3

  FimEscolha
fimalgoritmo