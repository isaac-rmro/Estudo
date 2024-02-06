algoritmo "Ex003"
//3. Faça um programa que leia um numero inteiro positivo e calcule o fatorial
//de um número é dado pela fórmula = n! n x (n-1..2..3).
var
  Num: Inteiro //Entrada de numero
  F: Inteiro //Var para guarda de resultado da funcao
  
Funcao Fatorial(n: Inteiro): Inteiro //Funcao para processar o fatorial
var
  i, f: Inteiro //Indice e fatorial
inicio
  f <- n //Var f recebe o conteudo de n
  Para i de 1 ate (n-1) faca //Para indice de 1 ate o (numero - 1)
    f <- f * i //Multiplique f que esta valendo n pelo indice atual
  FimPara
  Retorne f //Retorne depois de obter o produto
FimFuncao

inicio
  Repita
    Escreva("Digite um número: ") //Solicita o numero
      Leia(Num)
    Se (Num < 0)entao //Caso for invalido
      LimpaTela
      EscrevaL("DIGITE UM NUMERO INTEIRO POSITIVO !!!") //Exibe na tela
    FimSe
  Ate(Num > 0) //Valida a informação

  F <- Fatorial(Num) //Atribuicao da funcao a variavel
  
  Escreva("O fatorial de ", Num, " é: ", F)
fimalgoritmo