algoritmo "Ex051"
//51) Fa�a um aplicativo que leia o pre�o de 8 produtos.
//No final, mostre na tela qual foi o maior e qual foi o menor pre�o digitados.
var
  Preco: Inteiro //Var para pre�o
  C: Inteiro //Var contadora
  MaiorPreco,MenorPreco: Inteiro //Var acumuladora
inicio
  C <- 1 //Contador inicia com 1
  Enquanto (C <= 8)faca //Enquanto 1 for menor que 8 fa�a
  Escreva("Digite o ",C,"� pre�o do produto: ") //Pede o pre�o 8 vezes
    Leia(Preco)

  Se (C = 1)entao //Se for a primeira contagem entao
    MaiorPreco <- Preco //Maior pre�o recebe o primeiro digitado
    MenorPreco <- Preco //Menor pre�o tambem recebe o primeiro digitado
  senao
    Se (Preco > MaiorPreco)entao //Aqui se faz as compara��es
      MaiorPreco <- Preco //Se o preco atual for maior que o primeiro pre�o troca
    FimSe
  
    Se (Preco < MenorPreco)entao //Se o preco atual for menor que o primeiro pre�o troca
      MenorPreco <- Preco
    FimSe
  FimSe
    
  C <- C + 1 //adiciona +1 ao contador e volta para o looping
  FimEnquanto
  
  //Exibi��o de resultados
  EscrevaL("MAIOR PRE�O: ",MaiorPreco)
  EscrevaL("MENOR PRE�O: ",MenorPreco)
fimalgoritmo