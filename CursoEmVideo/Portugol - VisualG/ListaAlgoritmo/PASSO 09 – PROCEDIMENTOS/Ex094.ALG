algoritmo "Ex094"
//94) [DESAFIO] Desenvolva um aplicativo que tenha um procedimento chamado
//Fibonacci() que recebe um �nico valor inteiro como par�metro, indicando
//quantos termos da sequ�ncia ser�o mostrados na tela. O seu procedimento deve
//receber esse valor e mostrar a quantidade de elementos solicitados.
//Obs: Use os exerc�cios 70 e 75 para te ajudar na solu��o
//Ex:
//Fibonacci(5) vai gerar 1 >> 1 >> 2 >> 3 >> 5 >> FIM
//Fibonacci(9) vai gerar 1 >> 1 >> 2 >> 3 >> 5 >> 8 >> 13 >> 21 >> 34 >> FIM
var
  T: Inteiro //Quantidade de Termos
  
Procedimento Fibonacci(P: Inteiro) //P recebe o valor de termo
var
  A,B,C: Inteiro //A,B,C Para a sequencia de fibonacci
  Cont: Inteiro //Contador
inicio
  A <- -1
  B <- 1
  Para Cont de 1 ate P faca //Para o 1� termo ate o que o user pediu
    C <- A + B //C inicia recebendo a soma de a+b
    Escreva(C) //Imprime o valor de C
    //E troca para o valor seguinte descartando o valor anterior (A)
    A <- B
    B <- C
  FimPara
FimProcedimento

inicio
  //Entrada de dados
  EscrevaL("Quantos termos deseja mostrar: ")
    Leia(T)
  Fibonacci(T) //Chama o procedimento com o valor de Termo
fimalgoritmo