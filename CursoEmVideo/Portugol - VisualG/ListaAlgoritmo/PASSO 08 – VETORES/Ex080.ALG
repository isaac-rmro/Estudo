algoritmo "Ex080"
//80) Faça um algoritmo que preencha um vetor de 30 posições com números
//entre 1 e 15 sorteados pelo computador. Depois disso, peça para o usuário
//digitar um número (chave) e seu programa deve mostrar em que posições essa
//chave foi encontrada. Mostre também quantas vezes a chave foi sorteada.
var
  I: Inteiro //Var contadora
  Sort: vetor[1..30] de Inteiro //Sorteio de numeros
  P: vetor[1..30] de Inteiro //Var para guardar Posição
  Chave,V: Inteiro //Var para guarda de Resultado
inicio
  Para I de 1 ate 30 faca //Repetição para preenchimento de valor aleatorio
    Sort[I] <- Randi(15) + 1 //Numeros entre 1 e 15
  FimPara
  
  Escreva("Digite uma chave: ")
    Leia(Chave) //Le uma chave digitado
    
  Para I de 1 ate 30 faca
    Se (Sort[I] = Chave)entao //Se a chave for igual a qualquer posição
      P[I] <- I //Guarda a posição
      V <- V + 1 //E quantas vezes foi
    FimSe
  FimPara
  
  EscrevaL("Chave encontrada", V, " vez(es)") //Saida de dados
  Para I de 1 ate 30 faca
    Se (P[I] <> 0)entao //Apenas mostra as posições que possuem valores
      EscrevaL("Posição: ", P[I])
    FimSe
  FimPara
  
fimalgoritmo