algoritmo "Ex026"
//26) Escreva um algoritmo que leia dois n�meros inteiros e compare-os,
//mostrando na tela uma das mensagens abaixo:
//- O primeiro valor � o maior
//- O segundo valor � o maior
//- N�o existe valor maior, os dois s�o iguais
var
  N1,N2: Inteiro
inicio
  //Filura
  Escreval("---------------")
  Escreval("COMPARA COMPARA")
  Escreval("---------------")

  //Entrada de dados
  Escreva("Digite o 1� numero: ")
  Leia(N1)
  Escreva("Digite o 2� numero: ")
  Leia(N2)

  Se (N1 = N2)entao //Compara se os valores sao iguais logo no come�o
    Escreva("N�o existe valor maior, os dois s�o iguais")
  senao
    Se (N1 > N2)entao //Compara se o 1� num digito � maior que o 2�
      Escreva(N1," � o maior numero")
    senao //Se for falso a cond de cima ent�o logicamente o 2� � o maior
      Escreva(N2," � o maior numero")
    FimSe
  FimSe
  
fimalgoritmo