algoritmo "Ex098"
//98) Crie um programa que tenha uma função SuperSomador(), que vai receber
//dois números como parâmetro e depois vai retornar a soma de todos os valores
//no intervalo entre os valores recebidos.
//Ex:
//SuperSomador(1, 6) vai somar 1 + 2 + 3 + 4 + 5 + 6 e vai retornar 21
//SuperSomador(15, 19) vai somar 15 + 16 + 17 + 18 + 19 e vai retornar 85
var
  //Var usadas
  N1,N2: Inteiro
  Soma: Inteiro
  
Funcao SuperSomador(A,B: Inteiro): Inteiro //Funcao para soma
var
  I: Inteiro //Contador
  S: Inteiro //Var para guardar a soma a cada repetição
inicio
  Para I de A ate B faca //De I valendo A ate B
    S <- S + I //Soma os resultados
  FimPara
  Retorne S //Retornar apos o laço ser desfeito
FimFuncao

inicio
  //Entrada de dados
  Escreva("Digite 1°num: ")
    Leia(N1)
  Escreva("Digite 2°num: ")
    Leia(N2)
  Soma <- SuperSomador(N1,N2) //Chama Função Com parametro N1 e N2
  Escreva(Soma) //Imprimi o resultado
fimalgoritmo