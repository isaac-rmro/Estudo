algoritmo "Ex097"
//97) Refa�a o exerc�cio 91, s� que agora em forma de fun��o Maior(),
//mas fa�a uma adapta��o que vai receber TR�S n�meros como par�metro e
//vai retornar qual foi o maior entre eles.
var
  N1, N2, N3: Inteiro //Var para guardar valor digitado pelo teclado
  Result: Inteiro
  
Funcao NumMaior(A, B, C: Inteiro): Inteiro //Fun��o retorna valor inteiro
var
  Maior: Inteiro //Var para resultado
inicio
    Se (A > B) e (A > C)entao //Se o A for maior
      Maior <- A
    senao
      Se (B > A) e (B > C)entao //Se B for maior
        Maior <- B
      senao //Se C for maior
        Maior <- C
      FimSe
    FimSe
  Retorne Maior //Retorne o numero maior
FimFuncao

inicio
  //Leitura de dados
  Escreva("Digite o 1�num: ")
    Leia(N1)
  Escreva("Digite o 2�num: ")
    Leia(N2)
  Escreva("Digite o 3�num: ")
    Leia(N3)

  Se (N1 = N2) e (N2 = N3)entao //Verifica��o de numeros iguais
    Escreva("Numeros iguais")
  senao
    Result <- NumMaior(N1,N2,N3) //Inicializa o procedimento
    Escreva("O numero ", Result, " � o maior") //Saida com resultado da funcao
  FimSe
fimalgoritmo