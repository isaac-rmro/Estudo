algoritmo "Ex067"
//67) Fa�a um programa usando a estrutura �para� que leia um n�mero inteiro
//positivo e mostre na tela uma contagem de 0 at� o valor digitado:
//Ex: Digite um valor: 9
//Contagem: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, FIM!
var
  Num: Inteiro //Numero digitado
  Cont: Inteiro //Contador
inicio
  Escreva("Digite um numero para contagem: ")
    Leia(Num) //Entrada do numero

  Para Cont de 0 ate Num faca //Contador come�a com 0 ate o numero digitado
    Escreva(Cont) //A cada repeti��o mostre o contador
  FimPara
fimalgoritmo