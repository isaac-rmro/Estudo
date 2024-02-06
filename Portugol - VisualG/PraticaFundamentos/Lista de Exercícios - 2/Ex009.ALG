algoritmo "Ex009"
//9. Faca a sequencia de fibonacci
var
  I: Inteiro //Var contadora
  Termo: Inteiro //Var para limite de exibição da sequencia
  a, b, c: Inteiro //Var para calculo da sequencia
  
Procedimento Fibonacci() //Exibe os resultados
inicio
  //Inicialização da sequencia 0,1
  a <- -1
  b <- 1

  Para I de 1 ate Termo faca //Faz a sequencia ate o limite estabelecido
    c <- a + b //c irá ser a soma dos dois numeros anteriores
    a <- b //a recebera b, entao a sera descartado
    b <- c //b irá receber o resultado da soma de a + b
    Escreva(c) //No final exibe o numero atual
  FimPara
FimProcedimento

inicio
  Escreva("Digite quantos termos deseja exibir: ") //Solicita quantos termos
  //O usuario desejar exibir
    Leia(Termo)
  Fibonacci() //Chama o procedimento
fimalgoritmo