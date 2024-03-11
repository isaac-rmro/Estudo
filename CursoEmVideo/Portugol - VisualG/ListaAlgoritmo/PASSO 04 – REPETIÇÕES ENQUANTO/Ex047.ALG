algoritmo "Ex047"
//47) Desenvolva um aplicativo que mostre na tela o resultado da
//expressão 500 + 450 + 400 + 350 + 300 + ... + 50 + 0
var
  C: Inteiro
  Soma: Inteiro
inicio
  C <- 500 //Var contadora inicia com 500
  Enquanto (C >= 0)faca //Enquanto 500 for maior que 0
    Escreva(C," + ") //Exiba C
    Soma <- Soma + C //A soma ira receber ela mesmo + Valor de C
    C <- C - 50 //Apos isso C ira subtrair -50 e voltar ao looping
  FimEnquanto
  
  EscrevaL(" ")
  Escreva("Total: ",Soma) //Total
fimalgoritmo