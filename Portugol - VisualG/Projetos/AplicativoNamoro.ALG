algoritmo "AplicativoNamoro"
var
  Enter: Real
  Nome: Caractere
  Data, Chance: Inteiro
  I: Inteiro
  Resp, R: Caractere
  
Procedimento VerNome(N: Caractere)
inicio
  Se (N = "Layane") ou (N = "layane")entao
    EscrevaL("Bem vinda amorzinho :) ")
  senao
    Escreva("Este app não foi feito para você")
    FimAlgoritmo
  FimSe
FimProcedimento

Procedimento VerData(D: Inteiro)
inicio
  Escolha D
    Caso 1
      EscrevaL("Chegou perto impostora >:|")
    Caso 2
      EscrevaL("Passou longe :D")
    Caso 3
      EscrevaL("Dia inesquecivel :0")
    Caso 4
      EscrevaL("Já mandei sair daqui impostora >:|")
    OutroCaso
      EscrevaL("Escolha uma opção válida")
  FimEscolha
  EscrevaL()
  Leia(Enter)
FimProcedimento

Procedimento Trola()
inicio
  EscrevaL("Bom já que é você mesmo, irei lhe dizer algo...")
  EscrevaL("Nunca fui um romeu mas você sempre foi minha julieta rs")
  EscrevaL("O que eu quero dizer e que eu...")
  EscrevaL("Sabe? eu sempre e .....")
  EscrevaL("to brincado tem mais um TESTE HAHAHAHA")
  Leia(Enter)
FimProcedimento

Procedimento Resposta(R: Caractere)
inicio
  Se (R = "Sim") ou (R = "sim")entao
    EscrevaL("Agora sim, posso me declarar")
      Leia(Enter)
  senao
    Se (R = "Não") ou (R = "não") entao
      EscrevaL()
      EscrevaL("TE ODEIO")
      EscrevaL("ALEXA ENCERRAR PROGRAMA")
      EscrevaL("- CLARO CHEFE ISAAC ENCERRANDO O PROGRAMA.....")
      EscrevaL("---------------------------------------------------------")
      EscrevaL()
      FimAlgoritmo
    senao
      EscrevaL("ERRO VOLTE AO INICIO DO PROGRAMA, RESPOSTA INVALIDA")
      FimAlgoritmo
    FimSe
  FimSe
FimProcedimento

inicio
  EscrevaL("Olá cara usuaria, bem vinda ao app")
  Escreva("Para começar, digite seu nome: ")
    Leia(Nome)
    
  LimpaTela
  
  VerNome(Nome)

  Data <- 0
  I <- 1
  EscrevaL("Para começar vamos lembrar a data que conhecemos")
    Enquanto (Data <> 3)faca
      EscrevaL("Qual foi mesmo? ")
      EscrevaL("[1] 31/10/2020")
      EscrevaL("[2] 21/11/2018")
      EscrevaL("[3] 31/10/2019")
      EscrevaL("[4] 30/12/2019")
        Leia(Data)
      Se (Data <> 3)entao
        Chance <- Chance + 1
      FimSe
      VerData(Data)
      Se (I%2 = 0)entao
        Leia(Enter)
        LimpaTela
      FimSe
      
      Se (Chance = 3)entao
        Escreva("Acabou suas chances, você não é quem diz que é")
        FimAlgoritmo
      FimSe
      
      I <- I + 1
    FimEnquanto

  LimpaTela

  Trola()

  LimpaTela
  
  EscrevaL("Digite a resposta correta para está pergunta: ")
  EscrevaL("Se eu fosse uma minhoca você me amaria? [Sim ou Não]")
    Leia(Resp)
  Resposta(Resp)
  
  LimpaTela
  
  EscrevaL("Digitar apenas linhas de textos e codigos é uma coisa rasa")
  EscrevaL("não se chega a borda da profundidade do que sinto por você")
  EscrevaL("obrigado por ser quem é, eu te amo e sou apaixonado por você")
  EscrevaL("por esse motivo")
  EscrevaL()
  Escreva("entregue o seu aplicativo na data 16/01/2024")
  EscrevaL()
  Escreva("ENCERRANDO ATÉ A PROXIMA ;)")
fimalgoritmo