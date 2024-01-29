algoritmo "Ex007"
//7. Desenvolva um programa que leia o salário de um funcionário e calcule
//o novo salário com um aumento de 10% se o salário for inferior a R$1500.00
//, ou de 5% se for igual ou superior a $1500.00

Funcao VerAumento(s: Real): Real //Verifica o aumento do salario
var
  aumento: Real //variavel de escopo local para guarda de aumento
inicio
  Se (s < 1500)entao //Se o salario for menor que 1500
    aumento <- s + (s * 10/100) //Calcula aumento de 10%
  senao //Se for maior ou igual a 1500
    aumento <- s + (s * 5/100) //Calcula aumento de 5%
  FimSe
  Retorne aumento //Retorna o resultado da verificacao
FimFuncao

Funcao VerMsg(s: Real): Caractere //Mensagem informativa de aumento
var
  msg: Caractere //Var local
inicio
  Se (s < 1500)entao //Se o salario for menor que 1500
    msg <- "10%" //Entao tera aumentando ( 10% )
  senao //Se for maior que 1500
    msg <- "5%" //Entao tera aumentando ( 10% )
  FimSe
  Retorne msg //Retorna mensagem para exibicao do aumento
FimFuncao

var
  Nome: Caractere //Var para nome
  Sal, NvSal: Real //Var para guarda de salario
  Msg: Caractere //Var para mensagem
inicio
  Escreva("USUARIO: ") //Solicita o nome
    Leia(Nome)
  Escreva("DIGITE O SALÁRIO: R$") //Solicita o salario
    Leia(Sal)
    
  NvSal <- VerAumento(Sal) //Funcao para verificar o aumento
  Msg <- VerMsg(Sal) //Funcao para verificar o quanto aumentou
  
  LimpaTela

  //Saida de dados
  EscrevaL("USUARIO: ", Nome)
  EscrevaL("SALARIO ANTIGO: R$", Sal)
  EscrevaL("SALARIO ATUAL: R$",NvSal)
  Escreva("AUMENTO: ", Msg)
fimalgoritmo