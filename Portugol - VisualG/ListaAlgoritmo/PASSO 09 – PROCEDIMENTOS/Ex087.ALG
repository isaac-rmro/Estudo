algoritmo "Ex087"
//87) Crie um programa que melhore o procedimento Gerador() da questão
//anterior para que mostre uma mensagem personalizada, passada como parâmetro.
//Ex: Ao chamar Gerador("Aprendendo Portugol") aparece:
//+-------=======------+
// Aprendendo Portugol
//+-------=======------+
var
Procedimento Gerador(Msg: Caractere) //Procedimento melhorado
Inicio
  //Passos a serem imprimidos
  EscrevaL("+----====----+")
  EscrevaL(Msg)
  EscrevaL("+----====----+")
FimProcedimento
inicio
  Gerador("Aprendendo Portugol") //Inicialização do procedimento
fimalgoritmo