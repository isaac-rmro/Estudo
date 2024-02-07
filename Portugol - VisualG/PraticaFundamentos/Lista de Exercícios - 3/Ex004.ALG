algoritmo "Ex004"
//Crie um algoritmo para ler 10 numeros inteiros, armazenar em um vetor e
//mostrar no final, os que forem maiores ou igual a 10
var
  I: Inteiro //Var contadora
  Num: Vetor[1..10] de Inteiro //Vetor de 10 posições
  
inicio
  Para I de 1 ate 10 faca //Preenche todas as posições do vetor
    Escreva("Digite o ", I, "° valor: ") //Solicita o numero
      Leia(Num[I])
  FimPara

  Para I de 1 ate 10 faca //Imprimi os valores contidos
    Se (Num[I] >= 10)entao //Se o numero for maior ou igual a 10
      Escreva("[ ", Num[I], " ] ") //Exiba com []
    senao //Se for menor
      Escreva(Num[I], " ") //Apenas exibe
    FimSe
  FimPara
  
fimalgoritmo