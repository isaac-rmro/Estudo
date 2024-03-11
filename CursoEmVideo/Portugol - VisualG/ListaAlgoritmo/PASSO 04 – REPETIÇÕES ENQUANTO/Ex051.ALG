algoritmo "Ex051"
//51) Faça um aplicativo que leia o preço de 8 produtos.
//No final, mostre na tela qual foi o maior e qual foi o menor preço digitados.
var
  Preco: Inteiro //Var para preço
  C: Inteiro //Var contadora
  MaiorPreco,MenorPreco: Inteiro //Var acumuladora
inicio
  C <- 1 //Contador inicia com 1
  Enquanto (C <= 8)faca //Enquanto 1 for menor que 8 faça
  Escreva("Digite o ",C,"° preço do produto: ") //Pede o preço 8 vezes
    Leia(Preco)

  Se (C = 1)entao //Se for a primeira contagem entao
    MaiorPreco <- Preco //Maior preço recebe o primeiro digitado
    MenorPreco <- Preco //Menor preço tambem recebe o primeiro digitado
  senao
    Se (Preco > MaiorPreco)entao //Aqui se faz as comparações
      MaiorPreco <- Preco //Se o preco atual for maior que o primeiro preço troca
    FimSe
  
    Se (Preco < MenorPreco)entao //Se o preco atual for menor que o primeiro preço troca
      MenorPreco <- Preco
    FimSe
  FimSe
    
  C <- C + 1 //adiciona +1 ao contador e volta para o looping
  FimEnquanto
  
  //Exibição de resultados
  EscrevaL("MAIOR PREÇO: ",MaiorPreco)
  EscrevaL("MENOR PREÇO: ",MenorPreco)
fimalgoritmo