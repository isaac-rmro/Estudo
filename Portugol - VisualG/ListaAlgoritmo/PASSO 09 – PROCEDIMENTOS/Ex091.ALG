algoritmo "Ex091"
//91) Desenvolva um algoritmo que leia dois valores pelo teclado e passe esses
//valores para um procedimento Maior() que vai verificar qual deles é o maior e
//mostrá-lo na tela. Caso os dois valores sejam iguais, mostrar uma mensagem
//informando essa característica.
var
  N1,N2: Inteiro //Var para guardar valor digitado pelo teclado

Procedimento NumMaior(A,B: Inteiro) //Procedimento com 2 parametros por valor
inicio
  Se (A = B)entao //Se os dois numeros digitados forem iguais
    Escreva("Os numeros são iguais") //Imprima
  senao
    Se (A > B)entao //Caso contrario compareos
      Escreva("O numero ", A, " é o maior")
    senao //E o maior exiba junto com a mensagem
      Escreva("O numero ", B, " é o maior")
    FimSe
  FimSe
FimProcedimento //Fim do procedimento, volta para o inicio principal

inicio
  //Leitura de dados
  Escreva("Digite o 1°num: ")
    Leia(N1)
  Escreva("Digite o 2°num: ")
    Leia(N2)
    
  NumMaior(N1,N2) //Inicializa o procedimento
fimalgoritmo