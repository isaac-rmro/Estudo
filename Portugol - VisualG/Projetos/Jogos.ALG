algoritmo "Jogos"
var
  //Variaveis multi funcionais
  Opcao,OpcaoJogo: Inteiro
  I: Inteiro
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
  Enquanto (Opcao < 1) ou (Opcao > 3)faca //Enquanto a posição for invalida repita
    EscrevaL("+------------------------------+")
    EscrevaL("|                              |")
    EscrevaL("|       JOGOS EM PORTUGOL      | DESENVOLVEDOR: Isaac Romero")
    EscrevaL("|                              | ATUALIZAÇÃO RECENTE: 25/01/2024")
    EscrevaL("+------------------------------+")

    EscrevaL("JOGOS DISPONÍVEIS")
    EscrevaL("----------------------------------")
    EscrevaL("   2 JOGADORES     |  1 JOGADOR   ")
    EscrevaL("[1] - JOGO DA VELHA| [3] - ADVINHA")
    EscrevaL("[2] - JOKEMPO      | [] - ????    ")
    EscrevaL("----------------------------------")
    EscrevaL()
    Escreva("ESCOLHA UMA OPÇÃO: ")
      Leia(Opcao)//Le a opcao desejada pelo usuario
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
      Leia(OpcaoJogo) //Opcao apenas para dentro de jogos
    Se (OpcaoJogo > 2) ou (OpcaoJogo < 1)entao //Validação de dados
      LimpaTela //A cada verificacao falsa (limpatela)
    FimSe
  Ate (OpcaoJogo > 0) e (OpcaoJogo < 3)
FimProcedimento

Procedimento ManualJogoVelha() //Manual jogo da velha
inicio
  //Exibi apenas o manual da jogo (Interminado)
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
  //Exibi o jogo da velha montado
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
  EscrevaL("+-----------+") //Adicionei muita filura ;)
  FimPara
FimProcedimento

Procedimento Preenche()
inicio
  Para l de 1 ate 3 faca
    Para c de 1 ate 3 faca
      Se (Po = M[l,c])entao
        M[l,c] <- Simb //Adicona o simbolo atual ao vetor na posicao escolhida
      FimSe
    FimPara
  FimPara
    LimpaTela
FimProcedimento

Funcao Jogada(J: Caractere): Caractere
inicio
  //Troca os jogadores
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
  //Ganhador por linha
  Para l de 1 ate 3 faca
    Se (M[l,1] = M[l,2]) e (M[l,2] = M[l,3])entao
      GanhaVelha <- Verdadeiro
    FimSe
  FimPara

  //Ganhador por coluna
  Para c de 1 ate 3 faca
    Se (M[1,c] = M[2,c]) e (M[2,c] = M[3,c])entao
      GanhaVelha <- Verdadeiro
    FimSe
  FimPara

  //Ganhador por diagonal principal
  Se (M[1,1] = M[2,2]) e (M[2,2] = M[3,3])entao
      GanhaVelha <- Verdadeiro
  FimSe

  //Ganhador por diagonal secundaria
  Se (M[1,3] = M[2,2]) e (M[2,2] = M[3,1])entao
      GanhaVelha <- Verdadeiro
  FimSe
FimProcedimento

Procedimento Empate()
inicio
  //A cada jogada é somado + 1 no cont
  Cont <- Cont + 1
  Se (Cont = 9)entao
    DeuVelha <- Verdadeiro //Se (cont = 9 jogada) = (Velha = Termina jogo)
  FimSe
FimProcedimento

Funcao ParabensVelha(S: Caractere): Caractere
inicio
  //Solucao (não otimizada) para erro de ver ganhador
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
  Repita //Verificacao de dados validos
    EscrevaL("BEM VINDO AO JOKEMPO")
    EscrevaL("[1] MANUAL")
    EscrevaL("[2] PROSSEGUIR PARA O JOGO")
      Leia(OpcaoJogo)
    Se (OpcaoJogo < 1) ou (OpcaoJogo > 2)entao
      LimpaTela //LimpaTela a cada verificao falsa
    FimSe
  Ate (OpcaoJogo > 0) e (OpcaoJogo < 3)
FimProcedimento

