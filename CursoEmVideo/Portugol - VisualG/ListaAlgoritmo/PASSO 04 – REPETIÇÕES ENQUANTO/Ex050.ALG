algoritmo "Ex050"
//50) Desenvolva um programa que fa�a o sorteio de 20 n�meros entre 0 e 10
//e mostre na tela:
//a) Quais foram os n�meros sorteados
//b) Quantos n�meros est�o acima de 5
//c) Quantos n�meros s�o divis�veis por 3
var
  C: Inteiro //Var contadora
  Random: Inteiro //Var para numeros aleatorios
  Maior5,Divi3: Inteiro //Var para acumula��o de verifica��o
inicio
  C <- 1 //Inicio contador
  EscrevaL("Numeros Sorteados") //Titulo
  Enquanto (C <= 20)faca //Enquanto 1 for menor que 20
    Random <- Randi(10) + 1 //Sorteia numero entre 1 a 10
    Escreva(Random) //Exiba eles
    
    Se (Random > 5)entao //Se o num sorteado for maior que 5
      Maior5 <- Maior5 + 1 //Var recebe + 1
    FimSe
    
    Se (Random%3 = 0)entao //Se o num sorteado for divisivel por 3
      Divi3 <- Divi3 + 1 //Var recebe + 1
    FimSe
    
    C <- C + 1 //Soma +1 ao contador ate atingir 20
  FimEnquanto
  
  EscrevaL(" ")

  //Saida de dados
  EscrevaL("NUMEROS ACIMA DE 5: ",Maior5)
  EscrevaL("NUMEROS DIVISIVEIS POR 3: ",Divi3)
fimalgoritmo