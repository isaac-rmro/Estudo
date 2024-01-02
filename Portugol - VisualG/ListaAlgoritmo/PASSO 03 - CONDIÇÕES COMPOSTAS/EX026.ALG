algoritmo "Ex026"
//26) Escreva um algoritmo que leia dois números inteiros e compare-os,
//mostrando na tela uma das mensagens abaixo:
//- O primeiro valor é o maior
//- O segundo valor é o maior
//- Não existe valor maior, os dois são iguais
var
  N1,N2: Inteiro
inicio
  //Filura
  Escreval("---------------")
  Escreval("COMPARA COMPARA")
  Escreval("---------------")

  //Entrada de dados
  Escreva("Digite o 1º numero: ")
  Leia(N1)
  Escreva("Digite o 2º numero: ")
  Leia(N2)

  Se (N1 = N2)entao //Compara se os valores sao iguais logo no começo
    Escreva("Não existe valor maior, os dois são iguais")
  senao
    Se (N1 > N2)entao //Compara se o 1º num digito é maior que o 2º
      Escreva(N1," é o maior numero")
    senao //Se for falso a cond de cima então logicamente o 2º é o maior
      Escreva(N2," é o maior numero")
    FimSe
  FimSe
  
fimalgoritmo