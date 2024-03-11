algoritmo "Ex040"
//40) Crie um aplicativo que mostre na tela a seguinte contagem:
//0 3 6 9 12 15 18 Acabou!
var
  C: Inteiro
inicio
  C <- 0 //Contador inicia com 0
  Enquanto (C <= 18)faca //Enquanto contador que tem 0 for menor que 18
    Escreva(C) //Escreva contador
    C <- C + 3 //Apos adicione +3
    //Looping agora com C valendo 3 e etc
  FimEnquanto
  Escreva(" Acabou!")
fimalgoritmo