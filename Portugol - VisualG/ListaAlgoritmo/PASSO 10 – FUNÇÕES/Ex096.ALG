algoritmo "Ex096"
//96) Crie um programa que tenha uma função Media(), que vai receber
//as 2 notas de um aluno e retornar a sua média para o programa principal.
var
  N1, N2: Inteiro //Var's Entrada de dados
  Result: Real //Resultado
  
Funcao Media(A,B: Inteiro): Real //A e B recebem os valores e irá retornar
//um numero real
inicio
  Retorne (A + B) / 2 //Retorne resultado do calculo da media
FimFuncao

inicio
  //Entrada de dados
  Escreva("Digite 1°nota: ")
    Leia(N1)
  Escreva("Digite 2°nota: ")
    Leia(N2)
    
  Result <- Media(N1,N2) //Parametros por valores
  Escreva("Media do aluno: ", Result:3:1) //Saida de resultado
fimalgoritmo