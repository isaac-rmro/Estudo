algoritmo "Ex012"
//12) Crie um programa que leia o pre�o de um produto, calcule e mostre o seu
//PRE�O PROMOCIONAL, com 5% de desconto.
var
  Preco,Desconto,PrecoDesconto: Real
inicio
  Escreva("Qual o pre�o do produto? R$")
  Leia(Preco)
  
  Desconto <- (Preco*5)/100 //calculo da porcentagem do desconto
  PrecoDesconto <- Preco - Desconto //retirada do valor do pre�o
  
  Escreval("Parabens o valor do desconto � de: R$",Desconto)
  Escreva("E o pre�o do produto atual � de: R$",PrecoDesconto)
fimalgoritmo