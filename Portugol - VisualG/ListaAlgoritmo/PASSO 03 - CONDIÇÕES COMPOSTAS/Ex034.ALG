algoritmo "Ex034"
//34) O Índice de Massa Corpórea (IMC) é um valor calculado baseado na altura
//e no peso de uma pessoa. De acordo com o valor do IMC, podemos classificar o
//indivíduo dentro de certas faixas.
//- abaixo de 18.5: Abaixo do peso
//- entre 18.5 e 25: Peso ideal
//- entre 25 e 30: Sobrepeso
//- entre 30 e 40: Obesidade
//- acima de 40: Obseidade mórbida
//Obs: O IMC é calculado pela expressão peso/altura²
//(peso dividido pelo quadrado da altura)
var
  Peso,Altura: Real //Var para entrada de dados
  IMC: Real //Var para guarda de resultado de imc
inicio
  //Filura
  Escreval("------------------")
  Escreval("CALCULADORA DE IMC")
  Escreval("------------------")

  //Entrada de dados
  Escreva("Digite seu peso: Kg")
    Leia(Peso)
  Escreva("Digite sua altura: m")
    Leia(Altura)

  IMC <- Peso / (Altura^2) //Calculo do imc
  
  Escreval("SEU IMC É DE: ",IMC:3:1) //Exibição do imc
  
  //Condições
  Se (IMC < 18.5)entao //Se menor que tal numero entao exiba
    Escreva("Abaixo do peso")
  senao
    Se (IMC < 25)entao
      Escreva("Peso ideal")
    senao
      Se (IMC < 30)entao
        Escreva("Sobrepeso")
      senao
        Se (IMC < 40)entao
          Escreva("Obesidade")
        senao
          Escreva("Obesidade mórbida")
        FimSe
      FimSe
    FimSe
  FimSe
  
fimalgoritmo