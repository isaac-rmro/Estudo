algoritmo "Ex052"
//52) Crie um algoritmo que leia a idade de 10 pessoas, mostrando no final:
//a) Qual é a média de idade do grupo
//b) Quantas pessoas tem mais de 18 anos
//c) Quantas pessoas tem menos de 5 anos
//d) Qual foi a maior idade lida
var
  C: Inteiro //Var contadora
  Idade: Inteiro //Var para idade
  Soma: Inteiro //Var para soma
  Media: Real //Var para calculo da media
  Menor5,Maior18,MaiorIdade: Inteiro //Var's para guarda de result verificação
inicio
  C <- 1 //Contador inicia com 1
  Enquanto (C <= 10)faca //Enquanto 1 for menor que 10
    Escreva("[",C,"°] Digite sua idade: ") //Repita esta mensagem 10 vezes
      Leia(Idade)
    Soma <- Soma + Idade //Adicione a idade a var soma

    Se (C = 1)entao //Se for a primeira contagem
      MaiorIdade <- Idade //Maior idade ira receber idade
    senao
      Se (Idade > MaiorIdade)entao //Verifica se a idade é maior que a ult digitada
        MaiorIdade <- Idade //Se for troca
      FimSe
    FimSe
    
    Se (Idade < 5)entao //Se idade for menor que 5
      Menor5 <- Menor5 + 1 //Adicione +1 a Var
    senao
      Se (Idade > 18)entao //Se idade for maior que 18
        Maior18 <- Maior18 + 1 //Adicione +1 a Var
      FimSe
    FimSe
    
    C <- C + 1 //Contador recebe + 1 e repete ate atingir 10 tentativas
  FimEnquanto
  
  Media <- Soma/10 //Media = Soma de todos os numeros divido por tentativas
  
  LimpaTela
  
  //Saida de resultados
  Escreval("RESULTADOS")
  
  EscrevaL(" ")
  
  EscrevaL("MEDIA: ",Media:3:1)
  EscrevaL("MAIOR 18 ANOS: ",Maior18," anos(s)")
  EscrevaL("MENOR 5 ANOS: ",Menor5," anos(s)")
  Escreva("MAIOR IDADE REGISTRADA: ",MaiorIdade," ano(s)")
fimalgoritmo