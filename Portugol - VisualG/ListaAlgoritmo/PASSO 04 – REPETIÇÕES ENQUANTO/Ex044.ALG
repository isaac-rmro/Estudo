algoritmo "Ex044"
//44) Crie um algoritmo que leia o valor inicial da contagem, o valor final
//e o incremento, mostrando em seguida todos os valores no intervalo:
//Ex: Digite o primeiro Valor: 3
//Digite o último Valor: 10
//Digite o incremento: 2
//Contagem: 3 5 7 9 Acabou!
var
  InicioC,FimC,Incremento: Inteiro //Var para guarda de dados
  C: Inteiro //Contador
inicio
  //Entrada de dados
  Escreva("Valor inicial: ")
    Leia(InicioC)
  Escreva("Valor final: ")
    Leia(FimC)
  Escreva("Valor do incremento: ")
    Leia(Incremento)

  C <- InicioC //Contador recebe o valor do inicio da contagem dada pelo user
  
  Escreva("Contagem:") //Titulo da contagem
  Enquanto (C <= FimC)faca //Enquanto C for menor que o fim dado pelo user
    Escreva(C) //Exiba C
    C <- C + Incremento //C recebe o valor dele + o incremento dado pelo user
    //Fazendo o looping ate atingir o FimC
  FimEnquanto
  
  //Exiba Acabou ao final da contagem
  Escreva(" Acabou!")
  

fimalgoritmo