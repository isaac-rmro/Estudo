algoritmo "Ex005"
//5. Desenvolva um programa que gere uma tabela de multiplicação
//para um numero fornecido pelo usuario. A tabela deve incluir multiplicadores
//de 1 a 10.
var
  i: Inteiro //Contador
  Num: Inteiro //Numero a ser digitado
  M: Inteiro //Multiplicação a cada repetição
inicio
  Escreva("Digite um numero para tabela: ") //Solicita um numero
    Leia(Num)
  Para i de 1 ate 10 faca //Faz a tabuada de 1 ate 10
    M <- Num * i //A cada repeticao irá fazer o numero X o contador atual
    EscrevaL(Num, " x ", i, " = ", M) //Exibe a tabuada
  FimPara
fimalgoritmo