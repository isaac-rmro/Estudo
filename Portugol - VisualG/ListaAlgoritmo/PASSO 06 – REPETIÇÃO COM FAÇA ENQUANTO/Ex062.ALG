algoritmo "Ex062"
//62) Faça um programa usando a estrutura “faça enquanto” que leia a idade de
//várias pessoas. A cada laço, você deverá perguntar para o usuário se ele quer
//ou não continuar a digitar dados.
//No final, quando o usuário decidir parar, mostre na tela:
//a) Quantas idades foram digitadas
//b) Qual é a média entre as idades digitadas
//c) Quantas pessoas tem 21 anos ou mais.
var
  Resp: Caractere //Var para resposta
  Idade: Inteiro //Var para entrada da idade
  C,TotUser,TotIdades,Mais21: Inteiro //Var contadoras e acumuladoras
  Media: Real //Var para media
inicio
  Resp <- "S" //Resposta inicia com S
  C <- 0 //Contador com 0
  TotUser <- 0 //Total de usuarios = 0
  Enquanto (Resp <> "N")faca //Enquanto resposta nao for N
    Escreva("Digite sua idade: ") //Peça a idade
      Leia(Idade)
      
    Se (Idade > 21)entao //Se idade for maior que 21
      Mais21 <- Mais21 + 1 //Var Mais21 recebe +1
    senao //Se nao tiver
      Mais21 <- Mais21 + 0 //Var Mais21 recebe +0
    FimSe


    TotIdades <- TotIdades + Idade //Var para soma de idades

    Escreva("Quer continuar? [S/N] ") //Fim ou Nao do laço de repetição
      Leia(Resp)
      
    C <- C + 1 //Se (Sim) Contador recebe + 1
    TotUser <- C //Total de usuarios recebeu + 1
  FimEnquanto
  
  Media <- TotIdades / C //Calculo da media
  
  EscrevaL(" ")
  
  //Saida de dados
  EscrevaL("Qtd de idades digitadas: ",TotUser)
  EscrevaL("Media das idades: ",Media:3:1," ano(s)")
  Escreva("Pessoas com mais de 21 anos: ",Mais21)
  
fimalgoritmo