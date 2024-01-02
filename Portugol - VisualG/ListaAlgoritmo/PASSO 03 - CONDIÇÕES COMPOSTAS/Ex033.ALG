algoritmo "Ex033"
//33) Escreva um programa para aprovar ou não o empréstimo bancário para
//a compra de uma casa. O programa vai perguntar o valor da casa, o salário
//do comprador e em quantos anos ele vai pagar. Calcule o valor da prestação
//mensal, sabendo que ela não pode exceder 30% do salário ou então o empréstimo
//será negado.
var
  VlrCasa: Real //Var para valor da casa
  Slr: Real //Var para salario
  Ano: Inteiro //Var para guarda ano
  PgMensal: Real //Var para fazer o processamento do emprestimo
inicio
  //Filura
  Escreval("-----------------")
  Escreval("BANCO BONJUROS RS")
  Escreval("-----------------")

  //Entrada de dados
  Escreva("Qual o valor da casa: R$")
   Leia(VlrCasa)
  Escreva("Digite seu salario: R$")
   Leia(Slr)
  Escreva("Em quantos anos deseja pagar: ")
   Leia(Ano)

  PgMensal <- VlrCasa / (Ano*12) //Valor da casa / meses
 
  Se (PgMensal > (Slr * 30/100))entao //Se o pagamento mensal maior que 30% salario
    Escreval("PAGAMENTO MENSAL: R$",PgMensal) //Negado
    Escreval("PAGAMENTO MENSAL MAIOR QUE 30% DE SEU SALARIO EMPRESTIMO NEGADO")
  senao //Caso contrario
    //Aprovado e exibi os numeros das parcelas
    Escreval("Pagamento mensal em ",Ano," anos: R$",PgMensal:5:2)
  FimSe

  Escreva("OBRIGADO POR CONTAR CONOSCO :)")
fimalgoritmo