algoritmo "Ex099"
//99) Fa�a um programa que possua uma fun��o chamada Potencia(), que vai
//receber dois par�metros num�ricos (base e expoente) e vai calcular o
//resultado da exponencia��o.
//Ex: Potencia(5,2) vai calcular 52 = 25
var
  Base, Expoente: Inteiro //Var para Entrada de dados
  P: Real //Var para guarda de resultado
Funcao Potencia(A,B: Inteiro): Real //Funcao entra Inteiro sai Real
inicio
  Retorne A^B //Retorne o resultado da potencia
FimFuncao

inicio
  //Entrada de dados
  Escreva("Base: ")
    Leia(Base)
  Escreva("Expoente: ")
    Leia(Expoente)
    
  P <- Potencia(Base,Expoente) //Chama funcao
  Escreva("Resultado: ", P) //Imprimi o resultado
fimalgoritmo