algoritmo "Ex003"
//3. Crie um programa que calcule a média de três notas e informe se o aluno
//foi aprovado (média maior ou igual a 7)ou reprovado (média menor que 7).
var
  Nome: Caractere //Var para guardar o nome do usuario
  I: Inteiro //Var contadora
  Nota: vetor[1..3] de Real //Vetor para notas
  Media: Real //Var para calculo da media
  Sit: Caractere //Var para situacao do aluno
  
Funcao VerMedia(n1,n2,n3: Real): Real
inicio
  Retorne (n1 + n2 + n3)/3 //Formula simples da media (soma dos num)/qtd.num
FimFuncao

Funcao VerSit(m: Real): Caractere
var
  msg: Caractere
inicio
  Se (m < 7)entao //Se a media for menor que 7
    msg <- "ALUNO REPROVADO" //Mensagem (Reprovado)
  senao
    Se (m >= 7)entao //Se for maior ou igual a 7
      msg <- "ALUNO APROVADO" //Mensagem (Aprovado)
    FimSe
  FimSe
  Retorne msg //Retorna a mensagem apos fazer a verificacao da situacao
FimFuncao

inicio
  Escreva("Digite seu nome: ")
    Leia(Nome) //Solicita o nome
    
  Para I de 1 ate 3 faca //Comeca a contagem de 1 ate 3
    Repita //Irá repetir o enquanto as notas forem invalidas
    Escreva("Digite sua ", I, "° nota: ") //Exibi a posicao atual da contagem
      Leia(Nota[I]) //Guarda nota dentro do vetor na posicao da contagem
    Se (Nota[I] < 1) ou (Nota[I] > 10)entao
      EscrevaL() //Mensagem caso a nota for invalida
      EscrevaL("NOTA INVALIDA, INSIRA UM VALOR DE 1 ATÉ 10")
    FimSe
    Ate (Nota[I] > 0) e (Nota[I] < 11)
  FimPara
  
  Media <- VerMedia(Nota[1],Nota[2],Nota[3]) //Funcao para calculo da media
  Sit <- VerSit(Media) //Verifica a situacao do aluno
  
  LimpaTela //Limpa a tela
  
  //Exibicao dos dados
  EscrevaL("NOME: ", Nome)
  EscrevaL("MEDIA DO ALUNO: ", Media:3:1)
  Escreva("SITUACAO DO ALUNO: ", Sit)
fimalgoritmo