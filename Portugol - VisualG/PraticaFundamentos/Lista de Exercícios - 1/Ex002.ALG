algoritmo "Ex002"
//2. Crie um programa que verifique se um número é par ou ímpar
var
  Num: Inteiro //Var para guardar o que o usuario digitou
  Ver: Caractere //Var que ira receber o resultado da funcao
  
Funcao ParOuImpar(n: Inteiro): Caractere
var
  msg: caractere //Var de escopo local para guardar mensagem
inicio
  Se (n%2= 0)entao //Se for divisivel por 2 resto 0
    msg <- "Par" //Mesagem (O numero é par)
  senao //Se nao for
    msg <- "Impar" //Mensagem (O numero é impar)
  FimSe
  Retorne msg //Irá retornar a variavel com o conteudo
FimFuncao

inicio
  Escreva("Digite um número para verificação: ") //Solicita um numero
    Leia(Num) //Guarda o numero na var (Num)
  Ver <- ParOuImpar(Num) //Verifica se o numero é par ou impar
  Escreva("O numero ", Num, " é: ", Ver) //Saida de dados organizada
fimalgoritmo