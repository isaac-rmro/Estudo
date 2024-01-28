algoritmo "Correios"
var
  User: Caractere
  Cpf: Inteiro
  Qtd: Inteiro
  I: Inteiro
  
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
  Escreva("CPF: ")
    Leia(Cpf)
FimProcedimento
  
inicio
  Menu()
  LimpaTela
  EscrevaL("BEM VINDO(A) ",User)
  Escreva("QUANTAS ENCOMENDAS DESEJA CADASTRAR: ")
    Leia(Qtd)
  Para I de 1 ate Qtd faca
    EscrevaL("Digite o tipo da encomenda: ")
    EscrevaL("[1] ")
    EscrevaL("[]")
    EscrevaL("[]")
  FimPara
fimalgoritmo