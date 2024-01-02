algoritmo "Ex029"
//29) Desenvolva um programa que leia o nome de um funcionário, seu salário,
//quantos anos ele trabalha na empresa e mostre seu novo salário, reajustado de
//acordo com a tabela a seguir:
//- Até 3 anos de empresa: aumento de 3%
//- entre 3 e 10 anos: aumento de 12.5%
//- 10 anos ou mais: aumento de 20%
var
  Nome: Caractere //Var para nome
  Slr: Real //Var para salario
  Ano: Inteiro //Var para anos trabalhados
  NvSlr: Real //Var para o novo salario
  Msg: Caractere //Mensagens para cada condição satisfeita
inicio
  //Empresa ficticia rs
  Escreval("---------------------")
  Escreval("FAZBEAR ENTERTAINMENT")
  Escreval("---------------------")
  
  Escreval(" ")
  
  //Entrada de dados
  Escreva("Digite seu nome: ")
  Leia(Nome)
  Escreva("Digite seu salario: ")
  Leia(Slr)
  Escreva("Quantos anos você trabalha na empresa: ")
  Leia(Ano)

  //Processamento de dados
  Se (Ano < 3)entao //Se tiver trabalhado entre 1 e 2 anos
    Msg <- "Acrescimo de 3%" //Ele recebera 3% de aumento
    NvSlr <- Slr + (Slr * 3/100)
  senao
  //Mais duas condições
    Se (Ano < 10)entao //Se tiver trabalhado entre 3 e 9 anos
      Msg <- "Acrescimo de 12.5%" //Ele recebera 12.5% de aumento
      NvSlr <- Slr + (Slr * 12.5/100)
    senao
      Msg <- "Acrescimo de 15%" //Se tiver trabalhado 10 ou mais anos
      NvSlr <- Slr + (Slr * 15/100) //Recebera 15% de aumento
    FimSe
  FimSe
  
  LimpaTela //Limpa toda a tela
  
  //Organização de dados
  Escreval("NOME: ",Nome)
  Escreval("SALARIO ANTIGO: ",Slr)
  Escreval("SALARIO ATUAL: ",NvSlr," ",Msg)
  Escreval("OBRIGADO POR CONTRIBUIR ",Ano," anos por esta empresa")

fimalgoritmo