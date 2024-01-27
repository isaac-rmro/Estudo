algoritmo "Ex001"
//1. Escreva um programa que leia dois números inteiros e exiba o maior
//deles
var
  I: Inteiro //Var contador
  n: vetor[1..2] de Inteiro //Var para guardar os numeros digitados
  Maior: Inteiro //Var para guardar o maior valor digitado
  Igual: Logico //Var de verificacao se os numeros sao iguais
  
Funcao VerMaior (num1,num2: Inteiro): Inteiro
inicio
  Se (num1 > num2)entao //Se o 1° for maior que o 2°
    Retorne num1 //Retorna o 1° num
  senao //Se o 2° for maior que 1°
    Retorne num2 //Retorna o 2° num
  FimSe
FimFuncao

Funcao VerNumIgual(num1,num2: Inteiro): Logico
inicio
  Se (num1 = num2)entao //Se forem iguais irá retornar verdadeiro
    Retorne Verdadeiro
  senao
    Retorne Falso //Se não for irá retornar falso
  FimSe
FimFuncao

inicio
  Para I de 1 ate 2 faca //Faz 2 repetições
    Escreva("Digite o ", I, "° num: ") //Exibi o contador a cada repetição
      Leia(n[I]) //Le o numero na posição do vetor (1 ou 2)
  FimPara
  
  Igual <- VerNumIgual(n[1],n[2]) //Funcao verifica se os numeros sao iguais
  
  Se (Igual = Verdadeiro)entao //Se a verificação for verdadeira
    Escreva("NUMERO IGUAIS :0") //Exibe mensagem
  senao //Se for falsa
    Maior <- VerMaior(n[1],n[2]) //Funcao para descobrir qual o maior
    Escreva("NUMERO MAIOR: ", Maior)
  FimSe
fimalgoritmo