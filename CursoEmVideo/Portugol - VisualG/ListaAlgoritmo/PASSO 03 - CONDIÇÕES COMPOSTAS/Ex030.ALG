algoritmo "Ex030"
//30) [DESAFIO] Refa�a o algoritmo 25, acrescentando o recurso de mostrar que
//tipo de tri�ngulo ser� formado:
//- EQUIL�TERO: todos os lados iguais
//- IS�SCELES: dois lados iguais
//- ESCALENO: todos os lados diferentes
var
  N1,N2,N3: Real
  Triangulo: Logico
  N1V,N2V,N3V: Logico
  EQ,IS,ES: Logico
inicio
  //Algoritmo 25 melhorado
  Escreval(" /\ ")
  Escreval("/  \")
  Escreval("� UM TRIANGULO??") //Filura

  Escreval(" ")

  //Entrada de dados
  Escreva("Digite o 1� valor da reta: ")
  Leia(N1)
  Escreva("Digite o 2� valor da reta: ")
  Leia(N2)
  Escreva("Digite o 3� valor da reta: ")
  Leia(N3)

  //Campo de processamento
  N1V <- N1 < N2 + N3 //Verifica��o se os numeros sao menores que os outros
  N2V <- N2 < N3 + N1
  N3V <- N3 < N1 + N2
  Triangulo <- (N1 < N2 + N3) e (N2 < N3 + N1) e (N3 < N1 + N2) //Verifica se � triangulo

  EQ <- (N1 = N2) e (N2 = N3) //Se 2 lados sao iguais o 3 tb �
  IS <- ((N1 <> N2) e (N2 = N3)) ou ((N2 <> N3) e (N3 = N1)) ou ((N3 <> N1) e (N2 = N1))
  //Ficou pequeno rs, apenas comparei as hipoteses se algum dos numeros fossem
  //Diferentes os outros 2 deveriam ser iguais
  ES <- (N1 <> N2) e (N2 <> N3) e (N3 <> N1) //Todo mundo errado rs

  LimpaTela

  Escreval("Pode se formar um triangulo: ",Triangulo) //V ou F
  Escreval(" ")
  //Aqui mostra os dados de quais dos lados n�o formam um triangulo
  //Alem dos numeros digitados
  Escreval("N1 � valido: ",N1V," (",N1," )")
  Escreval("N2 � valido: ",N2V," (",N2," )")
  Escreval("N3 � valido: ",N3V," (",N3," )")

  Escreval(" ")

  //Esta � a aba do tipo do triangulo ja feito o processamento
  Escreval("TIPO DO TRIANGULO")
  Escreval("EQUILATERO: ",EQ)
  Escreval("IS�SCELES: ",IS)
  Escreval("ESCALENO: ",ES)
  
  Escreval(" ")
  
  Escreval(" /\ ")
  Escreval("/  \")

fimalgoritmo