Algoritmo "Ex084"
//84) Crie um programa que leia o nome e a idade de 9 pessoas e guarde esses
//valores em dois vetores, em posições relacionadas.
//No final, mostre uma listagem contendo apenas os dados das pessoas menores
//de idade.
Var
  I: Inteiro //Var contadora
  //Var's para processamento de dados e guarda de resultados
  Nome,NomeM: vetor[1..9] de Caractere
  Idade,IdadeM: vetor[1..9] de Inteiro
  P: vetor[1..9] de Inteiro
  
Inicio
  Para I de 1 ate 9 faca //Preenche todos as posições dos vetores
    //Entrada de dados
    EscrevaL("USUARIO: ",I) //Mostra o contador atual
    Escreva("Nome: ")
      Leia(Nome[I])
    Escreva("Idade: ")
      Leia(Idade[I])

    Se (Idade[I] < 18)entao //Se a pessoa for menor de idade
      //Ira salvar as informações dela
      NomeM[I] <- Nome[I]
      IdadeM[I] <- Idade[I]
      P[I] <- I
    FimSe

    EscrevaL(" ")
  FimPara
  
  LimpaTela
  
  EscrevaL("MENORES DE IDADE")
  
  //No final apenas imprime as informações organizadas de cada menor de idade
  Para I de 1 ate 9 faca
    Se (IdadeM[I] <> 0)entao
      EscrevaL("POSIÇÃO: [", P[I], " ]")
      EscrevaL("NOME: ", NomeM[I])
      EscrevaL("IDADE: ", Idade[I])
      
      EscrevaL(" ")
      
    FimSe
  FimPara
  
Fimalgoritmo