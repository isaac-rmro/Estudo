algoritmo "Ex015"
//15) Crie um programa que leia o número de dias trabalhados
//em um mês e mostre o salário de um funcionário, sabendo que
//ele trabalha 8 horas por dia e ganha R$25 por hora trabalhada.
var
  //guarda de conteudo
  Dia: Inteiro //dia nao se mede em numeros reais e sim inteiro
  SalarioDia,SalarioMes: Real
inicio
  //comando de entrada
  Escreva("Dias trabalhados: ")
  Leia(Dia)
  
  SalarioDia <-(25*8) //calculo para saber quanto recebe no dia
  SalarioMes <- Dia * SalarioDia //calculo para saber quanto ganha no mes
  
  //salario total
  Escreva("Seu salario esse mês é de: ",SalarioMes:4:2)
  
  
fimalgoritmo