Procedimento ManualJokempo() //Manual Jokempo
inicio
  //Exibi o manual (Interatividade Interminada)
  LimpaTela
  EscrevaL("MANUAL DO JOGO JOKEMPO")
  EscrevaL("OBJETIVO")
  Escreva(" * Vencer o oponente escolhendo entre pedra, papel ou tesoura,")
  EscrevaL("escolhas iguais resultam em empate.")
  EscrevaL(" * Pedra esmaga tesoura, papel cobre pedra, tesoura corta papel.")
FimProcedimento

Procedimento Jokempo()
inicio
  Para I de 1 ate 2 faca //Mostra as posicoes que podem ser jogadas
    Enquanto (JokempoJoga[I] < 1) ou (JokempoJoga[I] > 3)faca validacao de dados
      EscrevaL("JOGADOR: ", I) //Exibi jogador atual (1 ou 2)
      EscrevaL("[1] PEDRA")
      EscrevaL("[2] PAPEL")
      EscrevaL("[3] TESOURA")
      Escreva("DIGITE SUA ESCOLHA: ")
        Leia(JokempoJoga[I]) //Le a opcao na posicao do jogador (1 ou 2)
      LimpaTela
    FimEnquanto
  FimPara
FimProcedimento

Funcao VerJokempo(J1, J2: Inteiro): Caractere
inicio
  //Verificacao de ganhador
  Se (J1 = J2)entao
    Retorne "EMPATE"
  senao
    //Hipoteses se o jogador 1 é ganhador
    Se ((J1 = 1) e (J2 = 3)) ou ((J1 = 2) e (J2 = 1)) ou ((J1 = 3) e (J2 = 2))entao
      Retorne "JOGADOR 1 VENCEU"
    senao //Se nao for, sobra o 2 ser o vencedor
      Retorne "JOGADOR 2 VENCEU"
    FimSe
  FimSe
FimFuncao

//-----------------------------------------------------
//Jogo do advinha
Procedimento MenuAdvinha()//Menu Advinha
inicio
  Repita //Valida opcoes validas
    EscrevaL("BEM VINDO AO JOGO ADVINHA")
    EscrevaL("[1] MANUAL")
    EscrevaL("[2] PROSSEGUIR PARA O JOGO")
      Leia(OpcaoJogo)
    Se (OpcaoJogo < 1) ou (OpcaoJogo > 2)entao
      LimpaTela //Limpa tela a cada dado invalido
    FimSe
  Ate (OpcaoJogo > 0) e (OpcaoJogo < 3)
FimProcedimento

Procedimento ManualAdvinha()//Manual Advinha (Nao terminado)
inicio
  LimpaTela
  EscrevaL("MANUAL DO JOGO ADVINHA")
  EscrevaL("OBJETIVO")
  EscrevaL(" * Adivinhar o número escolhido pelo robô, pode se escolher")
  Escreva("quantas tentativas irá precisar para acertar.")
FimProcedimento

Procedimento Advinha()
inicio
  Cr <- 0 //Conta repeticao
  Repita //Validacao
    EscrevaL("NUMERO DE TENTATIVAS PERMITIDAS ATUALMENTE: 10")
    Escreva("APOSTA QUANTAS TENTATIVAS PARA VENCER MEU ROBO? ")
      Leia(AdvinhaTent)
    Se (AdvinhaTent < 1) ou (AdvinhaTent > 10)entao
      LimpaTela //Limpa tela a cada dado invalido
    FimSe
  Ate (AdvinhaTent > 0) e (AdvinhaTent < 11)
    
  Robo <- Randi(10) + 1 //Sorteio dos numeros
  
  Repita
    Cr <- Cr + 1 //Conta repeticao ate atingir a escolhida pelo usuario
    EscrevaL("TENTIVA: ", Cr) //Exibi a tentativa atual
    Escreva("ESCOLHA UM NUMERO: ")
      Leia(AdNum)
    Se (AdNum <> Robo)entao //Se errar exiba mensagem
      Escreva("ERROU")
      EscrevaL()
    FimSe
    EscrevaL()
    Se (Adnum = Robo) e (Cr = AdvinhaTent)entao //Gambiarra para erro
      Cr <- Cr - 1
    FimSe
  Ate (AdNum = Robo) ou (Cr = AdvinhaTent) //Validacao de resultados
  
FimProcedimento

