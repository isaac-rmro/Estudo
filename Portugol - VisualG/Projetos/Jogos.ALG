algoritmo "Jogos"
var
  Opcao,OpcaoJogo: Inteiro
  I: Inteiro
  //Variaveis Jokempo
  JokempoJoga: vetor[1..2] de Inteiro
  GanhaJokempo: Caractere
  //Variaveis Adivinha
  AdvinhaTent: Inteiro
  Robo: Inteiro
  Cr: Inteiro
  AdNum: Inteiro
  GanhaAd: Caractere
  
Procedimento Menu() //Menu do aplicativo
inicio
  Enquanto (Opcao < 1) ou (Opcao > 3)faca
    EscrevaL("+------------------------------+")
    EscrevaL("|                              |")
    EscrevaL("|       JOGOS EM PORTUGOL      | DESENVOLVEDOR: Isaac Romero")
    EscrevaL("|                              | ATUALIZAÇÃO RECENTE: 19/01/2024")
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
  FimEnquanto
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

Procedimento Jokempo()
inicio
  Para I de 1 ate 2 faca
    Enquanto (JokempoJoga[I] < 1) ou (JokempoJoga[I] > 3)faca
      EscrevaL("JOGADOR: ", I)
      EscrevaL("[1] PEDRA")
      EscrevaL("[2] PAPEL")
      EscrevaL("[3] TESOURA")
      Escreva("DIGITE SUA ESCOLHA: ")
        Leia(JokempoJoga[I])
      LimpaTela
    FimEnquanto
  FimPara
FimProcedimento

Funcao VerJokempo(J1, J2: Inteiro): Caractere
inicio
  Se (J1 = J2)entao
    Retorne "EMPATE"
  senao
    Se ((J1 = 1) e (J2 = 3)) ou ((J1 = 2) e (J2 = 1)) ou ((J1 = 3) e (J2 = 2))entao
      Retorne "JOGADOR 1 VENCEU"
    senao
      Retorne "JOGADOR 2 VENCEU"
    FimSe
  FimSe
FimFuncao

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

Procedimento Advinha()
inicio
  Cr <- 0
  EscrevaL("NUMERO DE TENTATIVAS PERMITIDAS ATUALMENTE: 10")
  Escreva("APOSTA QUANTAS TENTATIVAS PARA VENCER MEU ROBO? ")
    Leia(AdvinhaTent)
    
  Robo <- Randi(10) + 1
  
  Repita
    Cr <- Cr + 1
    EscrevaL("TENTIVA: ", Cr)
    Escreva("ESCOLHA UM NUMERO: ")
      Leia(AdNum)
    Se (AdNum <> Robo)entao
      Escreva("ERROU")
      EscrevaL()
    FimSe
    EscrevaL()
    Se (Adnum = Robo) e (Cr = AdvinhaTent)entao
      Cr <- Cr - 1
    FimSe
  Ate (AdNum = Robo) ou (Cr = AdvinhaTent)
  
FimProcedimento

Funcao VerAdvinha(T, R, C, AdT: Inteiro): Caractere
inicio
  Se (T = R)entao
    Retorne "VOCÊ GANHOU DESTA VEZ"
  senao
    Se (T <> R) e (C = AdT)entao
      Retorne "PERDEU PARA O MEU ROBO HAHA"
    FimSe
  FimSe
FimFuncao

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
          LimpaTela
          Jokempo()
          GanhaJokempo <- VerJokempo(JokempoJoga[1],JokempoJoga[2])
          Escreva("PARABÉNS O ",GanhaJokempo)
        FimSe
      FimSe
    Caso 3
      OpcaoJogo <- 0
      MenuAdvinha()
      Se (OpcaoJogo = 1)entao
        ManualAdvinha()
      senao
        LimpaTela
        Se (OpcaoJogo = 2)entao
          Advinha()
          GanhaAd <- VerAdvinha(AdNum,Robo,Cr,AdvinhaTent)
          Escreva(GanhaAd)
        FimSe
      FimSe
  FimEscolha
fimalgoritmo