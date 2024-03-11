algoritmo "Ex016"
//16) [DESAFIO] Escreva um programa para calcular a redução do
//tempo de vida de um fumante. Pergunte a quantidade de cigarros
//fumados por dias e quantos anos ele já fumou.
//Considere que um fumante perde 10 min de vida a cada cigarro.
//Calcule quantos dias de vida um fumante perderá e exiba o total em dias.
var
  Qtd,Ano: Inteiro
  MinFumados,DiasPerdidos: Real
inicio
  Escreva("Qual a quantidade de cigarros fumados p/dia: ")
  Leia(Qtd)
  Escreva("Quantos anos voce fuma?")
  Leia(Ano)

  MinFumados <- Qtd * Ano * 365 * 10
  DiasPerdidos <- MinFumados / 1440
  
  Escreva(DiasPerdidos)
fimalgoritmo

