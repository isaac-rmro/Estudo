algoritmo "Ex083"
//83) [DESAFIO] Crie uma lógica que preencha um vetor de 20 posições com
//números aleatórios (entre 0 e 99) gerados pelo computador.
//Logo em seguida, mostre os números gerados e depois coloque o vetor em
//ordem crescente, mostrando no final os valores ordenados.
var
  I, J: Inteiro //Var's contadoras
  Alt: vetor[1..20] de Inteiro //Numeros Aleatorios
  Aux: Inteiro //Var de auxlio bubble sort
inicio
  Para I de 1 ate 20 faca
    Alt[I] <- Randi(99) //Preenche os 20 espaços com valores aleatorios
  FimPara
  
  EscrevaL("Listagem...")
  
  Para I de 1 ate 20 faca //Imprime eles
    Escreva(Alt[I])
  FimPara
  
  EscrevaL(" ")
  
  EscrevaL("Ordenação...")
  Para I de 1 ate 20 faca //Ordena
    Para J de 1 ate 19 faca //Verificação ate o penultimo vetor
      Se (Alt[J] > Alt[J+1])entao //Se pos.atual for maior que pos.seguinte
        Aux <- Alt[J] //Var auxiliar guarda a pos.atual
        Alt[J] <- Alt[J+1] //Pos.atual recebe pos.seguinte
        Alt[J+1] <- Aux //Pos.seguinte recebe var auxiliar, ou posição atual antiga
      FimSe
    FimPara
  FimPara

  Para I de 1 ate 20 faca
    Escreva(Alt[I]) //Imprimi os valores ordenados
  FimPara


fimalgoritmo