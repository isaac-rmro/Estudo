algoritmo "Ex077"
//77) Faça um programa que leia 7 nomes de pessoas e guarde-os em um vetor. No
//final, mostre uma listagem com todos os nomes informados, na ordem inversa
//daquela em que eles foram informados.
var
  I: Inteiro //Contador
  Nome: vetor[1..7] de Caractere //Vetor de 7 posições
inicio
  Para I de 1 ate 7 faca //Estrutura de repetição para preencher o vetor
    EscrevaL("USUARIO: ",I) //Mostra a posição atual
    Escreva("Digite seu nome: ") //Pede o nome
      Leia(Nome[I]) //Guarda no vetor na posição do contador
    EscrevaL(" ")
  FimPara
  
  Para I de 7 ate 1 passo -1 faca //Contagem regressiva para imprimir o inverso
    EscrevaL("Pos. [", I, " ] : ", Nome[I])
  FimPara
fimalgoritmo