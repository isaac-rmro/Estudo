Algoritmo "Ex085"
//85) Fa�a um algoritmo que leia o nome, o sexo e o sal�rio de 5 funcion�rios
//e guarde esses dados em tr�s vetores. No final, mostre uma listagem contendo
//apenas os dados das funcion�rias mulheres que ganham mais de R$5 mil.
Var
  I: Inteiro //Var contadora
  Nome, NomeM: vetor[1..5] de Caractere //Var's para entrada de dados e verifica��o
  Sal, SalM: vetor[1..5] de Real
  Sexo: vetor[1..5] de Inteiro
  ContM: vetor[1..5] de Inteiro
Inicio
  //Loop para obter informa��es de 5 usu�rios
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
      
    //Verifica se o usu�rio � do sexo feminino e tem sal�rio acima de R$5000
    Escolha Sexo[I]
      Caso 2
        Se (Sal[I] > 5000)entao
          ContM[I] <- ContM[I] + 1
          NomeM[I] <- Nome[I]
          SalM[I] <- Sal[I]
        FimSe
    FimEscolha
      
    EscrevaL("")
    
    //Limpa a tela a cada dois usu�rios
    Se (I%2= 0)entao
      LimpaTela
    FimSe
  FimPara
  
  //Exibe informa��es sobre mulheres com sal�rio superior a R$5000
  EscrevaL("INFORMA��ES MULHERES")
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