algoritmo "Ex082"
//82) Faça um algoritmo que leia a nota de 10 alunos de uma turma e guarde-as
//em um vetor. No final, mostre:
//a) Qual é a média da turma
//b) Quantos alunos estão acima da média da turma
//c) Qual foi a maior nota digitada
//d) Em que posição a maior nota aparece
var
  I: Inteiro //Contador
  N: vetor[1..10] de Inteiro //Var entrada de dado
  Soma: Inteiro //Var's para processamento e guarda de dados
  MT: Real
  AP: Inteiro
  Maior,P: Inteiro
inicio
  Para I de 1 ate 10 faca //Repete de 1 ate 10
    EscrevaL("ALUNO: ", I) //Mostre o valor da contagem atual
    Escreva("Digite sua nota: ")
      Leia(N[I]) //Preenche o vetor na posição do cont atual

    Soma <- Soma + N[I] //Soma de valores

    Se (N[I] > Maior)entao //Verificação do numero maior
      Maior <- N[I]
      P <- I //Guarda da posição
    FimSe

    EscrevaL(" ")
    
    Se (I=6)entao
      LimpaTela //Evita acumulo de info
    FimSe
  FimPara
  
  MT <- Soma/10 //Calculo da media (Resultados Total/10 usuarios)
  
  Para I de 1 ate 10 faca
    Se (N[I] > MT)entao //Verificação de nota acima da media da turma individual
      AP <- AP + 1
    FimSe
  FimPara
  
  //Saidade de dados
  EscrevaL("LISAGEM")
  EscrevaL("------------------")

  EscrevaL("MEDIA DA TURMA: ", MT:3:1)
  EscrevaL("QTD ALUNOS ACIMA DA MEDIA: ", AP)
  EscrevaL("MAIOR NOTA: ", Maior, " Posição: ", P)
fimalgoritmo