algoritmo "Ex019"
//19) Crie um algoritmo que leia o nome e as duas notas
//de um aluno, calcule a sua média e mostre na tela.
//No final, analise a média e mostre se o aluno teve ou
//não um bom aproveitamento (se ficou acima da média 7.0).
var
  Nome: Caractere //Var nome
  Nota1,Nota2: Real //Var entrada de dados
  Media: Real //Var acumuladora
inicio
  //Comando de entrada
  Escreva("Nome do aluno: ")
  Leia(Nome)
  Escreva("Digite a 1º nota: ")
  Leia(Nota1)
  Escreva("Digite a 2º nota: ")
  Leia(Nota2)
  
  //Calculo da media entre dois numeros
  Media <- (Nota1+Nota2)/2
  
  //Saida de dados
  Escreval("Media do aluno: ",Media:3:1) //Format com 3 numeros no tot e 1 dps da virgula
  Se (Media >= 7)entao //Se a media for maior que 7 execute o bloc de not
    Escreva("Aluno com bom aproveitamento")
  senao //Se nao for execute este bloc de not
    Escreva("Aluno com mal aproveitamento")
  FimSe
  
fimalgoritmo