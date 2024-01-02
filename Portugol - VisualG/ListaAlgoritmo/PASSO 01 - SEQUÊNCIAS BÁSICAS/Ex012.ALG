algoritmo "Ex012"
//12) Crie um programa que leia o preço de um produto, calcule e mostre o seu
//PREÇO PROMOCIONAL, com 5% de desconto.
var
  Preco,Desconto,PrecoDesconto: Real
inicio
  Escreva("Qual o preço do produto? R$")
  Leia(Preco)
  
  Desconto <- (Preco*5)/100 //calculo da porcentagem do desconto
  PrecoDesconto <- Preco - Desconto //retirada do valor do preço
  
  Escreval("Parabens o valor do desconto é de: R$",Desconto)
  Escreva("E o preço do produto atual é de: R$",PrecoDesconto)
fimalgoritmo