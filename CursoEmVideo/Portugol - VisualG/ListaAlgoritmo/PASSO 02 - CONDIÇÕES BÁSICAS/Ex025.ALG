algoritmo "Ex025"
//25) [DESAFIO] Crie um programa que leia o tamanho de tr�s
//segmentos de reta. Analise seus comprimentos e diga se � poss�vel
//formar um tri�ngulo com essas retas.
//Matematicamente, para tr�s segmentos formarem um tri�ngulo, o comprimento
//de cada lado deve ser menor que a soma dos outros dois.
var
  N1,N2,N3: Real
  Triangulo: Logico
  N1V,N2V,N3V: Logico
inicio
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
  Escreval(" ")
  
  Escreval("Pode se formar um triangulo: ",Triangulo) //V ou F
  Escreval(" ")
  //Aqui mostra os dados de quais dos lados n�o formam um triangulo
  Escreval("N1 � valido: ",N1V)
  Escreval("N2 � valido: ",N2V)
  Escreval("N3 � valido: ",N3V)
  
fimalgoritmo