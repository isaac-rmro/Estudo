algoritmo "Ex076"
//76) Crie um programa que preencha automaticamente um vetor num�rico com 7
//n�meros gerados aleatoriamente pelo computador e depois mostre os valores
//gerados na tela.
var
  I: Inteiro //Contador
  Vet: vetor[0..6] de Inteiro //Vetor de 7 posi��es
inicio
  Para I de 0 ate 6 faca //Preenche os 7 espa�os dos vetores
    Vet[I] <- Randi(100) //Por numeros aleatorios de 0 a 100
  FimPara
  
  //Mensagem do computador
  EscrevaL("COMPUTIER: BIPBOP AQUI EST�O SEUS NUMEROS MERO MORTAL")
  EscrevaL(" ")
  
  //Imprimi os valores contidos nos vetores
  Para I de 0 ate 6 faca
    Escreva(Vet[I])
  FimPara
fimalgoritmo