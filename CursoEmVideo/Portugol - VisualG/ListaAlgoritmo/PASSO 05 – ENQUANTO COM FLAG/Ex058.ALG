algoritmo "Ex058"
//58) Fa�a um algoritmo que leia a idade de v�rios alunos de uma turma.
//O programa vai parar quando for digitada a idade 999. No final, mostre
//quantos alunos existem na turma e qual � a m�dia de idade do grupo.
var
  Idade: Inteiro //Var para idade
  TotAluno,TotIdade,VerIdade: Inteiro //Var para Verifica��o e acumula��o de result
  Media: Real //Calculo media
inicio
  //Inicio das variaveis com 0
  Idade <- 0
  TotIdade <- 0
  TotAluno <- 0
  VerIdade <- 0
  
  EscrevaL("------------------")
  EscrevaL("LISTAGEM DE IDADES")
  EscrevaL("------------------")
  
  EscrevaL(" ")
  
  Enquanto (Idade <> 999)faca //Enquanto Idade lida ser diferente de 999 repita
    EscrevaL("QTD ALUNOS:",TotAluno)
    Escreva("Digite sua idade: (yy) ") //Pe�a idade
      Leia(Idade)
      
    EscrevaL(" ")
    
      Se (Idade = 999)entao //Se a idade for igual a 999
        VerIdade <- VerIdade + 999 //Ira guardar o valor 999 na var verificada
        TotAluno <- TotAluno - 1 //E ira ser retirado um aluno, pois � invalido
      FimSe
      
      TotIdade <- (TotIdade + Idade) - VerIdade //Idades somados - 999
      TotAluno <- TotAluno + 1
      
      Se (TotAluno%5 = 0)entao //Se o total de aluno for divisivel por 5
        LimpaTela //LimpaTela para n�o acumular respostas ;)
      FimSe
  FimEnquanto
  
  Media <- (TotIdade / TotAluno) //Baseia-se em todas as idades / total de alunos
  
  //Saida de dados
  
  LimpaTela
  
  EscrevaL("RESULTADOS")
  EscrevaL("QTD ALUNO: ",TotAluno)
  Escreva("MEDIA DE IDADE DOS ALUNOS: ",Media:3:1," anos")

fimalgoritmo