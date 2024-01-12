algoritmo "Ex090"
//90) Desenvolva um algoritmo que leia dois valores pelo teclado e passe esses
//valores para um procedimento Somador() que vai calcular e mostrar a soma
//entre eles.
var
  N1, N2: Inteiro //Var para guarda de entrada pelo teclado
  
Procedimento Soma(A,B: Inteiro) //Valor recebido por A e B
Inicio
  EscrevaL("A soma entre ", A, " e ", B, " = ", A+B) //Imprima A + B
FimProcedimento

inicio
  //Entrada de dados
  Escreva("Digite o 1°num: ")
    Leia(N1)
  Escreva("Digite o 2°num: ")
    Leia(N2)
  Soma(N1,N2) //Dados passados como parametros tipo: valor
fimalgoritmo