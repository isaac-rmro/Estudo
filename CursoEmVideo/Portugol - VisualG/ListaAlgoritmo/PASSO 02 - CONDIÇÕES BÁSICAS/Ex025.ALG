algoritmo "Ex025"
//25) [DESAFIO] Crie um programa que leia o tamanho de três
//segmentos de reta. Analise seus comprimentos e diga se é possível
//formar um triângulo com essas retas.
//Matematicamente, para três segmentos formarem um triângulo, o comprimento
//de cada lado deve ser menor que a soma dos outros dois.
var
  N1,N2,N3: Real
  Triangulo: Logico
  N1V,N2V,N3V: Logico
inicio
  Escreval(" /\ ")
  Escreval("/  \")
  Escreval("É UM TRIANGULO??") //Filura
  
  Escreval(" ")
  
  //Entrada de dados
  Escreva("Digite o 1º valor da reta: ")
  Leia(N1)
  Escreva("Digite o 2º valor da reta: ")
  Leia(N2)
  Escreva("Digite o 3º valor da reta: ")
  Leia(N3)
  
  //Campo de processamento
  N1V <- N1 < N2 + N3 //Verificação se os numeros sao menores que os outros
  N2V <- N2 < N3 + N1
  N3V <- N3 < N1 + N2
  Triangulo <- (N1 < N2 + N3) e (N2 < N3 + N1) e (N3 < N1 + N2) //Verifica se é triangulo
  Escreval(" ")
  
  Escreval("Pode se formar um triangulo: ",Triangulo) //V ou F
  Escreval(" ")
  //Aqui mostra os dados de quais dos lados não formam um triangulo
  Escreval("N1 é valido: ",N1V)
  Escreval("N2 é valido: ",N2V)
  Escreval("N3 é valido: ",N3V)
  
fimalgoritmo