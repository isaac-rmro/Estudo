algoritmo "Jogos"
var
  //Variaveis multi funcionais
  Opcao,OpcaoJogo: Inteiro
  I: Inteiro
  Resposta: Caractere
  RespostaMenu: Caractere
  //Variaveis Jokempo
  JokempoJoga: vetor[1..2] de Inteiro
  GanhaJokempo: Caractere
  //Variaveis Adivinha
  AdvinhaTent: Inteiro
  Robo: Inteiro
  Cr: Inteiro
  AdNum: Inteiro
  GanhaAd: Caractere
  //Variaveis Jogo da Velha
  M: vetor[1..3,1..3] de Caractere
  l, c: Inteiro
  Simb: Caractere
  Po: Caractere
  VerPo: Logico
  GanhaVelha: Logico
  DeuVelha: Logico
  Cont: Inteiro
  
//Aplicativo
Procedimento Menu() //Menu do aplicativo
inicio
  Enquanto (Opcao < 1) ou (Opcao > 3)faca
    EscrevaL("+------------------------------+")
    EscrevaL("|                              |")
    EscrevaL("|       JOGOS EM PORTUGOL      | DESENVOLVEDOR: Isaac Romero")
    EscrevaL("|                              | ATUALIZAÇÃO RECENTE: 24/01/2024")
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

//-----------------------------------------------------
//Jogo da velha
Procedimento MenuJogoVelha() //Menu jogo da velha
inicio
  Repita
    EscrevaL("BEM VINDO AO JOGO DA VELHA")
    EscrevaL("[1] MANUAL")
    EscrevaL("[2] PROSSEGUIR PARA O JOGO")
      Leia(OpcaoJogo)
    Se (OpcaoJogo > 2) ou (OpcaoJogo < 1)entao
      LimpaTela
    FimSe
  Ate (OpcaoJogo > 0) e (OpcaoJogo < 3)
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

Procedimento Velha() //Jogo da velha
inicio
  EscrevaL("  1   2   3")
  EscrevaL("+-----------+")
  Para l de 1 ate 3 faca
    Para c de 1 ate 3 faca
      Se (c = 1)entao
        Escreva("| ", M[l,c]:2, "|")
      senao
        Se (c = 2)entao
          Escreva(" ", M[l,c]:2, "|")
        senao
          Se (c = 3)entao
            Escreva(" ", M[l,c]:2, "| ", l)
          FimSe
        FimSe
      FimSe
    FimPara
    EscrevaL()
  EscrevaL("+-----------+")
  FimPara
FimProcedimento

Procedimento Preenche()
inicio
  Para l de 1 ate 3 faca
    Para c de 1 ate 3 faca
      Se (Po = M[l,c])entao
        M[l,c] <- Simb
      FimSe
    FimPara
  FimPara
    LimpaTela
FimProcedimento

Funcao Jogada(J: Caractere): Caractere
inicio
  Se (J = "X")entao
    Retorne "O"
  senao
    Se (J = "O")entao
      Retorne "X"
    FimSe
  Fimse
FimFuncao

Procedimento VerGanhador()
inicio
  Para l de 1 ate 3 faca
    Se (M[l,1] = M[l,2]) e (M[l,2] = M[l,3])entao
      GanhaVelha <- Verdadeiro
    FimSe
  FimPara

  Para c de 1 ate 3 faca
    Se (M[1,c] = M[2,c]) e (M[2,c] = M[3,c])entao
      GanhaVelha <- Verdadeiro
    FimSe
  FimPara

  Se (M[1,1] = M[2,2]) e (M[2,2] = M[3,3])entao
      GanhaVelha <- Verdadeiro
  FimSe

  Se (M[1,3] = M[2,2]) e (M[2,2] = M[3,1])entao
      GanhaVelha <- Verdadeiro
  FimSe
FimProcedimento

Procedimento Empate()
inicio
  Cont <- Cont + 1
  Se (Cont = 9)entao
    DeuVelha <- Verdadeiro
  FimSe
FimProcedimento

Funcao ParabensVelha(S: Caractere): Caractere
inicio
  Se (Simb = "X")entao
    Retorne "O"
  senao
    Se (Simb = "O")entao
      Retorne "X"
    FimSe
  FimSe
FimFuncao
//-----------------------------------------------------
//Jokempo
Procedimento MenuJokempo() //Menu Jokempo
inicio
  Repita
    EscrevaL("BEM VINDO AO JOKEMPO")
    EscrevaL("[1] MANUAL")
    EscrevaL("[2] PROSSEGUIR PARA O JOGO")
      Leia(OpcaoJogo)
    Se (OpcaoJogo < 1) ou (OpcaoJogo > 2)entao
      LimpaTela
    FimSe
  Ate (OpcaoJogo > 0) e (OpcaoJogo < 3)
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

//-----------------------------------------------------
//Jogo do advinha
Procedimento MenuAdvinha()//Menu Advinha
inicio
  Repita
    EscrevaL("BEM VINDO AO JOGO ADVINHA")
    EscrevaL("[1] MANUAL")
    EscrevaL("[2] PROSSEGUIR PARA O JOGO")
      Leia(OpcaoJogo)
    Se (OpcaoJogo < 1) ou (OpcaoJogo > 2)entao
      LimpaTela
    FimSe
  Ate (OpcaoJogo > 0) e (OpcaoJogo < 3)
FimProcedimento

Procedimento ManualAdvinha()//Manual Advinha
inicio
  LimpaTela
  EscrevaL("MANUAL DO JOGO ADVINHA")
  EscrevaL("OBJETIVO")
  EscrevaL(" * Adivinhar o número escolhido pelo robô, pode se escolher")
  Escreva("quantas tentativas irá precisar para acertar.")
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

//-----------------------------------------------------
//Inicio do programa
inicio
  RespostaMenu <- "S"
  Resposta <- "S"
  Menu()
  Escolha Opcao
    Caso 1
      OpcaoJogo <- 0
      MenuJogoVelha()
      Se (OpcaoJogo = 1)entao
        ManualJogoVelha()
      senao
        Se(OpcaoJogo = 2)entao
          LimpaTela
          I <- 1
          Simb <- "X"
          GanhaVelha <- Falso
          DeuVelha <- Falso
          Para l de 1 ate 3 faca
            Para c de 1 ate 3 faca
              M[l,c] <- NumpCarac(I)
              I <- I + 1
            FimPara
          FimPara
          Velha()
          Repita
            Escreva("EM QUE POSIÇÃO VAI JOGAR O '",Simb,"': ")
              Leia(Po)
            Preenche()
            Velha()
            VerGanhador()
            Empate()
            Simb <- Jogada(Simb)
          Ate (GanhaVelha = Verdadeiro) ou (DeuVelha = Verdadeiro)
        FimSe
      FimSe
      Simb <- ParabensVelha(Simb)
      EscrevaL()
      Escreva("Parabens o jogador (", Simb, ") ganhou :)")
//-----------------------------------------------------
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
//-----------------------------------------------------
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