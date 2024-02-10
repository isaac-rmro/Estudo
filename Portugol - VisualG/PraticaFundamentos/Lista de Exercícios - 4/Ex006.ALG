algoritmo "Ex006"
var
  I, J, Cont: Inteiro
  Gabarito: Vetor[1..10] de Caractere
  ValidaResp: Logico
  Aluno: Vetor[1..3] de Inteiro
  RespAluno: Vetor[1..30] de Caractere
  ContQuestao: Inteiro
  TotAluno: Vetor[1..3] de Inteiro
  MediaTurma: Real
  Sit: Caractere
  
Funcao VerGabarito(resposta: Caractere): Logico
var
  valida: Logico
inicio
  valida <- (resposta = "a") ou (resposta = "b") ou (resposta = "c") ou (resposta = "d")
  Retorne valida
FimFuncao

Procedimento MensagemErro()
inicio
  Se (ValidaResp = Falso)entao
    EscrevaL()
    EscrevaL("DIGITE UMA OPÇÃO ENTRE A e D")
  FimSe
FimProcedimento

Procedimento VerAluno()
inicio
  Escreva(I, "° - DIGITE O NUMERO DA MATRICULA: ")
    Leia(Aluno[I])
FimProcedimento

Procedimento Preenche()
inicio
  Escreva("RESPOSTA PARA ", ContQuestao, "° QUESTÃO: ")
    Leia(RespAluno[J])
FimProcedimento

Procedimento MostraResult()
inicio
  EscrevaL("QUESTÃO ", ContQuestao, "°: ", RespAluno[J])
FimProcedimento

Procedimento MostraNota()
inicio
  EscrevaL("NOTA ALUNO: ", TotAluno[I])
  EscrevaL("SITUACAO: ", Sit)
  EscrevaL()
FimProcedimento

Funcao VerMedia(nota1,nota2,nota3: Inteiro): Real
var
  m: Real
inicio
  m <- (nota1 + nota2 + nota3) / 3
  Retorne m
FimFuncao

Funcao VerSit(nota: Inteiro): Caractere
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
  Para I de 1 ate 10 faca
    Repita
      Escreva("RESPOSTA PARA ", I, "° QUESTÃO: ")
      Leia(Gabarito[I])
      ValidaResp <- VerGabarito(Gabarito[I])
      MensagemErro()
    Ate(ValidaResp = Verdadeiro)
  FimPara
  
  LimpaTela
  
  //Aluno
  
  Para I de 1 ate 3 faca
    Escolha I
      Caso 1
        ContQuestao <- 0
        VerAluno()
        Para J de 1 ate 10 faca
          ContQuestao <- ContQuestao + 1
          Repita
            Preenche()
            ValidaResp <- VerGabarito(RespAluno[J])
            MensagemErro()
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

//Questão vale 1 ponto
//3 alunos + Matricula(Numero Inteiro) + Respostas