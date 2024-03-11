Algoritmo "Ex085"
//85) Faça um algoritmo que leia o nome, o sexo e o salário de 5 funcionários
//e guarde esses dados em três vetores. No final, mostre uma listagem contendo
//apenas os dados das funcionárias mulheres que ganham mais de R$5 mil.
Var
  I: Inteiro //Var contadora
  Nome, NomeM: vetor[1..5] de Caractere //Var's para entrada de dados e verificação
  Sal, SalM: vetor[1..5] de Real
  Sexo: vetor[1..5] de Inteiro
  ContM: vetor[1..5] de Inteiro
Inicio
  //Loop para obter informações de 5 usuários
  Para I de 1 ate 5 faca
    EscrevaL("USUARIO: ", I)
    Escreva("NOME: ")
      Leia(Nome[I])
    Escreva("SALARIO: R$")
      Leia(Sal[I])
    EscrevaL("----------")
    EscrevaL("SEXO")
    EscrevaL("[1]Homem")
    EscrevaL("[2]Mulher")
      Leia(Sexo[I])
      
    //Verifica se o usuário é do sexo feminino e tem salário acima de R$5000
    Escolha Sexo[I]
      Caso 2
        Se (Sal[I] > 5000)entao
          ContM[I] <- ContM[I] + 1
          NomeM[I] <- Nome[I]
          SalM[I] <- Sal[I]
        FimSe
    FimEscolha
      
    EscrevaL("")
    
    //Limpa a tela a cada dois usuários
    Se (I%2= 0)entao
      LimpaTela
    FimSe
  FimPara
  
  //Exibe informações sobre mulheres com salário superior a R$5000
  EscrevaL("INFORMAÇÕES MULHERES")
  EscrevaL("--------------------------")
  Para I de 1 ate 5 faca
    Se (ContM[I] <> 0)entao
      EscrevaL("NOME: ", NomeM[I])
      EscrevaL("SALARIO: ", SalM[I])
      Escreval("SEXO: FEMININO")
  
      EscrevaL(" ")
    FimSe
  FimPara
Fimalgoritmo