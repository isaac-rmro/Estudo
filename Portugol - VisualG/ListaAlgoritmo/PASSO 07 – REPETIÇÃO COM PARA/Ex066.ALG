algoritmo "Ex066"
//66) Escreva um programa que leia um número qualquer e mostre a tabuada desse
//número, usando a estrutura “para”.
//Ex: Digite um valor: 5
//5 x 1 = 5
//5 x 2 = 10
//5 x 3 = 15 ...
var
  Cont: Inteiro //Contador
  Num,Tab: Inteiro //Numero e var para tabuada
inicio
  Escreva("Digite um numero para tabuada: ") //Entrada do numero a ser tabuado
    Leia(Num)
  Para Cont de 1 ate 10 faca //Mostra a tabuada de 1 ate 10
    Tab <- Num * Cont //Tabuada = Numero Digitado vezes o contador de 1 ate 10
    EscrevaL(Num, " x ", Cont, " = ",Tab) //Exibição do resultado
  FimPara
fimalgoritmo