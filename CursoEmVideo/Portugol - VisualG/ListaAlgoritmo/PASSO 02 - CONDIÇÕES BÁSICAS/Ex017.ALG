algoritmo "Ex017"
//17) Escreva um programa que pergunte a velocidade de um carro.
//Caso ultrapasse 80Km/h, exiba uma mensagem dizendo que o
//usu�rio foi multado. Nesse caso, exiba o valor da multa,
//cobrando R$5 por cada Km acima da velocidade permitida.
var
  Velocidade: Real //Variavel para entrada de dados
  Taxa: Real //Variavel para guardar de calculo
inicio
  //Comandos de entrada
  Escreva("Qual a velocidade do carro? (Km/h):")
  Leia(Velocidade)
  
  //Condi��o se maior que 80 execute o bloco de notas
  Se (Velocidade > 80)entao
    Taxa <- (Velocidade - 80)* 5 //Calculo Kilometragem ultrapassada + 5 reais
    Escreva("Sua multa � no valor de: $",Taxa) //Exibi��o das informa��es
  FimSe
fimalgoritmo