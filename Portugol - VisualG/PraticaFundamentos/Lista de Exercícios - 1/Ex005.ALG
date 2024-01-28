algoritmo "Ex005"
//5. Crie um programa que leia um numero e informe se ele é positivo, negativo
//ou igual a zero.
var
  Num: Inteiro  //Var para guarda de numero
  Class: Caractere //Var para guarda de resultado da funcao

Funcao VerNum(n: Inteiro): Caractere //Funcao para verificar o numero digitado
var
  msg: Caractere //Var mensagem de escopo local (usada para retornar uma mensagem)
inicio
  Se (n < 0)entao //Um numero negativo está abaixo de zero
    msg <- "NUMERO NEGATIVO" //Mensagem
  senao
    Se (n = 0)entao //Se o numero for igual a 0
      msg <- "NUMERO IGUAL A ZERO" //Mensagem
    senao //A unica alternativa que sobra é o numero ser maior que zero
      msg <- "NUMERO POSITIVO" //Mensagem
    FimSe
  FimSe
  Retorne msg //Retorna o resultado da verificacao
FimFuncao
  
inicio
  Escreva("DIGITE UM NUMERO: ") //Solicita um numero
    Leia(Num) //Guarda o numero na var Num
  Class <- VerNum(Num) //Verificacao por funcao
  
  LimpaTela //LimpaTela ao terminar a verificacao
  Escreva(Num, ": ", Class) //Mostra o numero e sua classificacao
fimalgoritmo