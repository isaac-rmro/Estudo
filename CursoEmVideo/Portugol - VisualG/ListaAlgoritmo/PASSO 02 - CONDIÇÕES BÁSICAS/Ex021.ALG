algoritmo "Ex021"
//21) Fa�a um algoritmo que leia um determinado ano
//e mostre se ele � ou n�o BISSEXTO.
var
  AnoAtual: Inteiro //Var para dado
inicio
  //Comandos de entrada
  Escreva("Ano atual: ")
  Leia(AnoAtual)
  
  //formula do ano bissexto
  Se (AnoAtual%400 = 0) ou ((AnoAtual%4 = 0) e (AnoAtual%100 <> 0))entao
  //1� tst: se o resto da div por 400 for 0
  //2� tst: se for divisivel por 4 mas nao for divisivel por 100
    Escreva(AnoAtual," � ano bissexto")
  senao
    Escreva(AnoAtual," n�o � bissexto")
  FimSe
  
fimalgoritmo