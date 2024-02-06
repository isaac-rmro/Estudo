algoritmo "Ex007"
//7. Peça ao usuario para inserir uma sequencia de numeros e, em seguida,
//exiba quantos números pares e quantos numeros impares foram inseridos.
var
  C, Contagem: Inteiro //Contador de numeros
  Num: Inteiro //Numeros digitados
  Par, Impar: Inteiro //Var para guardar qtd de numeros par e impar
  
Funcao VerParOuImpar(n: Inteiro; var par,imp: Inteiro): Inteiro //Verifica
inicio
  Se (n % 2 = 0)entao //Se for par
    par <- par + 1 //O parametro par que está referenciando a var Par recebe +1
  senao //Se for impar
    imp <- imp + 1 //O mesmo acontece para a variavel Impar
  FimSe
FimFuncao

inicio
  C <- 0 //Contador inicia-se com 0
  Repita
    C <- C + 1 //Incrementa +1 ao contador
    Escreva("Digite o ", C, "° num: ") //Solicita um numero
      Leia(Num)
    Contagem <- VerParOuImpar(Num, Par, Impar) //Atribui a var o result da funcao
  Ate(Num < 0) //Repete ate o usuario digitar um numero negativo

  LimpaTela

  //Exibe o resultado
  EscrevaL("Total de numeros pares: ", Par)
  EscrevaL("Total de numeros impares: ", Impar)
  EscrevaL("Total de numeros digitados: ", C)
fimalgoritmo