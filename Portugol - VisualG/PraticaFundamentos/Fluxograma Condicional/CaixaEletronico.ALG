algoritmo "CaixaEletronico"
var
  Opcao: Inteiro
  Saldo ,Saque: Real
  Deposito: Real
  Resposta: Caractere
  
inicio
  Saldo <- 1300
  Repita
  EscrevaL("BEM VINDO")
  Repita
    EscrevaL("[1] Saque")
    EscrevaL("[2] Deposito")
    EscrevaL("[3] Verificação de Saldo")
      Leia(Opcao)
    Se (Opcao < 1) ou (Opcao > 3)entao
      LimpaTela
      EscrevaL("Digite uma opção válida!!!")
    FimSe
  Ate(Opcao > 0) e (Opcao < 4)

  Escolha Opcao
    Caso 1
      Repita
        Escreva("Valor do Saque: ")
          Leia(Saque)
        Se (Saque > Saldo)entao
          LimpaTela
          EscrevaL("SALDO INSUFICIENTE!!")
        FimSe
      Ate(Saque <= Saldo)
      Saldo <- Saldo - Saque
      Escreva("SAQUE CONCLUIDO!!")
    Caso 2
      Escreva("Valor Deposito: ")
        Leia(Deposito)
      Saldo <- Saldo + Deposito
    Caso 3
      EscrevaL("SALDO ATUAL: ", Saldo)
  FimEscolha
  
  EscrevaL()

  Escreva("DESEJA CONTINUAR[S,N]: ")
    Leia(Resposta)
  LimpaTela
  Ate(Resposta = "N") ou (Resposta = "n")
fimalgoritmo