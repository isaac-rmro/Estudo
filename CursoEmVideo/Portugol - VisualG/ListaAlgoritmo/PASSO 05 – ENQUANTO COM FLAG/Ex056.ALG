algoritmo "Ex056"
//56) Crie um programa que leia v�rios n�meros pelo teclado
//e mostre no final o somat�rio entre eles.
//Obs: O programa ser� interrompido quando o n�mero 1111 for digitado
var
  N,Soma: Inteiro
inicio
  EscrevaL("----------------")
  EscrevaL("CALCULA INFINITO") //Menu
  EscrevaL("----------------")
  
  EscrevaL(" ")
  
  N <- 0  //N inicia com 0 para n�o somar numero a +
  
  Enquanto (N <> 1111)faca//Enquanto o numero lido for diferente de 1111
    EscrevaL("Somador: ",Soma) //Mostre o total a cada repeti��o
    Escreva("Digite um numero para soma: ") //Pe�a um valor
      Leia(N)
      
    EscrevaL(" ")

    Soma <- Soma + N //Adicione ele a var Soma
     Se (N = 1111)entao //Se o numero for igual a 1111
       Soma <- Soma - 1111 //Sera feito -1111 do resultado
     FimSe
  FimEnquanto //Ate o numero digitado for igual a 1111
  
  EscrevaL(" ")
  
  Escreva("Soma entre todos os numeros digitados: ",Soma)//Saida de result
fimalgoritmo