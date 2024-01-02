algoritmo "Ex043"
//43) Desenvolva um algoritmo que mostre uma contagem regressiva de 30 até 1,
//marcando os números que forem divisíveis por 4, exatamente como mostrado
//abaixo: 30 29 [28] 27 26 25 [24] 23 22 21 [20] 19 18 17 [16]...
var
  C: Inteiro
inicio
  C <- 30 //Contador começa com 30
  Enquanto (C >= 1)faca //Enquanto 30 for maior que 1
    Se (C%4 = 0)entao  //Se 30/4 der resto 0 ou seja ser divisel
      Escreva("[",C," ]") //Marque o numero
    senao //Se nao for
      Escreva(C) //Apenas o exiba
    FimSe
    C <- C - 1 //Contador ira retirar -1 de seu valor e continuar o loop
  FimEnquanto
  
fimalgoritmo