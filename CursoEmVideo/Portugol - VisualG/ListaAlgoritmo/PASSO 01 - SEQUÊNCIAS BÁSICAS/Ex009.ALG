algoritmo "Ex009"
//9) Faça um algoritmo que leia quanto dinheiro uma pessoa tem na carteira
//(em R$) e mostre quantos dólares ela pode comprar.
//Considere US$1,00 = R$3,45.
var
  Reais,Dollar: Real
inicio
  Escreva("Quantos reais você possui na carteira? R$")
  Leia(Reais)

  Dollar <- Reais/3.45
  
  Escreva("Você possui em dolares exatos: US",Dollar)
fimalgoritmo