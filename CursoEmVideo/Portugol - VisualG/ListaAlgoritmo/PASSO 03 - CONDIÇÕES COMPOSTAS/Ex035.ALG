algoritmo "Ex035"
//35) Uma empresa de aluguel de carros precisa cobrar pelos seus serviços.
//O aluguel de um carro custa R$90 por dia para carro popular e R$150 por
//dia para carro de luxo. Além disso, o cliente paga por Km percorrido.
//Faça um programa que leia o tipo de carro alugado (popular ou luxo),
//quantos dias de aluguel e quantos Km foram percorridos.
//No final mostre o preço a ser pago de acordo com a tabela a seguir:
//- Carros populares (aluguel de R$90 por dia)
//- Até 100Km percorridos: R$0,20 por Km
//- Acima de 100Km percorridos: R$0,10 por Km
//- Carros de luxo (aluguel de R$150 por dia)
//- Até 200Km percorridos: R$0,30 por Km
//- Acima de 200Km percorridos: R$0,25 por Km
var
  Opcao: Inteiro //Var para opcao
  Dia,Km: Inteiro //Var para guarda de dado
  Aluguel,PrecoKm,Tot: Real //Var para processamento de dados
inicio
  //Seleção de opcao
  Escreval("ESCOLHA O TIPO DE CARRO ALUGADO")
  Escreval("[1] CARRO POPULAR")
  Escreval("[2] CARRO DE LUXO")
    Leia(Opcao)

  Escreva("QUANTOS DIAS DE ALUGUEL: ")
    Leia(Dia)
  Escreva("QUANTOS KM FORAM PERCORRIDOS: ")
    Leia(Km)

  //Condição com base na opcao
  Escolha Opcao
    //Caso 1 ira receber o valor do carro popular
    Caso 1
      Aluguel <- Dia * 90 //Aluguel de 90 reais o dia
      Se (Km < 100)entao //Se a kilometragem rodada foi menor que 100
        PrecoKm <- Km * 0.20 //Cada km vale 20 centavos
      senao //Em contrapartida
        PrecoKm <- Km * 0.10 //Se foi acima de 100km rodados ira valer 10 centavos
      FimSe
    //Caso 2 ira receber o valor do carro de luxo
    Caso 2
      Aluguel <- Dia * 150 //O dia é 150 reais
      Se (Km < 200)entao //Se a kilometragem for menor que 200km
        PrecoKm <- Km * 0.30 //Cada km ira valer 30 centavos
      senao //Se for maior
        PrecoKm <- Km * 0.25 //Cada km ira valer 25 centavos
      FimSe
  FimEscolha

  //Total é baseado no aluguel por dias mais o preco de cada kilometro
  Tot <- Aluguel + PrecoKm

  Escreval("VALOR TOTAL A SE PAGAR: ",Tot:5:2) //Saida de dados
  
fimalgoritmo