algoritmo "Ex100"
//100) Melhore o exerc�cio 96, criando al�m da fun��o Media() uma outra fun��o
//chamada Situacao(), que vai retornar para o programa principal se o aluno
//est� APROVADO, em RECUPERA��O ou REPROVADO. Essa nova fun��o, vai receber
//como par�metro o resultado retornado pela fun��o Media().

//Ex 096 Melhrado

var
  N1, N2: Inteiro //Var's Entrada de dados
  Result: Real //Resultado
  Sit: Caractere

Funcao Media(A,B: Inteiro): Real //A e B recebem os valores e ir� retornar
//um numero real
inicio
  Retorne (A + B) / 2 //Retorne resultado do calculo da media
FimFuncao

Funcao Situacao(A: Real): Caractere //Verifica a situa��o do aluno
var
  R: Caractere
inicio
  //Teste comparativos
  Se (A < 5)entao
    R <- "ALUNO REPROVADO"
  senao
    Se (A < 7)entao
      R <- "ALUNO EM RECUPERA��O"
    senao
      R <- "ALUNO APROVADO"
    FimSE
  FimSe
  Retorne R //Retorna o resultado do teste
FimFuncao

inicio
  //Entrada de dados
  Escreva("Digite 1�nota: ")
    Leia(N1)
  Escreva("Digite 2�nota: ")
    Leia(N2)

  Result <- Media(N1,N2) //Parametros por valores
  Sit <- Situacao(Result) //Resultado da situacao do aluno com parametro de Media
  
  EscrevaL("Media do aluno: ", Result:3:1) //Saida de resultado
  Escreva("Situa��o: ",Sit)
fimalgoritmo