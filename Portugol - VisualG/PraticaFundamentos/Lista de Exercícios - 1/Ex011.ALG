algoritmo "Ex011"
//11. Desenvolva um programa que leia um número e informe se ele é um
//multiplo de 3 e de 5 ao mesmo tempo.
var
  Num: Inteiro //Var numero digitado
  Multiplo: Logico //Var para verificacao de multiplos
  Msg: Caractere //Var para mensagem apos verificacao
  
Funcao VerMulti(n: Inteiro): Logico //Verifica se é multiplo
var
  v: Logico //Var validadora
inicio
  Se (n%3 = 0) e (n%5 = 0)entao //Se for divisivel por 3 e 5 ao mesmo tempo
    v <- Verdadeiro //É multiplo
  senao //Se não for os dois ao mesmo tempo
    v <- Falso //Não é multiplo
  FimSe
  Retorne v //Retorna validação
FimFuncao
  
Funcao VerMsg(m: Logico): Caractere //Funcao para exibição de mensagem
var
  msg: Caractere //Var para mensagem
inicio
  Se (m = Verdadeiro)entao //Se a validação for verdadeira
    msg <- "DIVISIVEL POR 3 E 5" //Exibe
  senao //Se for falsa
    msg <- "NÃO DIVISIVEL POR 3 E 5" //Exibe
  FimSe
  Retorne msg
FimFuncao
  
inicio
  Escreva("DIGITE UM NÚMERO: ") //Solicita o numero
    Leia(Num)
    
  Multiplo <- VerMulti(Num) //Funcao para verificar se é multiplo
  Msg <- VerMsg(Multiplo) //Funcao para mensagem
  
  //Saida de dados
  Escreva(Msg)
fimalgoritmo