algoritmo "Ex003"
var
  M: Vetor[1..4,1..4] de Inteiro //Matriz de 4x4
  l, c, Lin, Colun: Inteiro //Var para percorrer a matriz
  Maior: Inteiro //Var para guarda o maior numero
  
Funcao VerMaior(var linha,coluna: Inteiro): Inteiro //Verifica o maior numero
//e sua posicao
var
  maio: Inteiro //Var para guarda do maior numero
inicio
  Para l de 1 ate 4 faca
    Para c de 1 ate 4 faca //Percorre toda a matriz
      Se (l = 1)entao //Se for a primeira verificacao
        //O primeiro valor irá ser a base de comparação
        maio <- M[l,c]
        linha <- l
        coluna <- c
      senao
        Se (M[l,c] > maio)entao //Se nao for a primeira verificacao
          //Se o numero atual for maior que o numero de base irá ocorrer a troca
          maio <- M[l,c]
          linha <- l
          coluna <- c
        FimSe
      FimSe
    FimPara
  FimPara
  Retorne maio //Retorna o maior valor
FimFuncao

inicio
  Para l de 1 ate 4 faca
    Para c de 1 ate 4 faca //Preenche toda a matriz
      Leia(M[l,c])
    FimPara
  FimPara
  
  Maior <- VerMaior(Lin,Colun) //Parametros por referencia
  
  //Exibe o resultado
  LimpaTela
  
  Para l de 1 ate 4 faca
    Para c de 1 ate 4 faca //Imprimi toda a matriz preenchida
      Escreva(M[l,c])
    FimPara
    EscrevaL()
  FimPara
  
  EscrevaL()

  EscrevaL("MAIOR VALOR: ", Maior)
  Escreva("POSICAO: [ ", Lin, ",", Colun, " ]")
fimalgoritmo