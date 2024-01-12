algoritmo "Ex093"
//93) Faça um programa que tenha um procedimento chamado Contador() que recebe
//três valores como parâmetro: o início, o fim e o incremento de uma contagem.
//O programa principal deve solicitar a digitação desses valores e passá-los ao
//procedimento, que vai mostrar a contagem na tela.
var
  I,Fim,P: Inteiro //Inicio, Fim, Passo
  
Procedimento Contagem(A,B,C: Inteiro) //Valores recebidos
var
  Cont: Inteiro //Var contadora de escopo local
inicio
  Se (A = B)entao //Se o inicio for igual ao fim
    Escreva("Nao há contagem a ser feita") //Imprima
  senao
    Se (A < B)entao //Se o inicio for menor que o fim
      EscrevaL("Contando >>>")
      Para Cont de A ate B passo C faca //Contagem Progressiva
        Escreva(Cont)
      FimPara
    senao //Se o inicio for maior que o fim
      EscrevaL("Contando <<<")
      Para Cont de A ate B passo -C faca //Contagem Regressiva
        Escreva(Cont)
      FimPara
    FimSe
  FimSe
FimProcedimento

inicio
  //Entrada de dados
  Escreva("Inicio da contagem: ")
    Leia(I)
  Escreva("Fim da contagem: ")
    Leia(Fim)
  Escreva("Pulo entre cada numero: ")
    Leia(P)

  Contagem(I,Fim,P) //Chama o procedimento passando os parametros
    
fimalgoritmo