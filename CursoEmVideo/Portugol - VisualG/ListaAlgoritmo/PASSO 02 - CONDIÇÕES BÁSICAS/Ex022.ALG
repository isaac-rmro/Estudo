Algoritmo "Ex022"
//22) Escreva um programa que leia o ano de nascimento de um rapaz
//e mostre a sua situa��o em rela��o ao alistamento militar.
//Se estiver antes dos 18 anos, mostre em quantos anos faltam para o
//alistamento.
//Se j� tiver depois dos 18 anos, mostre quantos anos j� se passaram do
//alistamento.
Var
  Nome: Caractere //Var para nome tipo caractere
  AnoNasc: Inteiro  //Entrada de dado do usuario principal
  Idade: Real  //Var para calculo
Inicio
  //Entrada de dados com filura
  Escreval("---------------")
  Escreval("  ALISTAMENTO  ")
  Escreval("---------------")
  
  Escreva("Digite seu nome: ")
  Leia(Nome)
  Escreva("Digite o ano de nascimento (yyyy): ")
  Leia(AnoNasc)
  
  LimpaTela //Comando que aprendi de limpar a tela :)
  
  //Filurinha
  Escreval("------------")
  Escreval("  SITUA��O  ")
  Escreval("------------")
  
  Idade <- 2023 - AnoNasc //Calculo para descobrir a idade
  
  Escreval("Nome: ",Nome) //Organiza��o de dados foco em Experiencia de user
  Escreva("Idade Atual: ",Idade," anos")
  Escreval(" ")
  
  Se (Idade = 18)entao
    Escreva("ANO DE ALISTAMENTO,BOA SORTE SOLDADO")
    //Se idade � igual a 18 apenas dei um (escreva)
  senao
    Se(Idade < 18)entao
      Escreva("FALTAM: ",int(18 - Idade)," ANOS DE IDADE PARA O ALISTAMENTO")
      //se a idade for menor que 18, fa�a a diferen�a entre 18 e a idade e
      //mostre a parte inteira da opera��o.
    senao
      Escreva("ATRASADO: ",(idade - 18)," ANOS DE IDADE PARA O ALISTAMENTO")
      //senao fa�a a diferen�a entre idade e 18.
    FimSe
  FimSe
Fimalgoritmo