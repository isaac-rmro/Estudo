algoritmo "Ex060"
//60) Desenvolva um algoritmo que leia o nome, a idade e o sexo de várias
//pessoas. O programa vai perguntar se o usuário quer ou não continuar.
//No final, mostre:
//a) O nome da pessoa mais velha
//b) O nome da mulher mais jovem
//c) A média de idade do grupo
//d) Quantos homens tem mais de 30 anos
//e) Quantas mulheres tem menos de 18 anos
var
  Resp: Caractere //Var para resposta
  Nome,NomeMaior,NomeMulherJ: Caractere //Var para guarda de nomes
  Sexo,Idade: Inteiro //Var para entrada de dados
  MaiorIdade,MulherJovem,TotIdade,H30,IdadeMenor18M: Inteiro //Var acumuladoras
  Media: Real //Var para media
  C,CM: Inteiro //Var contadora de total de mulheres e ao todo
inicio
  //Inicializar com 0 e Resposta padrão
  Resp <- "S"
  MaiorIdade <- 0
  C <- 0
  CM <- 0
  TotIdade <- 0
  
  EscrevaL("------------------")
  EscrevaL("ESTUDO DE GRUPOS")
  EscrevaL("------------------")
  
  Enquanto (Resp <> "N")faça //Enquanto a resposta não for N
    C <- C + 1 //Começa a contar repetição
    //Entrada de dados
    EscrevaL("Sexo")
    EscrevaL("[1]Homem")
    EscrevaL("[2]Mulher")
      Leia(Sexo)
    Escreva("Digite seu nome: ")
      Leia(Nome)
    Escreva("Digite sua idade: ")
      Leia(Idade)

    TotIdade <- TotIdade + Idade //Soma de todas as idades
    
    Se (Idade > MaiorIdade)entao //Se a idade digitada for maior que 0
      MaiorIdade <- Idade //ou a var anterior entao Maior idade recebe idade atual
      NomeMaior <- Nome //Juntamento com o Nome
    FimSe

    Escolha Sexo
      //Homem
      Caso 1
        Se (Idade > 30)entao //Maior de 30 anos
          H30 <- H30 + 1 //Conta + 1
        FimSe
      //Mulher
      Caso 2
        CM <- C + 1 //Contadora de opção escolhida (mulher)
        Se (C = 1)entao //Se for a primeira vez
          MulherJovem <- Idade //A 1° idade ira ser a de referencia
        senao
          Se (Idade < MulherJovem)entao //Ira comparar ate validar a menor idade
            MulherJovem <- Idade
            NomeMulherJ <- Nome //Quando temrinar ira guardar o nome
          FimSe
        FimSe
        
        Se (Idade < 18)entao //Se a idade da mulher for menor que 18 anos
          IdadeMenor18M <- IdadeMenor18M + 1 //A var idade recebe + 1
        FimSe
    FimEscolha

    Escreva("Quer continuar [S/N]:") //Resposta sim ou nao
      Leia(Resp)
      
    EscrevaL(" ")
    
    Se (C%2 = 0)entao //Se a tentativa for divisivel por 2
      LimpaTela //Limpa a tela para não acumular info
    FimSe
  FimEnquanto
  
  Media <- TotIdade / C //Baseia se em Total de idade e quantas pesssoas tem
  
  Se (CM = 0)entao //Se Contador de mulher for igual a 0
    NomeMulherJ <- "(Nenhuma mulher cadastrada)" //Var guarda msg
  FimSe
  
  LimpaTela //Limpa a tela para exibição de resultados
  
  EscrevaL("----------")
  EscrevaL("RESULTADOS")
  EscrevaL("----------")
  
  EscrevaL(" ")
  
  EscrevaL("Nome da pessoa mais velha: ",NomeMaior)
  EscrevaL("Nome da mulher mais jovem: ",NomeMulherJ)
  EscrevaL("Media de idade do grupo: ",Media:3:1)
  EscrevaL("Quantos homens tem mais de 30 anos: ",H30)
  EscrevaL("Quantas mulheres tem menos de 18 anos: ",IdadeMenor18M)
fimalgoritmo