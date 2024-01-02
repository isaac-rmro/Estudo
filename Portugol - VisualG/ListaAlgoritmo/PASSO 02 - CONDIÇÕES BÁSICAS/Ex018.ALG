algoritmo "Ex018"
//18) Faça um programa que leia o ano de nascimento de uma pessoa,
//calcule a idade dela e depois mostre se ela pode ou não votar.
var
  AnoNasc: Inteiro //Entrada de data de nascimento
  Idade: Real //Var para calculo da idade
inicio
  //Entrada de dados
  Escreva("Ano Nascimento (yyyy): ")
  Leia(AnoNasc)

  //Calculo da idade ref: ano atual
  Idade <- 2023 - AnoNasc
  
  //Condição
  Escreval("IDADE: ",Idade)
  Se (Idade >= 16)entao //Se idade for maior que 16 execute bloc notas
    Escreva("APTO A VOTAR")
  senao //Senao execute o outro bloc de notas
    Escreva("INAPTO A VOTAR")
  FimSe
  
  Escreval(" ")
  Escreva("Idade de ref: 16 anos") //Filura
fimalgoritmo