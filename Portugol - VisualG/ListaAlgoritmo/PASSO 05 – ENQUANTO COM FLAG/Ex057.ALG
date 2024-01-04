algoritmo "Ex057"
//57) Desenvolva um aplicativo que leia o salário e o sexo de vários
//funcionários. No final, mostre o total de salários pagos aos homens
//e o total pago às mulheres. O programa vai perguntar ao usuário se
//ele quer continuar ou não sempre que ler os dados de um funcionário.
var
  Sexo,Salario: Inteiro //Var de sexo e salario
  SalarioH,SalarioM: Inteiro //Var para guardar os salarios
  Resp,RespError: Caractere //Var para verificação de repetição
inicio
  Resp <- "S" //Resposta S maiscula
  RespError <- "s" //Resposta s minuscula
  Enquanto (Resp = "S") ou (RespError = "s")faca
    EscrevaL("Sexo do funcionario: ") //Repita
    EscrevaL("[1] Homem")
    EscrevaL("[2] Mulher")
      Leia(Sexo)
    Escreva("Salario depositado: R$")
      Leia(Salario)

    Escolha Sexo
      Caso 1 //Opção 1 = homem
        SalarioH <- SalarioH + Salario
      Caso 2 //Opção 2 = Mulher
        SalarioM <- SalarioM + Salario
    FimEscolha
  
    Escreva("Proceder para o proximo funcionario [S/N]: ") //Confirmação
      Leia(Resp) //Ira continuar se digitar S caso contrario
    RespError <- Resp //Logo apos a var RespError ira receber s ()
    //Se nao for nenhum dos dois Ss
    LimpaTela
    
  FimEnquanto //Termina o laço
  
  LimpaTela
  
  //Saida de dados
  EscrevaL("TOTAL")
  EscrevaL("SALARIO PAGO AOS HOMENS: R$",SalarioH:10:2)
  EscrevaL("SALARIO PAGO AS MULHERES: R$",SalarioM:10:2)
  
fimalgoritmo