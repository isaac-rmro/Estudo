algoritmo "Ex013"
//13) Faça um algoritmo que leia o salário de um funcionário,
//calcule e mostre o seu novo salário, com 15% de aumento.
var
  Salario,Porcentagem,NovoSalario: Real
inicio
  //comandos de entrada
  Escreva("Digite seu salario: R$")
  Leia(Salario)
  
  //area de processamento de dados
  Porcentagem <- (Salario*15)/100 //porcentagem do valor
  NovoSalario <- Salario + Porcentagem //soma do salario antigo + acrescimo
  
  //saida de dados organizados
  Escreval("O aumento do salario é de: R$",Porcentagem:4:2)//formatação de resultado
  Escreva("Novo salario no valor de: R$",NovoSalario:4:2)
fimalgoritmo