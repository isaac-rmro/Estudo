algoritmo "Ex080"
//80) Fa�a um algoritmo que preencha um vetor de 30 posi��es com n�meros
//entre 1 e 15 sorteados pelo computador. Depois disso, pe�a para o usu�rio
//digitar um n�mero (chave) e seu programa deve mostrar em que posi��es essa
//chave foi encontrada. Mostre tamb�m quantas vezes a chave foi sorteada.
var
  I: Inteiro //Var contadora
  Sort: vetor[1..30] de Inteiro //Sorteio de numeros
  P: vetor[1..30] de Inteiro //Var para guardar Posi��o
  Chave,V: Inteiro //Var para guarda de Resultado
inicio
  Para I de 1 ate 30 faca //Repeti��o para preenchimento de valor aleatorio
    Sort[I] <- Randi(15) + 1 //Numeros entre 1 e 15
  FimPara
  
  Escreva("Digite uma chave: ")
    Leia(Chave) //Le uma chave digitado
    
  Para I de 1 ate 30 faca
    Se (Sort[I] = Chave)entao //Se a chave for igual a qualquer posi��o
      P[I] <- I //Guarda a posi��o
      V <- V + 1 //E quantas vezes foi
    FimSe
  FimPara
  
  EscrevaL("Chave encontrada", V, " vez(es)") //Saida de dados
  Para I de 1 ate 30 faca
    Se (P[I] <> 0)entao //Apenas mostra as posi��es que possuem valores
      EscrevaL("Posi��o: ", P[I])
    FimSe
  FimPara
  
fimalgoritmo