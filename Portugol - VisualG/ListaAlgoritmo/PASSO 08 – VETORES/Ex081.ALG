algoritmo "Ex081"
//81) Crie um programa que leia a idade de 8 pessoas e guarde-as em um vetor.
//No final, mostre:
//a) Qual é a média de idade das pessoas cadastradas
//b) Em quais posições temos pessoas com mais de 25 anos
//c) Qual foi a maior idade digitada (podem haver repetições)
//d) Em que posições digitamos a maior idade
var
  I: Inteiro //Contador
  Idade: vetor[1..8] de Inteiro //Var para guarda de idade
  //Var's e Vetores para processamento de dados
  Soma: Inteiro
  Media: Real
  P,Pmaior: vetor[1..8] de Inteiro
  Maior: Inteiro

inicio
  Para I de 1 ate 8 faca //Repete 8 vezes
    EscrevaL("USUARIO: ",I)
    Escreva("Digite sua idade: ")
      Leia(Idade[I]) //Pede a idade e salva em posição do contador
    Soma <- Soma + Idade[I] //Somador de idades
    
    Se (Idade[I] > 25)entao //Verifica se a idade é maior que 25
      P[I] <- I //E guarda sua posição
    FimSe
    
    Se (Idade[I] > Maior)entao //Verifica se a idade é a maior
      Maior <- Idade[I] //Guarda a idade
      Pmaior[1] <- I //E guarda sua posição
    FimSe
    
    EscrevaL(" ")
    
    Se (I = 4)entao
      LimpaTela //Evita acumulo de info
    FimSe
    
  FimPara

  Media <- Soma/8 //Calculo da soma idade/usuarios
  
  //Saida de resultados
  
  EscrevaL("MEDIA DAS IDADES: ", Media:3:1)
  Escreva("POSIÇÃO COM MAIS DE 25 ANOS: ")
  Para I de 1 ate 8 faca
    Se (P[I] <> 0)entao
      Escreva("[", P[I], " ] ") //Mostra apenas os vetores que tem valores
    FimSe
  FimPara
  EscrevaL(" ")
  Escreva("Maior idade: ",Maior, " (Posição: ", Pmaior[1], " )")
fimalgoritmo