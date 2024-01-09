algoritmo "Ex069"
//[DESAFIO] Desenvolva um programa que leia o primeiro termo e a razão de uma
//PA (Progressão Aritmética), mostrando na tela os 10 primeiros elementos da PA
//e a soma entre todos os valores da sequência.
var
   PrimeiroTermo, Razao, TermoAtual: inteiro //Var para PA
inicio
  //Entrada de dados
  Escreva("Informe o primeiro termo da PA: ")
    Leia(PrimeiroTermo)

  Escreva("Informe a razão da PA: ")
    Leia(Razao)

  //Para Numero escolhido ate (Numero escolhido + 9 x razão escolhida) formula a10
  //de Razao que seria o pulo escolhido pelo user
  Para TermoAtual de PrimeiroTermo ate (PrimeiroTermo + 9 * Razao) passo Razao faca
    Escreva(TermoAtual, " ")
  FimPara

fimalgoritmo