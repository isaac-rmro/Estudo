algoritmo "Ex069"
//[DESAFIO] Desenvolva um programa que leia o primeiro termo e a raz�o de uma
//PA (Progress�o Aritm�tica), mostrando na tela os 10 primeiros elementos da PA
//e a soma entre todos os valores da sequ�ncia.
var
   PrimeiroTermo, Razao, TermoAtual: inteiro //Var para PA
inicio
  //Entrada de dados
  Escreva("Informe o primeiro termo da PA: ")
    Leia(PrimeiroTermo)

  Escreva("Informe a raz�o da PA: ")
    Leia(Razao)

  //Para Numero escolhido ate (Numero escolhido + 9 x raz�o escolhida) formula a10
  //de Razao que seria o pulo escolhido pelo user
  Para TermoAtual de PrimeiroTermo ate (PrimeiroTermo + 9 * Razao) passo Razao faca
    Escreva(TermoAtual, " ")
  FimPara

fimalgoritmo