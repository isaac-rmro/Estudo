algoritmo "Ex062"
//62) Fa�a um programa usando a estrutura �fa�a enquanto� que leia a idade de
//v�rias pessoas. A cada la�o, voc� dever� perguntar para o usu�rio se ele quer
//ou n�o continuar a digitar dados.
//No final, quando o usu�rio decidir parar, mostre na tela:
//a) Quantas idades foram digitadas
//b) Qual � a m�dia entre as idades digitadas
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
    Escreva("Digite sua idade: ") //Pe�a a idade
      Leia(Idade)
      
    Se (Idade > 21)entao //Se idade for maior que 21
      Mais21 <- Mais21 + 1 //Var Mais21 recebe +1
    senao //Se nao tiver
      Mais21 <- Mais21 + 0 //Var Mais21 recebe +0
    FimSe


    TotIdades <- TotIdades + Idade //Var para soma de idades

    Escreva("Quer continuar? [S/N] ") //Fim ou Nao do la�o de repeti��o
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