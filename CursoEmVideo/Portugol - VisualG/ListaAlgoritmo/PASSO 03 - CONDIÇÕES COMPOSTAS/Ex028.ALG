algoritmo "Ex028"
//28) Fa�a um programa que leia a largura e o comprimento de um terreno
//retangular, calculando e mostrando a sua �rea em m�. O programa tamb�m
//deve mostrar a classifica��o desse terreno, de acordo com a lista abaixo:
//- Abaixo de 100m� = TERRENO POPULAR
//- Entre 100m� e 500m� = TERRENO MASTER
//- Acima de 500m� = TERRENO VIP
var
  Larg,Comp: Real //Var para Largura e comprimento
  Area: Real //Var para processamento do calculo da area
  Class: Caractere //Classifica��o do terreno em mensagem
inicio
  //Filura
  Escreval("-----------------------------")
  Escreval("| CLASSIFICA��O DE TERRENOS |")
  Escreval("-----------------------------")

  Escreval(" ")

  //Entrada de dados
  Escreva("Digite a largura do seu terreno (m): ")
  Leia(Larg)
  Escreva("Digite o comprimento do seu terreno (m): ")
  Leia(Comp)

  Area <- Larg * Comp //Calculo da area

  Se (Larg < 0) ou (Comp < 0)entao //Verifica��o se um dos dados nao � valido
    Class <- "ERROR"
  senao
    Se (Area < 100)entao //Menor que 100m� = Popular
      Class <- "TERRENO POPULAR"
    senao
      Se (Area < 500)entao //Maior que 100 e menor que 500m� = Master
        Class <- "TERRENO MASTER"
      senao //Maior que 500m� = Vip
        Class <- "TERRENO VIP"
      FimSe
    FimSe
  FimSe
  
  Escreval(" ")
  
  Escreval("AREA DO TERRENO: ",Area:4:2,"m�") //Area format em 2 casa decimais
  Escreva("CLASSIFICA��O: ",Class) //Exibi a classifica��o do terreno
  
fimalgoritmo