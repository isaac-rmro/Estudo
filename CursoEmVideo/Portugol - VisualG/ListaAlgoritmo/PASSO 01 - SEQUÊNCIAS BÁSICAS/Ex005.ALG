algoritmo "Ex005"
//5) Faça um programa que leia as duas notas de um aluno em uma matéria e
//mostre na tela a sua média na disciplina.
//Ex:
//Nota 1: 4.5
//Nota 2: 8.5
//A média entre 4.5 e 8.5 é igual a 6.5
var
  N1,N2: Real // Variaveis pedidas
  Media: Real // Variavel resposta
inicio
  // Comandos de entrada
  Escreva("Digite sua 1º nota: ")
  Leia(N1)
  Escreva("Digite sua 2º nota: ")
  Leia(N2)
  
  Media <- (N1+N2)/2 // Calculo media p/2 numeros (ordem de precendencia aplicada)
  
  Escreva("A média entre ",N1," e ",N2," é igual a: ",Media) // resposta
fimalgoritmo








