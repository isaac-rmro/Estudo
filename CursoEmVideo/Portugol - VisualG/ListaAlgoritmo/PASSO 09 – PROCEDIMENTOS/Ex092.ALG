algoritmo "Ex092"
//92) Crie uma l�gica que leia um n�mero inteiro e passe para um procedimento
//ParOuImpar() que vai verificar e mostrar na tela se o valor passado como
//par�metro � PAR ou �MPAR.
var
  N: Inteiro //Var para entrada de dados pelo teclado

Procedimento ParOuImpar(A: Inteiro) //A recebe o valor em N
inicio
  Se (A%2= 0)entao //Se o resto da divisao do valor for igual a 0
    Escreva("O numero ", A, " � par") //O numero � par
  senao //Caso contrario
    Escreva("O numero", A, " � impar") //O numero � impar
  FimSe
FimProcedimento

inicio
  //Entrada de dados
  Escreva("Digite um numero: ")
    Leia(N)
  ParOuImpar(N) //Inicializa procedimento com o parametro de valor por N
fimalgoritmo