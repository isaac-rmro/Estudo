algoritmo "Correios"
var
  User: Caractere
  Qtd: Inteiro
  I: Inteiro
  Tip: vetor[1..5] de Caractere
  
Procedimento Menu()
inicio
  EscrevaL("======================================")
  EscrevaL("||           ||   ||                ||")
  EscrevaL("||  CORREIO  || & ||  EMPACOTADO's  ||")
  EscrevaL("||           ||   ||                ||")
  EscrevaL("======================================")
  EscrevaL()

  Escreva("USUARIO: ")
    Leia(User)
FimProcedimento

Procedimento Cadastro()
inicio
  EscrevaL("BEM VINDO(A) ",User)
  Repita
    Escreva("QUANTAS ENCOMENDAS DESEJA CADASTRAR(MAX[5]): ")
      Leia(Qtd)
    Se (Qtd < 1) ou (Qtd > 5)entao
      LimpaTela
      EscrevaL("SENHOR(A) ", User, " DIGITE UM VALOR VÁLIDO")
    FimSe
  Ate(Qtd > 0) e (Qtd <= 5)
FimProcedimento
  
Procedimento TipoPacote()
inicio
  Para I de 1 ate Qtd faca
    Repita
      LimpaTela
      EscrevaL("Digite o tipo da encomenda [", I, " ]")
      EscrevaL("[1] PACOTE")
      EscrevaL("[2] ENVELOPE")
      EscrevaL("[3] ROLO")
        Leia(Tip[I])
    Ate(Tip[I] > 0) e (Tip[I] < 4)
  FimPara
FimProcedimento

Funcao VerTip(t: Caractere): Caractere
var
  msg: Caractere
inicio
  Se (t = "1")entao
    msg <- "PACOTE"
  senao
    Se (t = "2")entao
      msg <- "ENVELOPE"
    senao
      Se (t = "3")entao
        msg <- "ROLO"
      FimSe
    FimSe
  FimSe
  Retorne msg
FimFuncao
  
inicio
  Menu()
  LimpaTela
  Cadastro()
  TipoPacote()
  Para I de 1 ate 5 faca
    Se (Tip[I] <> "")entao
      Tip[I] <- VerTip(Tip[I])
    FimSe
  FimPara


fimalgoritmo