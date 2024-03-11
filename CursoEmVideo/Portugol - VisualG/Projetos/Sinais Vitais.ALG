algoritmo "Sinais Vitais"
var
  I: Inteiro
  Usuario: Caractere
  Idade: Inteiro
  Idade18: Logico
  Opcao: Inteiro
  PA: Vetor[0..1] de Inteiro
  BPM: Inteiro
  RPM: Inteiro
  TAX: Real
  EscalaDor: Inteiro
  EscalaDor1a10: Logico
  ClassPA, ClassBPM, ClassRPM, ClassTAX, ClassDOR: Caractere
  VetResposta, VetMsg: Vetor[0..4] de Caractere
  VetParametro: Vetor[0..4] de Real
  
Procedimento Limpa()
inicio
  Para I de 1 ate 6 faca
    Se (Opcao = I)entao
      LimpaTela
    FimSe
  FimPara
FimProcedimento
  
Procedimento Menu()
inicio
  EscrevaL("+                             +")
  EscrevaL("+ SINAIS VITAIS SIMPLIFICADOS +")
  EscrevaL("+                             +")
  EscrevaL()
  EscrevaL(":| - Olá sou pablito seu assistente")
  Escreva("Seu nome: ")
    Leia(Usuario)
  Escreva("Sua idade: ")
    Leia(Idade)
  LimpaTela
FimProcedimento

Procedimento Resultado()
inicio
  EscrevaL("+            +")
  EscrevaL("+ RESULTADOS +")
  EscrevaL("+            +")
  
  EscrevaL()
  
  EscrevaL("NOME: ", Usuario)
  EscrevaL("IDADE: ", Idade)
  
  EscrevaL()

FimProcedimento

Funcao VerIdade(id: Inteiro): Logico
var
  verI: Logico
inicio
  Se(id < 18)entao
    verI <- Falso
  senao
    verI <- Verdadeiro
  FimSe
  Retorne verI
FimFuncao

Procedimento Opcoes()
inicio
  EscrevaL("MENU DE OPÇÕES")
  EscrevaL("                                        Usuario: ", maiusc(Usuario))
  EscrevaL("[1] PRESSÃO ARTERIAL (PA)")
  EscrevaL("[2] FREQUÊNCIA CARDÍACA (FC)")
  EscrevaL("[3] INCURSSÕES RESPIRATÓRIAS (RPM)")
  EscrevaL("[4] TEMPERATURA (TAX)")
  EscrevaL("[5] ESCALA DE DOR")
  EscrevaL("[6] VERIFICAÇÃO")
  EscrevaL()
  EscrevaL(";) - Escolha uma das opções a seguir, irei te acompanhar")
  Escreva("OPÇÃO: ")
    Leia(Opcao)
FimProcedimento

//Funcoes em sua maioria foram utilizadas para guardar e validar resultados
//simples alem de rotular os parametros em termos tecnicos ;)

Funcao VerEscalaDor(numero: Inteiro): Logico
var
  verEscala: Logico
inicio
  Se(numero >= 0) e (numero <= 10)entao
    verEscala <- Verdadeiro
  senao
    verEscala <- Falso
  FimSe
  Retorne verEscala
FimFuncao

Funcao VerClassPA(sistole,diastole: Inteiro): Caractere
var
  msgPA: Caractere
inicio
  Se(sistole <= 90) e (diastole <= 60)entao
    msgPA <- "HIPOTENSÃO"
  senao
    Se (sistole >= 140) e (diastole >= 90)entao
      msgPA <- "HIPERTENSÃO"
    senao
      msgPA <- "NORMOTENSÃO"
    FimSe
  FimSe
  Retorne msgPA
FimFuncao

Funcao VerClassBPM(batimento: Inteiro): Caractere
var
  msgBPM: Caractere
inicio
  Se(batimento < 60)entao
    msgBPM <- "BRADICARDIO"
  senao
    Se(batimento > 100)entao
      msgBPM <- "TAQUICARDIO"
    senao
      msgBPM <- "NORMOCARDIO"
    FimSe
  FimSe
  Retorne msgBPM
FimFuncao

Funcao VerClassRPM(respiracao: Inteiro): Caractere
var
  msgRPM: Caractere
inicio
  Se(respiracao < 12)entao
    msgRPM <- "BRADIPNEIA"
  senao
    Se(respiracao > 20)entao
      msgRPM <- "TAQUIPNEIA"
    senao
      msgRPM <- "EUPNEIA"
    FimSe
  FimSe
  Retorne msgRPM
FimFuncao

Funcao VerClassTAX(temperatura: Real): Caractere
var
  msgTAX: Caractere
