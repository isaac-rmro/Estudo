algoritmo "Ex027"
//27) Crie um programa que leia duas notas de um aluno e calcule a sua média,
//mostrando uma mensagem no final, de acordo com a média atingida:
//- Média até 4.9: REPROVADO
//- Média entre 5.0 e 6.9: RECUPERAÇÃO
//- Média 7.0 ou superior: APROVADO
var
  N1,N2: Real //Var para notas
  Media: Real //Var para calculo da media
  Sit: Caractere //Var para msg da situação
inicio
  //Filura
  Escreval("---------------------------")
  Escreval("ESCOLA CHUPA MANGA DE ASSIS")
  Escreval("---------------------------")
  Escreval("Entradas invalidas: (Algumas das notas < 0) , (Media  > 10)")

  Escreval(" ")

  //Entrada de dados
  Escreva("Digite a 1º nota: ")
  Leia(N1)
  Escreva("Digite a 2º nota: ")
  Leia(N2)
  
  Media <- (N1+N2)/2 //Calculo da media
  
  //Condições
  Se (N1 < 0) ou (N2 < 0)entao //Verificar se um dos numeros nao sao validos
    Sit <- "NOTA INVALIDA"
  senao
    Se (Media < 5)entao //Se media for menor que 5 entao é reprovação
      Sit <- "REPROVADO"
    senao
      Se (Media < 7)entao  //Se media for menor que 7 entao é recuperação
        Sit <- "RECUPERAÇÃO"
      senao
        Se (Media >=7) e (Media <= 10)entao //Se media estiver entre 7 e 10
          Sit <- "APROVADO" //Aprovação
        senao
          Sit <- "NOTAS INVALIDAS" //Acima de 10 de media tambem é invalido
        FimSe
      FimSe
    FimSe
  FimSe
  
  Escreval("Media do aluno: ",Media:2:1) //Mostrar a media com 1 casa decimal
  Escreva("Situação do aluno: ",Sit) //Mostrar situação do aluno
  
fimalgoritmo