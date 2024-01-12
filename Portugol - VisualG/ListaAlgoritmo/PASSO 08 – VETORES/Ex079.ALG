algoritmo "Ex079"
//79) Desenvolva um programa que leia 10 números inteiros e
//guarde-os em um vetor. No final, mostre quais são os números
//pares que foram digitados e em que posições eles estão armazenados.
var
  I: Inteiro //Contador
  N: vetor[1..10] de Inteiro //Vetor de numeros digitados
  Par: vetor[1..10] de Inteiro //Vetor para guarda de numeros pares
  PosPar: vetor[1..10] de Inteiro //Posição do numero par digitado
  
inicio
  Para I de 1 ate 10 faca //Prenchimento dos vetores
    EscrevaL("SESSAO: ",I)
    Escreva("Digite num: ")
      Leia(N[I])
      
    Se (N[I]%2= 0)entao //Se for par
      Par[I] <- N[I] //O numero é guardado na posição do contador
      PosPar[I] <- I //E sua posição tambem
    FimSe
    
    EscrevaL(" ")
  FimPara
  
  EscrevaL("NUMEROS PARES DIGITADOS") //Saida formatada
  Para I de 1 ate 10 faca //Mostra os numeros pares
    Se (Par[I] <> 0)entao //Se não tiver preenchido o vetor não é imprimido
      EscrevaL("Posição ", PosPar[I], " Numero: ", Par[I])
    FimSe
  FimPara

fimalgoritmo