algoritmo "Ex073"
//73) Crie um programa que preencha automaticamente (usando l�gica, n�o apenas
//atribuindo diretamente) um vetor num�rico com 10 posi��es, conforme abaixo:
//9 8 7 6 5 4 3 2 1 0
//0 1 2 3 4 5 6 7 8 9
var
  I: Inteiro //Var contadora
  Vet: vetor[0..9] de Inteiro //Vetor com 10 posi��es
inicio
  //Contagem regressiva
  Para I de 9 ate 0 passo -1 faca //Repeti��o para preenchimento de vetores
    Vet[I] <- I //Vetor em posi��o do contador recebe (contador)
  FimPara
  
  Para I de 9 ate 0 passo -1 faca //Imprime os vetores e exibi suas posi�oes
    EscrevaL("Pos.[", I, " ] ", Vet[I])
  FimPara
fimalgoritmo