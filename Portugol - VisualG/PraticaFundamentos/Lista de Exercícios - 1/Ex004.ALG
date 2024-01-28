algoritmo "Ex004"
//4. Faça um programa que leia a idade de uma pessoa e informe se ela é maior
//de idade (idade maior ou igual a 18) ou menor de idade.
var
  Idade: Inteiro //Var para guardar a idade
  Info: Caractere //Var para exibir classificacao da idade
  
Funcao VerIdade(i: Inteiro): Caractere //Funcao para verificar a idade
var
  msg: Caractere //Var para guardar a mensagem
inicio
  Se (i < 18)entao //Se idade for menor que 18
    msg <- "MENOR DE IDADE" //Mensagem
  senao //Se a idade for maior que 18
    msg <- "MAIOR DE IDADE" //Mensagem
  FimSe
  Retorne msg //Retorne a o conteudo da mensagem apos a verificacao
FimFuncao
  
inicio
  Repita //Repete
    Escreva("DIGITE SUA IDADE(yy): ") //Solicita a idade
      Leia(Idade)
    Se (Idade < 1) ou (Idade > 99)entao
      LimpaTela //A cada data invalido limpa a tela
    FimSe
  Ate(Idade > 0) e (Idade < 100) //Enquanto os dados não forem validos
  
  Info <- VerIdade(Idade) //Atribuicao do resultado da funcao
  LimpaTela
  
  //Saida de dados
  EscrevaL("IDADE: ", Idade, " anos")
  Escreva("SITUACAO: ", Info)
fimalgoritmo