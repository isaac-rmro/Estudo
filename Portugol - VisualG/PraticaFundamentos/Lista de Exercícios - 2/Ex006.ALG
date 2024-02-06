algoritmo "Ex006"
//6. Crie um programa que leia numeros do usuario ate que um numero negativo
//seja inserido. Em seguida exiba o maior e menor numero.
var
  I: Inteiro //Contador
  Num: Inteiro //Var para numero
  Maior, Menor: Inteiro //Guarda de menor e maior
inicio
  Repita
    I <- I + 1 //Incremento ao contador a cada repetição
    Escreva("Digite o ", I, "° num: ") //Solicita o numero
      Leia(Num)
      
    Se (I = 1)entao //Se for a primeira contagem
      Maior <- Num //Atribui o numero a variavel
    senao //Se nao for
      Se (Num > Maior)entao //Compara
        Maior <- Num
      FimSe
    FimSe
    
    Se (I = 1)entao //Se for a primeira contagem
      Menor <- Num //Atribui o numero a variavel
    senao //Se nao for
      Se (Num < Menor)entao //Compara
        Menor <- Num
      FimSe
    FimSe
  Ate(Num < 0)
  
  LimpaTela
  
  //Exibe o resultado
  EscrevaL("MENOR NUMERO: ", Menor)
  EscrevaL("MAIOR NUMERO: ", Maior)
fimalgoritmo