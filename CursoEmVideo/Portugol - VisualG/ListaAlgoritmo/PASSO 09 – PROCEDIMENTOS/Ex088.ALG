algoritmo "Ex088"
//88) Crie um programa que melhore o procedimento Gerador() da quest�o anterior
//para que mostre uma mensagem v�rio
//Ex: Ao chamar Gerador("Aprendendo Portugol", 4) aparece:
//+-------=======------+
// Aprendendo Portugol
// Aprendendo Portugol
// Aprendendo Portugol
// Aprendendo Portugol
//+-------=======------+
var
Procedimento Gerador(Msg: Caractere; Qtd: Inteiro) //Proc com 2 parametros
var
  I: Inteiro //Contador
Inicio
  EscrevaL("+----====----+")
  Para I de 1 ate Qtd faca //Repetir o conteudo de Msg
    EscrevaL(Msg)
  FimPara
  EscrevaL("+----====----+")
FimProcedimento
inicio
  Gerador("Aprendendo Portugol", 4) //Valores passados ao procedimento
fimalgoritmo