algoritmo "Ex010"
//10) Fa�a um algoritmo que leia a largura e altura de uma parede,
//calcule e mostre a �rea a ser pintada
//e a quantidade de tinta necess�ria para o servi�o,
//sabendo que cada litro de tinta pinta uma �rea de 2metros quadrados.
var
  Largura,Altura: Real //Dados para conta
  Area,AreaPintada: Real //Var para Calculos
inicio
  Escreva("Digite a largura da parade (em metros): ")
  Leia(Largura)
  Escreva("Digite a altura da parede (em metros): ")
  Leia(Altura)
  
  Area <- Largura*Altura //Calculo da area
  AreaPintada <- Area/2 //Calculo da area pintada
  
  //Saida de dados
  Escreval("A area a ser pintada � de: ",Area,"m�")
  Escreva("Quantidade de tinta necessaria: ",AreaPintada,"L para cada 2m�")
fimalgoritmo