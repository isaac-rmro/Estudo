algoritmo "Ex011"
//11) Desenvolva uma l�gica que leia os valores de A, B e C
//de uma equa��o do segundo grau e mostre o valor de Delta.

var
  A,B,C: Inteiro
  Delta: Real
inicio
  //comandos de entrada
  Escreva("Digite o valor de A: ")
  Leia(A)
  Escreva("Digite o valor de B: ")
  Leia(B)
  Escreva("Digite o valor de C: ")
  Leia(C)
  
  //formula de bh�skara
  Delta <- (B)^2 - 4*a*c
  
  //saida de dados organizados
  Escreva("O valor de delta � de: ",Delta)
  
fimalgoritmo