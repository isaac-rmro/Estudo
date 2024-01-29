algoritmo "Ex008"
//8. Crie um programa que leia três numeros e os imprima em ordem crescente
var
  I, J: Inteiro //Var contadoras
  Num: vetor[1..3] de Inteiro //Vetor para guarda de 3 numeros
  Aux: Inteiro //Var para auxiliar a troca
inicio
//Ordem crescente (menor para o maior)
  Para I de 1 ate 3 faca //Solicita 3 numeros
    Escreva("DIGITE O ", I, "° NUM: ")
      Leia(Num[I])
  FimPara

  Para I de 1 ate 3 faca //Compara o primeiro numero com os outros
    Para J de I+1 ate 3 faca //Numeros a frente do primeiro
      Se (Num[I] > Num[J])entao //Se o num.atual for maior que o num.sucessor
        Aux <- Num[I] //Auxiliar ira receber o numero atual
        Num[I] <- Num[J] //O numero atual ira trocar para o numero sucessor
        Num[J] <- Aux //E o numero sucessor irá ser o numero atual
      FimSe
    FimPara
  FimPara //Resumindo apenas ocorre a troca caso o numero atual for maior que
  //o numero a sua frente
  
  Para I de 1 ate 3 faca //Exibicao de ordenação
    Escreva(Num[I], " ")
  FimPara
fimalgoritmo