algoritmo "Ex027"
//27) Crie um programa que leia duas notas de um aluno e calcule a sua m�dia,
//mostrando uma mensagem no final, de acordo com a m�dia atingida:
//- M�dia at� 4.9: REPROVADO
//- M�dia entre 5.0 e 6.9: RECUPERA��O
//- M�dia 7.0 ou superior: APROVADO
var
  N1,N2: Real //Var para notas
  Media: Real //Var para calculo da media
  Sit: Caractere //Var para msg da situa��o
inicio
  //Filura
  Escreval("---------------------------")
  Escreval("ESCOLA CHUPA MANGA DE ASSIS")
  Escreval("---------------------------")
  Escreval("Entradas invalidas: (Algumas das notas < 0) , (Media  > 10)")

  Escreval(" ")

  //Entrada de dados
  Escreva("Digite a 1� nota: ")
  Leia(N1)
  Escreva("Digite a 2� nota: ")
  Leia(N2)
  
  Media <- (N1+N2)/2 //Calculo da media
  
  //Condi��es
  Se (N1 < 0) ou (N2 < 0)entao //Verificar se um dos numeros nao sao validos
    Sit <- "NOTA INVALIDA"
  senao
    Se (Media < 5)entao //Se media for menor que 5 entao � reprova��o
      Sit <- "REPROVADO"
    senao
      Se (Media < 7)entao  //Se media for menor que 7 entao � recupera��o
        Sit <- "RECUPERA��O"
      senao
        Se (Media >=7) e (Media <= 10)entao //Se media estiver entre 7 e 10
          Sit <- "APROVADO" //Aprova��o
        senao
          Sit <- "NOTAS INVALIDAS" //Acima de 10 de media tambem � invalido
        FimSe
      FimSe
    FimSe
  FimSe
  
  Escreval("Media do aluno: ",Media:2:1) //Mostrar a media com 1 casa decimal
  Escreva("Situa��o do aluno: ",Sit) //Mostrar situa��o do aluno
  
fimalgoritmo