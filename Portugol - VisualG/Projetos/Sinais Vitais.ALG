algoritmo "Sinais Vitais"
var
  Usuario: Caractere
  Idade: Inteiro
  Idade18: Logico
  Opcao: Inteiro
  
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

Funcao VerIdade(id: Inteiro): Logico
var
  ver: Logico
inicio
  Se(id < 18)entao
    ver <- Falso
  senao
    ver <- Verdadeiro
  FimSe
  Retorne ver
FimFuncao

Procedimento Opcoes()
inicio
  EscrevaL("MENU DE OPÇÕES")
  EscrevaL()
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
  Opcoes()
  Escolha Opcao
    Caso 1

    Caso 2
    Caso 3
    Caso 4
    Caso 5
    Caso 6
  FimEscolha
fimalgoritmo