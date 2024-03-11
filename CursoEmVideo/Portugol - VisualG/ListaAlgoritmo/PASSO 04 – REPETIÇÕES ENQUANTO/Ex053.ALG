algoritmo "Ex053"
//53) Faça um programa que leia a idade e o sexo de 5 pessoas,
//mostrando no final:
//a) Quantos homens foram cadastrados
//b) Quantas mulheres foram cadastradas
//c) A média de idade do grupo
//d) A média de idade dos homens
//e) Quantas mulheres tem mais de 20 anos
var
  C: Inteiro //Contador
  Idade,Sexo: Inteiro //Var para guarda de resultado
  Homem,Mulher: Inteiro //Var para guarda de qtd
  IdadeHomem,MulherIdade20: Inteiro //Var's para condições
  Soma: Inteiro //Var para somar
  Media,MediaIdadeH: Real //Var's para media
inicio
  C <- 1 //Contador inicializa com 1
  Enquanto (C <= 5)faca //Enquanto 1 for menor que 5
  Escreva("[",C,"°] Digite sua idade: ") //Peça idade
    Leia(Idade)

  Escreval(" ")
    
  EscrevaL("Sexo:") //E sexo
  EscrevaL("[1]Masculino")
  EscrevaL("[2]Feminino")
    Leia(Sexo)
    
  Escolha Sexo
    Caso 1 //Homem
      Homem <- Homem + 1 //Qtd homem adiciona +1
      IdadeHomem <- IdadeHomem + Idade //Var para acumulação de idade
    Caso 2 //Mulher
      Mulher <- Mulher + 1 //Qtd mulher adiciona +1
      Se (Idade > 20)entao //Se idade for maior que 20
        MulherIdade20 <- MulherIdade20 + 1 //Var para acumulação de idade
      FimSe
  FimEscolha

  Soma <- Soma + Idade //Soma de todas as idades do grupo
  C <- C + 1 //Adiciona + 1 ao contador e reinicia o looping
  
  FimEnquanto
  
  LimpaTela
  
  //Calculo de medias
  Media <- Soma / 5
  MediaIdadeH <- IdadeHomem / Homem
  
  //Saida de dados
  EscrevaL("HOMENS CADASTRADOS: ",Homem)
  EscrevaL("MULHERES CADASTRADAS: ",Mulher)
  EscrevaL("MEDIA DO GRUPO: ",Media:3:2)
  EscrevaL("MEDIA DE IDADE DOS HOMENS: ",MediaIdadeH:3:2)
  Escreva("MULHERES ACIMA DE 20 ANOS: ",MulherIdade20)

fimalgoritmo