algoritmo "Ex059"
//59) Crie um programa que leia o sexo e a idade de várias pessoas.
//O programa vai perguntar se o usuário quer continuar ou não a cada pessoa.
//No final, mostre:
//a) qual é a maior idade lida
//b) quantos homens foram cadastrados
//c) qual é a idade da mulher mais jovem
//d) qual é a média de idade entre os homens
var
  Sexo,Idade: Inteiro //Var para entrada de dados
  Resp: Caractere //Var para resposta
  C: Inteiro //Var contadora
  MaiorIdade: Inteiro //Var para maior idade digitado
  TotIdadeH,TotH: Inteiro //Var para caso for homem
  MulherJovem: Inteiro //Var para caso for mulher
  Media: Real //Calculo da media
inicio
  Resp <- "S" //Resposta inicia com S
  //Inicio das var's com 0
  MaiorIdade <- 0
  C <- 0
  TotIdade <- 0
  TotH <- 0
  MulherJovem <- 0
  Enquanto (Resp <> "N")faca //Ate resposta for igual a N
    C <- C + 1 //Contador ira adicionar +1
    //Entrada de dados
    EscrevaL("Sexo:")
    EscrevaL("[1]Masculino")
    EscrevaL("[2]Feminino")
      Leia(Sexo)
    Escreva("Qual sua idade: ")
      Leia(Idade)

    //Se idade digitada for maior que a idade anterior
    Se (Idade > MaiorIdade)entao
        MaiorIdade <- Idade //Entao idade atual sera a maior idade
      FimSe
      
    Escolha Sexo
      Caso 1 //Homem
        TotIdadeH <- TotIdadeH + Idade //Idade acumulativa dos homens total
        TotH <- TotH + 1 //Total de homens cadastrados
      Caso 2
        Se (C = 1)entao //Se Contador for igual a 1
          MulherJovem <- Idade //A primeira idade sera base de referencia
        senao //Se for a segunda ou adiante
          Se (Idade < MulherJovem)entao //So a menor idade que a anterior
            MulherJovem <- Idade //Sera trocada
          FimSe
        FimSe
    FimEscolha

    //COn
    Escreva("Quer continuar: [S/N] ")
      Leia(Resp)
    
    EscrevaL(" ")
    
    Se (C%2 = 0)entao //Se Contador for divisel por 2
      LimpaTela //Limpe a tela para evitar acumulo de info
    FimSe
  FimEnquanto

  Media <- TotIdadeH / TotH //Baseado em total de idades / total de homens
  
  //Saida de dados
  EscrevaL("----------")
  EscrevaL("RESULTADOS")
  EscrevaL("----------")
  
  EscrevaL(" ")
  
  EscrevaL("Maior idade: ",MaiorIdade)
  EscrevaL("Total de homens cadastrados: ",TotH)
  EscrevaL("Idade da mulher mais jovem: ",MulherJovem)
  EscrevaL("Media de idade entre os homens: ",Media:3:1)
fimalgoritmo