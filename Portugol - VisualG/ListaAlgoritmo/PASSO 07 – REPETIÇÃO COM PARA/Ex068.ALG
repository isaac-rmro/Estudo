algoritmo "Ex068"
//68) Crie um programa que leia sexo e peso de 8 pessoas, usando a estrutura
//“para”. No final, mostre na tela:
//a) Quantas mulheres foram cadastradas
//b) Quantos homens pesam mais de 100Kg
//c) A média de peso entre as mulheres
//d) O maior peso entre os homens
var
  Peso, Sexo: Inteiro //Var de entrada
  Cont, ContM, ContH: Inteiro //Var contadora
  PesoH100, PesoM, Maior : Inteiro //Var somadora
  Media: Real //Var para media
inicio
  //Inialização de valores
  ContH <- 0
  ContM <- 0
  Maior <- 0
  PesoH100 <- 0
  PesoM <- 0
  
  Para Cont de 1 ate 8 faca //8 repetições
    //Entrada de valores
    EscrevaL("Cadastro: ",Cont)
    Escreva("Digite seu peso: kg")
      Leia(Peso)
    EscrevaL("Digite seu sexo:")
    EscrevaL("[1]Homem")
    EscrevaL("[2]Mulher")
      Leia(Sexo)
    EscrevaL(" ")
    
    Escolha Sexo
      Caso 1 //Homem
        ContH <- 1 //Contador de homem
        Se (ContH = 1)entao //Se contador for igual a 1
          Maior <- Peso //Recebe o primeiro peso para comparar com os proximos
        senao
          Se (Peso > Maior)entao //Se nao for o primeiro contador
            Maior <- Peso //E o peso for maior que o maior peso entao troca
          FimSe
        FimSe
        Se (Peso > 100)entao //Se o peso do homem for maior que 100
          PesoH100 <- PesoH100 + 1 //Contador recebe + 1
        FimSe

      Caso 2 //Mulher
        PesoM <- PesoM + Peso //Somativa de peso entre mulheres
        ContM <- ContM + 1 //Contador de mulheres
    FimEscolha
  FimPara
  
  Media <- PesoM/ContM //Soma dos pesos das mulheres / Contagem de mulheres
  
  //Saida de dados
  EscrevaL("MULHERES CADASTRADAS: ",ContM)
  EscrevaL("CONTAGEM DE HOMENS COM MAIS DE 100KG: ",PesoH100)
  EscrevaL("MEDIA DE PESO ENTRE AS MULHERES: ",Media:3:2)
  EscrevaL("MAIOR PESO ENTRE OS HOMENS: ",Maior)
fimalgoritmo