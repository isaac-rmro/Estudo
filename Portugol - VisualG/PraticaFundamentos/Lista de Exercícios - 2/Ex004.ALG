algoritmo "Ex004"
//4. Crie um programa que peça o usuario para advinhar um numero secreto
//gerado aleatoriamente. O programa deve fornecer dicas(maior ou menor)
//ate que o usuario advinhe.
var
  NumS, Num: Inteiro //Var para Numero sorteado e Numero de Entrada
  Tent: Caractere //Var para mensagem a cada tentativa
  
Funcao VerNum(n: Inteiro): Caractere //Verifica se o numero é maior ou menor
var
  msg: Caractere //Mensagem
inicio
  Se (n < NumS)entao //Se for menor
    msg <- "MAIOR!" //Exiba
  senao
    Se (n > NumS)entao //Se for maior
      msg <- "MENOR!" //Exiba
    FimSe
  FimSe
  Retorne msg //Retorna a mesangem
FimFuncao

inicio
  NumS <- Randi(10) + 1 //Numero aleatorio

  Repita
    Escreva("CHUTE UM NUMERO DE 1 A 10: ") //Solicita um numero
      Leia(Num)
    Tent <- VerNum(Num) //Atribuicao da funcao a variavel
    LimpaTela //Limpa Tela a cada tentativa
    EscrevaL(Tent) //Escreve a dica
  Ate(Num = NumS) //Repete ate o numero for igual ao numero sorteado
  
fimalgoritmo