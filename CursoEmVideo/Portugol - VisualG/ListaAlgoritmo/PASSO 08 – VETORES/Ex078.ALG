algoritmo "Ex078"
//78) Escreva um programa que leia 15 n�meros e guarde-os em um vetor.
//No final, mostre o vetor inteiro na tela e em seguida mostre em que
//posi��es foram digitados valores que s�o m�ltiplos de 10.
var
  N: vetor[1..15] de Inteiro //Vetor de 15 posi��es
  I: Inteiro //Contador
inicio
  EscrevaL("Numeros entre [ ] s�o multiplos de 10")
  
  Para I de 1 ate 15 faca //Preenchimento dos vetores
    Escreva("Digite um numero: ")
      Leia(N[I])
    Se (N[I]%10= 0)entao //Se for multiplo de 10
      Escreva("[", N[I], " ] ") //Mostre o numero entre [ ]
    senao
      Escreva(N[I]) //Se nao for apenas o exiba
    FimSe
    
    EscrevaL(" ")
    
  FimPara
fimalgoritmo