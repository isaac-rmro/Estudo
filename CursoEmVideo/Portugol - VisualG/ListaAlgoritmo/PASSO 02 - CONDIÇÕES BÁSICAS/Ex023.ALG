algoritmo "Ex023"
//23) Numa promoção exclusiva para o Dia da Mulher,
//uma loja quer dar descontos para todos,
//mas especialmente para mulheres.
//Faça um programa que leia nome, sexo e o valor
//das compras do cliente e calcule o preço com desconto.
//Sabendo que:
// - Homens ganham 5% de desconto
// - Mulheres ganham 13% de desconto
var
  Nome: Caractere //Var para nome
  Sexo: Inteiro //Var para escolha de opção
  Vlr,NvVlr,Desc: Real //Var para processamento de dados
inicio
  //Entrada de dados e começo do programa
  Escreval("-------------")
  Escreval("LOJA LAYANE'S")
  Escreval("-------------")
  
  Escreval(" ")
  
  Escreva("Digite seu nome: ")
  Leia(Nome)
  Escreva("Valor da compra: R$")
  Leia(Vlr)
  Escreval(" ")
  Escreval("DIA DAS MULHERES")
  Escreval("Digite [1] se você é do sexo feminino")
  Escreval("Digite [2] se você é do sexo masculino")
  Leia(Sexo)
  
  //Utilizado Escolha Caso pois usei numeros como ref
  Escolha Sexo
    Caso 1
      //Caso for mulher ela recebe 13% a menos do valor
      Desc <-  (Vlr * 13/100) //Calculo de porcentagem
      NvVlr <- Vlr - Desc //Aplicação do desconto
      Escreval(" ")
      Escreval("FELIZ DIAS DAS MULHERES APROVEITE") //Msg
    Caso 2
      //Caso for homem ele ira receber 5%
      Desc <- (Vlr * 5/100) //Calculo do desconto
      NvVlr <- Vlr - Desc  //Aplicação do desconto
      Escreval(" ")
      Escreval("AQUI SEU DESCONTO DE 5% ;)")//Msg
    OutroCaso
      Escreva("Erro reinicie o programa")
  FimEscolha

  Escreval(" ")

  //Saida de dados organizados
  Escreval("Usuario: ",Nome)
  Escreval("Desconto: R$",Desc)
  Escreval("Valor com desconto: R$",NvVlr)

fimalgoritmo