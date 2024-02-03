algoritmo "Ex001"
//1. Escre um programa que solicite ao usuario um número inteiro positivo e,
//em seguida, exiba os números pares de 2 até o numero inserido.
var
  I: Inteiro //Var contador
  Num: Inteiro //Var para guarda de numero
  
inicio
  Repita //Repete
    Escreva("DIGITE UM NUMERO INTEIRO E POSITIVO: ") //Solicita o numero
      Leia(Num)
    Se (Num < 0)entao //Se o numero for menor que 0
      LimpaTela //Limpa a tela
    FimSe
  Ate(Num >= 0) //Ate o numero for maior que 0
  
  EscrevaL()
  
  //Conta de 0 ate o numero de 2 em 2
  Para I de 0 ate Num passo 2 faca
    Escreva(I)
  FimPara
fimalgoritmo