algoritmo "Ex042"
//42) Fa�a um algoritmo que pergunte ao usu�rio um n�mero inteiro e positivo
//qualquer e mostre uma contagem at� esse valor:
//Ex: Digite um valor: 35
//Contagem: 1 2 3 4 5 6 7 ... 33 34 35 Acabou!
var
  C,N: Inteiro
inicio
  C <- 1 //C inicia com 1
  Escreval("Digite um valor: ")
    Leia(N)
  Enquanto (C <= N)faca  //Enquanto C valendo 1 for menor que N escolha do user
    Escreva(C) //Escreva C
    C <- C + 1 //E adicione +1 a C ate alcan�ar N
  FimEnquanto
  
  Escreva(" Acabou!")
fimalgoritmo