Funcao VerAdvinha(T, R, C, AdT: Inteiro): Caractere
inicio
  //Exibicao das duas hipotese
  Se (T = R)entao
    Retorne "VOCÊ GANHOU DESTA VEZ" //Voce ganhar
  senao
    Se (T <> R) e (C = AdT)entao
      Retorne "PERDEU PARA O MEU ROBO HAHA" //Voce atingir o numero de repeticao
    FimSe
  FimSe
FimFuncao

//-----------------------------------------------------
//Inicio do programa
inicio
  Repita
    Opcao <- 0 //Inicia Opcao para o jogo valendo 0
    Menu() //Exibi o menu do jogo
    Escolha Opcao
      //Jogo da Velha [1]
      Caso 1
        OpcaoJogo <- 0 //Zera a var para (Jogo) estava dando problema
        MenuJogoVelha() //Exibi o menu do jogo da velha
        Se (OpcaoJogo = 1)entao
          ManualJogoVelha()//Exibi o manual (Interatividade não terminada)
        senao
          Se(OpcaoJogo = 2)entao
            //Jogo em si
            LimpaTela
            I <- 1 //Indice inicia com 1
            Simb <- "X" //Primeiro Jogador sera "X"
            //Validacao de (vencedor) e (velha)
            GanhaVelha <- Falso
            DeuVelha <- Falso
            Para l de 1 ate 3 faca //Preenche os vetores
              Para c de 1 ate 3 faca
                M[l,c] <- NumpCarac(I) //Valor do indice sendo adicionado
                I <- I + 1 //Adiciona +1 a cada repeticao
              FimPara
            FimPara
            Velha()//Exibi o jogo da velha montado
            Repita
              Escreva("EM QUE POSIÇÃO VAI JOGAR O '",Simb,"': ")
                Leia(Po)//Le a posicao (Validacao Interminada)
              Preenche()//Funcao para preencher os vetores
              Velha()//Exibi a atualização da jogada
              VerGanhador()//Verifica se há ganhador
              Empate()//Verifica se há velha
              Simb <- Jogada(Simb)//Funcao para trocar o jogador
            Ate (GanhaVelha = Verdadeiro) ou (DeuVelha = Verdadeiro)//Jogo Termina
          FimSe
        FimSe
        //Exibicao de resultados
        Se (DeuVelha = Verdadeiro)entao
          EscrevaL()
          EscrevaL("---------")
          EscrevaL("| VELHA |")
          EscrevaL("---------")
        senao
          Simb <- ParabensVelha(Simb)
          EscrevaL()
          EscrevaL("========================================")
          EscrevaL("Parabens o jogador (", Simb, ") ganhou :)")
          EscrevaL("========================================")
        FimSe
//-----------------------------------------------------
      Caso 2
        //Jokempo
        OpcaoJogo <- 0
        MenuJokempo()//Exibi o menu
        Se (OpcaoJogo = 1)entao
          ManualJokempo()//Exibi o manual
        senao
          Se(OpcaoJogo = 2)entao
            LimpaTela
            Jokempo()//Exibi o jogo
            //Funcao para verificacao de resultados
            GanhaJokempo <- VerJokempo(JokempoJoga[1],JokempoJoga[2])
            Escreva("PARABÉNS O ",GanhaJokempo)//Mostra quem ganhou
          FimSe
        FimSe
//-----------------------------------------------------
      Caso 3
        OpcaoJogo <- 0//Zera a opcao de jogo
        MenuAdvinha() //Exibi o menu do jogo
        Se (OpcaoJogo = 1)entao
          ManualAdvinha()//Exibi manual
        senao
          LimpaTela
          Se (OpcaoJogo = 2)entao
            Advinha()//Exibi o jogo
            GanhaAd <- VerAdvinha(AdNum,Robo,Cr,AdvinhaTent) //Verifica 4 var's
            Escreva(GanhaAd) //Escreve quem ganhou (robo ou voce)
          FimSe
        FimSe
    FimEscolha
    EscrevaL()
    //A cada final de jogo voce pode recomecar
    Escreva("Deseja voltar ao menu[S/N]: ")
      Leia(RespostaMenu)
    LimpaTela
  Ate(RespostaMenu = "N") ou (RespostaMenu = "n")
fimalgoritmo