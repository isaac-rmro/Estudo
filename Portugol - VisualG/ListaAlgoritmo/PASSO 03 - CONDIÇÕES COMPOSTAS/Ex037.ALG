algoritmo "Ex037"
//37) Uma empresa precisa reajustar o salário dos seus funcionários,
//dando um aumento de acordo com alguns fatores. Faça um programa que
//leia o salário atual, o gênero do funcionário e há quantos anos esse
//funcionário trabalha na empresa. No final, mostre o seu novo salário,
//baseado na tabela a seguir:
//- Mulheres
// - menos de 15 anos de empresa: +5%
// - de 15 até 20 anos de empresa: +12%
// - mais de 20 anos de empresa: +23%
//- Homens
// - menos de 20 anos de empresa: +3%
// - de 20 até 30 anos de empresa: +13%
// - mais de 30 anos de empresa: +25%
var
  SlrAtual: Real //Var para guardar o salario atual ou antigo
  Genero,Ano: Inteiro //Var para entrada de dados
  NvSlr: Real //Var para processamento do novo salario
inicio
  //Menu
  Escreval("--------------------------")
  Escreval("ASSISTENCIA AO ASSALARIADO")
  Escreval("--------------------------")

  //Entrada de dados
  Escreva("Digite seu salario: R$")
    Leia(SlrAtual)
  Escreval("Qual é seu genêro: ")
  Escreval("[1] Mulher")
  Escreval("[2] Homem")
    Leia(Genero)
  Escreva("Quantos anos está na empresa: ")
    Leia(Ano)

  //Opcoes 1 e 2
  Escolha Genero
    Caso 1 //Mulher
      Se (Ano < 15)entao //Condições aplicadas baseadas nos anos trabalhados
        NvSlr <- SlrAtual + (SlrAtual * 5/100)
      senao
        Se (Ano < 20)entao
          NvSlr <- SlrAtual + (SlrAtual * 12/100)
        senao
          NvSlr <- SlrAtual + (SlrAtual * 23/100)
        FimSe
      FimSe

      Escreval("GENERO: FEMININO") //Exibi no final para nao confundir

      Caso 2
        Se (Ano < 3)entao //Condiçoes aplicadas baseadas tambem nos anos trabalhados
          NvSlr <- SlrAtual + (SlrAtual * 3/100)
        senao
          Se (Ano < 30)entao
            NvSlr <- SlrAtual + (SlrAtual * 13/100)
          senao
            NvSlr <- SlrAtual + (SlrAtual * 25/100)
          FimSe
        FimSe
        
        Escreval("GENERO: MASCULINO")
        
  FimEscolha
  
  Escreval("SALARIO ANTIGO: R$",SlrAtual:8:2) //Salario antigo
  Escreval("SALARIO ATUAL: R$",NvSlr:8:2) //Salario atual é o antigo + aumento
  
fimalgoritmo