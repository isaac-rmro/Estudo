algoritmo "Ex006"
//6. Faça um programa para corrigir uma prova com 10 questões de múltipla
//escolha (a, b, c, d ou e), em uma turma com 3 alunos. Cada questão vale 1
//ponto. Leia o gabarito, e para cada aluno leia sua matrícula (número inteiro)
//e suas respostas. Calcule e escreva: para cada aluno, escreva sua matrícula,
//suas respostas e sua nota. Também informe se o aluno foi aprovado ou
//reprovado. O valor de aprovação é 7 na média das notas.

var
  I, J, Cont: Inteiro //Var's contadoras
  Gabarito: Vetor[1..10] de Caractere //Vetor para guarda de gabarito
  ValidaResp: Logico //Validação de resposta
  Aluno: Vetor[1..3] de Inteiro //Vetor para cada aluno
  RespAluno: Vetor[1..30] de Caractere //Vetor para cada resposta de aluno
  ContQuestao: Inteiro //Var contadora de questão 1 a 10
  TotAluno: Vetor[1..3] de Inteiro //Total de cada aluno
  MediaTurma: Real //Media da turma
  Sit: Caractere //Var para situacao do aluno
  
Funcao VerGabarito(resposta: Caractere): Logico //Aceita apenas (a,b,c,d)
var
  valida: Logico
inicio
  valida <- (resposta = "a") ou (resposta = "b") ou (resposta = "c") ou (resposta = "d")
  Retorne valida
FimFuncao

Procedimento MensagemErro() //Mensagem de erro
inicio
  Se (ValidaResp = Falso)entao
    EscrevaL()
    EscrevaL("DIGITE UMA OPÇÃO ENTRE A e D")
  FimSe
FimProcedimento

Procedimento VerAluno() //Cadastra o aluno
inicio
  Escreva(I, "° - DIGITE O NUMERO DA MATRICULA: ")
    Leia(Aluno[I])
FimProcedimento

Procedimento Preenche() //Preenche cada questao
inicio
  Escreva("RESPOSTA PARA ", ContQuestao, "° QUESTÃO: ")
    Leia(RespAluno[J])
FimProcedimento

Procedimento MostraResult() //Mostra o resultado do aluno
inicio
  EscrevaL("QUESTÃO ", ContQuestao, "°: ", RespAluno[J])
FimProcedimento

Procedimento MostraNota() //Mostra a nota total do aluno e sua situacao
inicio
  EscrevaL("NOTA ALUNO: ", TotAluno[I])
  EscrevaL("SITUACAO: ", Sit)
  EscrevaL()
FimProcedimento

Funcao VerMedia(nota1,nota2,nota3: Inteiro): Real //Calculo da media
var
  m: Real
inicio
  m <- (nota1 + nota2 + nota3) / 3
  Retorne m
FimFuncao

Funcao VerSit(nota: Inteiro): Caractere //Verifica a situacao atual do aluno
var
  situacao: Caractere
inicio
  Se (nota >= 7)entao
    situacao <- "APROVADO"
  senao
    situacao <- "REPROVADO"
  FimSe
  Retorne situacao
FimFuncao

inicio
  Para I de 1 ate 10 faca //Solicita o gabarito da prova
    Repita
      Escreva("RESPOSTA PARA ", I, "° QUESTÃO: ")
      Leia(Gabarito[I])
      ValidaResp <- VerGabarito(Gabarito[I]) //Funcao para validar as respostas
      MensagemErro() //Exibe a mensagem de erro caso seja um dado invalido
    Ate(ValidaResp = Verdadeiro)
  FimPara
  
  LimpaTela
  
  //Aluno
  
  Para I de 1 ate 3 faca //3 alunos
    Escolha I //Cada aluno tem seu preenchimento da prova
      Caso 1
        ContQuestao <- 0 //Reinicia o contador de contador de questao para exibição
        VerAluno()
        Para J de 1 ate 10 faca
          ContQuestao <- ContQuestao + 1
          Repita
            Preenche() //Preenche as questoes
            ValidaResp <- VerGabarito(RespAluno[J]) //Verifica os resultados
            MensagemErro() //Exibe erro
          Ate(ValidaResp = Verdadeiro)
        FimPara

        Para J de 1 ate 10 faca
          Se (Gabarito[I] = RespAluno[J])entao
            TotAluno[I] <- TotAluno[I] + 1
          FimSe
        FimPara
        LimpaTela
        
      Caso 2
        ContQuestao <- 0
        VerAluno()
        Para J de 11 ate 20 faca
          ContQuestao <- ContQuestao + 1
          Repita
            Preenche()
            ValidaResp <- VerGabarito(RespAluno[J])
            MensagemErro()
          Ate(ValidaResp = Verdadeiro)
        FimPara
        
        Para J de 11 ate 20 faca
          Se (Gabarito[I] = RespAluno[J])entao
            TotAluno[I] <- TotAluno[I] + 1
          FimSe
        FimPara
        LimpaTela
        
      Caso 3
        ContQuestao <- 0
        VerAluno()
        Para J de 21 ate 30 faca
          ContQuestao <- ContQuestao + 1
          Repita
            Preenche()
            ValidaResp <- VerGabarito(RespAluno[J])
            MensagemErro()
          Ate(ValidaResp = Verdadeiro)
        FimPara
        
        Para J de 21 ate 30 faca
          Se (Gabarito[I] = RespAluno[J])entao
            TotAluno[I] <- TotAluno[I] + 1
          FimSe
        FimPara
        LimpaTela
    FimEscolha
  FimPara

  //Exibicao de resultados

  ContQuestao <- 0
  MediaTurma <- VerMedia(TotAluno[1],TotAluno[2],TotAluno[3])

  EscrevaL("MEDIA DA TURMA: ", MediaTurma:3:1)
  EscrevaL()
  
  Para I de 1 ate 3 faca
    EscrevaL("MATRICULA: ", Aluno[I])
    Se (I = 1)entao
      ContQuestao <- 0
      Para J de 1 ate 10 faca
        ContQuestao <- ContQuestao + 1
        MostraResult()
      FimPara
      Sit <- VerSit(TotAluno[I])
      MostraNota()
    senao
      Se (I = 2)entao
        ContQuestao <- 0
        Para J de 11 ate 20 faca
          ContQuestao <- ContQuestao + 1
          MostraResult()
        FimPara
        Sit <- VerSit(TotAluno[I])
        MostraNota()
      senao
        Se (I = 3)entao
          ContQuestao <- 0
          Para J de 21 ate 30 faca
            ContQuestao <- ContQuestao + 1
            MostraResult()
          FimPara
          Sit <- VerSit(TotAluno[I])
          MostraNota()
        FimSe
      FimSe
    FimSe
  FimPara
fimalgoritmo