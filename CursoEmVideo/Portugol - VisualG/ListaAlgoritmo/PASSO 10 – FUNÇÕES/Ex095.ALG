algoritmo "Ex095"
//95) Refa�a o exerc�cio 90, s� que agora em forma de fun��o Somador(), que vai
//receber dois par�metros e vai retornar o resultado da soma entre eles para o
//programa principal.
var
  N1, N2: Inteiro //Var para guarda de entrada pelo teclado
  Resp: Inteiro //Var para guardar retorno da fun��o
Funcao Soma(A,B: Inteiro): Inteiro //Valor recebido por A e B, saida Inteiro
inicio
  Retorne A + B //Retorna a soma
FimFuncao
inicio
  //Entrada de dados
  Escreva("Digite o 1�num: ")
    Leia(N1)
  Escreva("Digite o 2�num: ")
    Leia(N2)
  Resp <- Soma(N1,N2) //Resultado � guardado em Resp
  Escreva("Resultado: ",Resp) //Imprima mensagem com resultado
fimalgoritmo