algoritmo "Ex020"
//20) Desenvolva um programa que leia um n�mero inteiro
//e mostre se ele � PAR ou �MPAR.
var
  N: Inteiro //Var entrada
inicio
  Escreva("Digite um numero: ")
  Leia(N) //Var para entrada de dado
  
  //Testes
  Se (N%2 = 0)entao //Se o resto da div por 2 = 0 isso torna o N par
    Escreva("O numero ",N," � par")
  senao //Se o resto dar 1, torna N impar e executa o bloc abaixo
    Escreva("O numero ",N," � impar")
  FimSe
fimalgoritmo