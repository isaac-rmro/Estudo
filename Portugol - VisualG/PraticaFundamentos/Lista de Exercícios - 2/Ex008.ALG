algoritmo "Ex008"
//8. Escreva um programa que calcule o máximo divisor comum (MDC) de dois
//números inteiros fornecidos pelo usuário usando o algoritmo Euclides.
var
  Num1, Num2: Inteiro //Numeros a serem lidos
  MDC: Real //Var para funcao
  
Funcao VerMDC(a,b: Inteiro): Real //Processa o MDC
var
  aux: Inteiro //Auxilia na troca
inicio
  Repita
    aux <- a //Auxiliar guarda o valor de a
    a <- b //a recebe o valor de b
    b <- aux % b //e b recebe o valor de a resto da divisao por b
  Ate(b = 0) //repete ate o resto da divisao de a e b for zero
  Retorne a //Retorna o resultado do mdc
FimFuncao

inicio
  //Solicita a e b
  Escreva("Digite o valor de a: ")
    Leia(Num1)
  Escreva("Digite o valor de b: ")
    Leia(Num2)
  MDC <- VerMDC(Num1,Num2) //Atribui a variavel a resposta da funcao
  
  Escreva("MDC( ", Num1, " ,", Num2, " ): ", MDC) //Saida de dados
fimalgoritmo