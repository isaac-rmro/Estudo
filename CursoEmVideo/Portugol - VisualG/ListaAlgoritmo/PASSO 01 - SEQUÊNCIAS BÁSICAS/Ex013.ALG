algoritmo "Ex013"
//13) Fa�a um algoritmo que leia o sal�rio de um funcion�rio,
//calcule e mostre o seu novo sal�rio, com 15% de aumento.
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
  Escreval("O aumento do salario � de: R$",Porcentagem:4:2)//formata��o de resultado
  Escreva("Novo salario no valor de: R$",NovoSalario:4:2)
fimalgoritmo