inicio
  Se (temperatura <= 35)entao
    msgTAX <- "HIPOTERMIA "
  senao
    Se (temperatura <= 37.5)entao
      msgTAX <- "NORMOTERMIA"
    senao
      Se (temperatura <= 39.5)entao
        msgTAX <- "FEBRIL"
      senao
        Se (temperatura <= 41)entao
          msgTAX <- "FEBRE ALTA"
        senao
          msgTAX <- "HIPERTERMIA"
        FimSe
      FimSe
    FimSe
  FimSe
  Retorne msgTAX
FimFuncao

Funcao VerClassDOR(dor: Inteiro): Caractere
var
  msgDOR: Caractere
inicio
  Se (dor < 1)entao
    msgDOR <- "SEM DOR"
  senao
    Se (dor < 4)entao
      msgDOR <- "DOR LIGEIRA"
    senao
      Se (dor < 7)entao
        msgDOR <- "DOR MODERADA"
      senao
        Se (dor < 10)entao
          msgDOR <- "DOR INTENSA"
        senao
          msgDOR <- "DOR MÁXIMA"
        FimSe
      FimSe
    FimSe
  FimSe
  Retorne msgDOR
FimFuncao

inicio
  //Menu de validação de idade
  Repita
    Menu()
    Idade18 <- VerIdade(Idade)
    Se (Idade18 = Falso)entao
      EscrevaL("DESCULPE ", maiusc(Usuario), " ESSA VERSÃO É COMPATIVEL COM PESSOAS +18!!!")
    FimSe
  Ate(Idade18 = Verdadeiro)
  
  //Exibicao de opções
  Repita
  Opcoes()
  Limpa()
  //Coleta todas as informacoes
  Escolha Opcao
    Caso 1
      EscrevaL("EXEMPLO COLETA: 120x80")
      EscrevaL("[120] = Pressão Sistolica")
      EscrevaL("[80] = Pressão Diastolica")
      EscrevaL()
      Escreva("Pressão Sistolica: ")
        Leia(PA[0])
      Escreva("Pressão Diastolica: ")
        Leia(PA[1])
      ClassPA <- VerClassPA(PA[0],PA[1])
    Caso 2
      EscrevaL("EXEMPLO COLETA: 80bpm")
      EscrevaL("[80] = Batimentos Por Minuto")
      EscrevaL()
      Escreva("BPM: ")
        Leia(BPM)
      ClassBPM <- VerClassBPM(BPM)
    Caso 3
      EscrevaL("EXEMPLO COLETA: 16rpm")
      EscrevaL("[16] incursões por minuto")
      EscrevaL()
      Escreva("RPM: ")
        Leia(RPM)
      ClassRPM <- VerClassRPM(RPM)
    Caso 4
      EscrevaL("EXEMPLO COLETA: 36.2 (c°)")
      EscrevaL("[32.2] = Temperatura Axilar")
      EscrevaL("[c°] = Graus Celsius")
      EscrevaL()
      Escreva("TAX: ")
        Leia(TAX)
      ClassTAX <- VerClassTAX(TAX)
    Caso 5
      Repita
        EscrevaL("EXEMPLO COLETA: 5")
        EscrevaL("A escala de dor é baseada em um numero entre 1 e 10")
        Escreval("[5] = Moderada")
        EscrevaL("ACIMA DE 5 = SEVERA OU 'DOR INTENSA'")
        EscrevaL()
        Escreva("EVA: ")
          Leia(EscalaDor)
        EscalaDor1a10 <- VerEscalaDor(EscalaDor)
        Se(EscalaDor1a10 = Falso)entao
          LimpaTela
          EscrevaL("INSIRA UM NUMERO VÁLIDO!!")
        FimSe
      Ate(EscalaDor1a10 = Verdadeiro)
      ClassDOR <- VerClassDOR(EscalaDor)
  FimEscolha
  LimpaTela
  Ate(Opcao = 6)
  
  //Assimilacao de posicoes

  VetResposta[0] <- ClassPA
  VetResposta[1] <- ClassBPM
  VetResposta[2] <- ClassRPM
  VetResposta[3] <- ClassTAX
  VetResposta[4] <- ClassDOR

  VetParametro[1] <- BPM
  VetParametro[2] <- RPM
  VetParametro[3] <- TAX
  VetParametro[4] <- EscalaDor

  VetMsg[0] <- "PA: "
  VetMsg[1] <- "BPM: "
  VetMsg[2] <- "RPM: "
  VetMsg[3] <- "TAX: "
  VetMsg[4] <- "ESCALA DOR: "

  //Exibe os resultados
  Resultado()

  Se (VetResposta[0] <> "")entao
    EscrevaL(VetMsg[0], PA[0], " x", PA[1], " ( ", VetResposta[0], " )")
  FimSe

  Para I de 1 ate 4 faca
    Se(VetResposta[I] <> "")entao
      EscrevaL(VetMsg[I], VetParametro[I], " ( ", VetResposta[I], " )")
    FimSe
  FimPara
  
  EscrevaL()
  
  EscrevaL(";) - ATÉ A PROXIMA, PABLITO ENCERRANDO")
fimalgoritmo