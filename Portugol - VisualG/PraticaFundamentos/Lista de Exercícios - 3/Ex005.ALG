algoritmo "Ex005"
//5. Faça um algoritmo que leia 20 numeros e os armazene em um vetor. Depois
//, some os 10 primeiros elementos deste vetor

var
  I: Inteiro //Var indice
  Num: Vetor[1..20] de Inteiro //Vetor de 20 posição
  S: Inteiro //Var para garda de soma

inicio
  Para I de 1 ate 20 faca //Repete 20 vezes
    Escreva("Digite o ", I, "° numero: ") //Solicita o numero na posicao atual
      Leia(Num[I]) //Guarda o numero na posicao do indice
  FimPara
  
  Para I de 1 ate 10 faca //Faz a soma entre os dez primeiros numeros
    S <- S + Num[I]
  FimPara
  
  Escreva("SOMA ENTRE AS 10 PRIMEIRAS POSIÇÕES: ", S)
  
fimalgoritmo