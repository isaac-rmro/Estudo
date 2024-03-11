algoritmo "Ex049"
//49) Crie um programa que leia 6 números inteiros e no final
//mostre quantos deles são pares e quantos são ímpares.
var
  C: Inteiro //Var contadora
  N: Inteiro //Var para leitura de dados
  Par,Impar: Inteiro //Var para acumular dados
inicio
  C <- 1 //Inicio do contador com 1
  Enquanto (C <= 6)faca //Enquanto 1 for menor que 6
    Escreva("Digite o ",C,"º valor: ") //Peça um valor
      Leia(N) //Guardeo
    Se (N%2 = 0)entao //Se o resultado por 2 nao obter sobra
      Par <- Par + 1 //Adicione +1 em par
    senao
      Impar <- Impar + 1 //Se obter sobra adicione + 1 em impar
    FimSe
  C <- C + 1 //C Recebe +1 e volta ao loop ate atingir 6
  FimEnquanto
  
  EscrevaL(" ")
  
  //Saida de resultados
  EscrevaL("NUMEROS PARES: ", Par)
  EscrevaL("NUMEROS IMPARES", Impar)
fimalgoritmo