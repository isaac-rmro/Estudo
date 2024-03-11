algoritmo "Ex028"
//28) Faça um programa que leia a largura e o comprimento de um terreno
//retangular, calculando e mostrando a sua área em m². O programa também
//deve mostrar a classificação desse terreno, de acordo com a lista abaixo:
//- Abaixo de 100m² = TERRENO POPULAR
//- Entre 100m² e 500m² = TERRENO MASTER
//- Acima de 500m² = TERRENO VIP
var
  Larg,Comp: Real //Var para Largura e comprimento
  Area: Real //Var para processamento do calculo da area
  Class: Caractere //Classificação do terreno em mensagem
inicio
  //Filura
  Escreval("-----------------------------")
  Escreval("| CLASSIFICAÇÃO DE TERRENOS |")
  Escreval("-----------------------------")

  Escreval(" ")

  //Entrada de dados
  Escreva("Digite a largura do seu terreno (m): ")
  Leia(Larg)
  Escreva("Digite o comprimento do seu terreno (m): ")
  Leia(Comp)

  Area <- Larg * Comp //Calculo da area

  Se (Larg < 0) ou (Comp < 0)entao //Verificação se um dos dados nao é valido
    Class <- "ERROR"
  senao
    Se (Area < 100)entao //Menor que 100m² = Popular
      Class <- "TERRENO POPULAR"
    senao
      Se (Area < 500)entao //Maior que 100 e menor que 500m² = Master
        Class <- "TERRENO MASTER"
      senao //Maior que 500m² = Vip
        Class <- "TERRENO VIP"
      FimSe
    FimSe
  FimSe
  
  Escreval(" ")
  
  Escreval("AREA DO TERRENO: ",Area:4:2,"m²") //Area format em 2 casa decimais
  Escreva("CLASSIFICAÇÃO: ",Class) //Exibi a classificação do terreno
  
fimalgoritmo