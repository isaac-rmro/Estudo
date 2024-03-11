algoritmo "Ex014"
//14) A locadora de carros precisa da sua ajuda para cobrar seus serviços.
//Escreva um programa que pergunte a quantidade de Km percorridos por
//um carro alugado e a quantidade de dias pelos quais ele foi alugado.
//Calcule o preço total a pagar,sabendo que o carro custa R$90 por dia
//e R$0,20 por Km rodado.
var
  Km,PrecoTot: Real //declaração por conteudo
  Dia: Inteiro //dias não é medido por numeros reais e sim inteiro
inicio
  //comandos de entrada
  Escreva("Quantos Km o carro percorreu: Km")
  Leia(Km)
  Escreva("Quantos dias alugado: ")
  Leia(Dia)

  //logica de soma
  PrecoTot <- (Km*0.20)+(Dia*90)//km*0.20 = taxa + dias*90 = taxa
  
  //comando de saida organizado
  Escreva("O preço total a pagar: R$",PrecoTot:4:2)
fimalgoritmo