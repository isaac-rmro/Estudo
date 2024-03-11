algoritmo "Ex089"
//89) Crie um programa que melhore o procedimento Gerador() da questão anterior
//para que o programador possa escolher uma entre três bordas:
// +-------=======------+ Borda 1
// ~~~~~~~~:::::::~~~~~~~ Borda 2
// <<<<<<<<------->>>>>>> Borda 3
//Ex: Uma chamada válida seria Gerador("Portugol Studio", 3, 2)
//~~~~~~~~:::::::~~~~~~~
// Portugol Studio
// Portugol Studio
// Portugol Studio
//~~~~~~~~:::::::~~~~~~~
var
  Msg: Caractere //Mensagem a ser imprimida
  Qtd, Borda: Inteiro //Var para processamento de dados
Procedimento Gerador(M: Caractere; Rep, Opcao: Inteiro) //Gerador de resposta
var
  //Var de escopo local
  Borda: Caractere
  I: Inteiro
inicio
  Escolha Opcao //Opcoes escolhidas pelo usuario
    Caso 1
      Borda <- "+----====----+"
    Caso 2
      Borda <- "~~~~~::::~~~~~"
    Caso 3
      Borda <- "<<<<<---->>>>>"
  FimEscolha
  
  LimpaTela
  
  //Saida imprimida
  EscrevaL(Borda)
  Para I de 1 ate Rep faca //Repetição
    EscrevaL(Msg)
  FimPara
  EscrevaL(Borda)
FimProcedimento
inicio
  //Entrada de dados
  Escreva("Digite uma mensagem: ")
    Leia(Msg)
  Escreva("Quantas vezes deseja exibir: ")
    Leia(Qtd)
  EscrevaL("Escolha uma borda: ")
  EscrevaL("[1] +----====----+")
  EscrevaL("[2] ~~~~~::::~~~~~")
  EscrevaL("[3] <<<<<---->>>>>")
    Leia(Borda)
  Gerador(Msg,Qtd,Borda) //Passagem de parametros por valores
fimalgoritmo