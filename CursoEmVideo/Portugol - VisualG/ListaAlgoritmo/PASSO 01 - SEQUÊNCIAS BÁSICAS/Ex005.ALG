algoritmo "Ex005"
//5) Fa�a um programa que leia as duas notas de um aluno em uma mat�ria e
//mostre na tela a sua m�dia na disciplina.
//Ex:
//Nota 1: 4.5
//Nota 2: 8.5
//A m�dia entre 4.5 e 8.5 � igual a 6.5
var
  N1,N2: Real // Variaveis pedidas
  Media: Real // Variavel resposta
inicio
  // Comandos de entrada
  Escreva("Digite sua 1� nota: ")
  Leia(N1)
  Escreva("Digite sua 2� nota: ")
  Leia(N2)
  
  Media <- (N1+N2)/2 // Calculo media p/2 numeros (ordem de precendencia aplicada)
  
  Escreva("A m�dia entre ",N1," e ",N2," � igual a: ",Media) // resposta
fimalgoritmo








