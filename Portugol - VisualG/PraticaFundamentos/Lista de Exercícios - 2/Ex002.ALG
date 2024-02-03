algoritmo "Ex002"
//2. Crie um programa que calcule a média de uma lista de números fornecidas
//pelo usuário. O programa deve continuar pedindo números até que o usuario
//deseje parar de inserir valores informando um numero negativo.
var
  Num: Inteiro //Var para guarda de numero
  C: Inteiro //Var contadora de numeros digitados
  Guarda: Inteiro //Var para acumular os valores digitados
  Media: Real //Var para verificacao da media
  
Funcao VerMedia(num,c: Inteiro): Real //Verifica a media
var
  m: Real //Var local para guarda da media
inicio
  m <- num/c //Soma dos numeros / Qtd de numeros digitados
  Retorne m //Retorna o resultado da media
FimFuncao

inicio
  C <- 0 //Conta repetição começa com 0
  
  Repita
    Escreva("DIGITE UM NUMERO: ") //Solicita um numero
    Leia(Num)
    Guarda <- Guarda + Num //Acumula ele dentro da variavel guarda
    EscrevaL() //Pula um espaço

    C <- C + 1 //Conta a primeira repetição
  Ate(Num < 0) //Repete ate o numero for negativo

  Media <- VerMedia(Guarda,C) //Verifica a media
  
  //Exibe os resultados
  
  LimpaTela
  
  EscrevaL("TOTAL DOS VALORES DIGITADOS: ", Guarda)
  EscrevaL("TOTAL DE NUMEROS DIGITADOS: ", C)
  EscrevaL("MEDIA: ", Media)
fimalgoritmo