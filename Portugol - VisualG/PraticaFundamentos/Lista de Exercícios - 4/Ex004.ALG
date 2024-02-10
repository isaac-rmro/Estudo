algoritmo "Ex004"
var
  M: Vetor[1..3,1..3] de Inteiro //Matriz 3x3
  l, c: Inteiro //Linha e Coluna
  Soma: Inteiro //Var para soma da diagonal principal

inicio
  Para l de 1 ate 3 faca //Preenche a matriz
    Para c de 1 ate 3 faca
      Leia(M[l,c])
      Se (l = c)entao //Se linha e coluna forem iguais
        Soma <- Soma + M[l,c] //Irá somando a var acumulativa ate o final da repetição
      FimSe
    FimPara
  FimPara
  
  //Exibe o resultado
  
  Para l de 1 ate 3 faca
    Para c de 1 ate 3 faca
      Se (l = c)entao
        Escreva("{", M[l,c], "}")
      senao
        Escreva(M[l,c])
      FimSe
    FimPara
    EscrevaL()
  FimPara
  
  Escreva("SOMA DOS VALORES DA DIAGONAL PRINCIPAL: ", Soma)
fimalgoritmo