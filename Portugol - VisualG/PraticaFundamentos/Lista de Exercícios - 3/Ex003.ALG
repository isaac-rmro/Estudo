algoritmo "Ex003"
//3. Crie um algoritmo para ler 10 números inteiros, armazenar em um vetor
//e mostrar os números pares deste vetor
var
  I: Inteiro //Indice
  Vlr: Vetor[1..10] de Inteiro //Vetor de 10 pos
  
inicio
  Para I de 1 ate 10 faca //Conta de 1 ate 10
    Escreva("Digite o ", I, "° valor: ") //Mostra a posição em que sera inserido o valor
      Leia(Vlr[I]) //Guarda o valor no vetor na posição do indice
  FimPara
  
  //Exibe os resultados
  EscrevaL()
  EscrevaL("RESULTADO")
  
  Para I de 1 ate 10 faca //Imprimi todos os valores do vetor
    Se (Vlr[I]%2 = 0)entao //Se for par irá aparecer o numero entre [ ]
      Escreva("[", Vlr[I], " ],")
    senao //Se for impar
      Escreva(Vlr[I], " ,") //Irá apenas imprimir o numero
    FimSe
  FimPara
fimalgoritmo