algoritmo "Ex009"
//9) Fa�a um algoritmo que leia quanto dinheiro uma pessoa tem na carteira
//(em R$) e mostre quantos d�lares ela pode comprar.
//Considere US$1,00 = R$3,45.
var
  Reais,Dollar: Real
inicio
  Escreva("Quantos reais voc� possui na carteira? R$")
  Leia(Reais)

  Dollar <- Reais/3.45
  
  Escreva("Voc� possui em dolares exatos: US",Dollar)
fimalgoritmo