algoritmo "Correios"
var
  User: Caractere
  Qtd: Inteiro
  I: Inteiro
  DataAtual: Vetor[1..3] de Inteiro
  Tip: vetor[1..5] de Caractere
  Desc: vetor[1..5] de Caractere
  Altura, Larg, Peso: Vetor[1..5] de Inteiro
  Envio: Inteiro
  Destino, Destinatario: Caractere
  Expectativa: Inteiro
  
Procedimento Menu()
inicio
  EscrevaL("======================================")
  EscrevaL("||           ||   ||                ||")
  EscrevaL("||  CORREIO  || & ||  EMPACOTADO's  ||")
  EscrevaL("||           ||   ||                ||")
  EscrevaL("======================================")
  EscrevaL()

  Escreva("USUARIO: ") //Cadastra um usuario
    Leia(User)
FimProcedimento

Procedimento Cadastro()
inicio
  EscrevaL("BEM VINDO(A) ", maiusc(User))
  Repita
    Escreva("QUANTAS ENCOMENDAS DESEJA CADASTRAR(MAX[5]): ")
      Leia(Qtd)
    Se (Qtd < 1) ou (Qtd > 5)entao
      LimpaTela
      EscrevaL("SENHOR(A) ", maiusc(User), " DIGITE UM VALOR V�LIDO")
    FimSe
  Ate(Qtd > 0) e (Qtd <= 5)
FimProcedimento
  
Procedimento Data() //Valida data e a obtem
inicio
  EscrevaL("========================")
  EscrevaL("DATA DE ENVIO dd/mm/yy")
  EscrevaL("========================")
  
  Repita
    Escreva("DIA: ")
      Leia(DataAtual[1])
    Se (DataAtual[1] < 1) ou (DataAtual[1] > 31)entao
      Escreval()
      EscrevaL("DIGITE UM DIA VALIDO")
    FimSe
  Ate(DataAtual[1] > 0) e (DataAtual[1] < 32)
  
  Repita
    Escreva("M�S: ")
      Leia(DataAtual[2])
    Se (DataAtual[2] < 1) ou (DataAtual[2] > 12)entao
      EscrevaL()
      EscrevaL("DIGITE UM M�S VALIDO")
    FimSe
  Ate(DataAtual[2] > 0) e (DataAtual[2] < 13)
  
  Escreva("ANO: ")
    Leia(DataAtual[3])

  LimpaTela
FimProcedimento

Procedimento TipoPacote() //Rotula os pacotes
inicio
  Para I de 1 ate Qtd faca
    Repita
      LimpaTela
      EscrevaL("Digite o tipo da encomenda [", I, " ]")
      EscrevaL("[1] PACOTE")
      EscrevaL("[2] ENVELOPE")
      EscrevaL("[3] ROLO")
        Leia(Tip[I])
    Ate(Tip[I] > 0) e (Tip[I] < 4)
  FimPara
FimProcedimento

Funcao VerTip(t: Caractere): Caractere //Assimila os pacotes a certas posicoes
var
  msg: Caractere
inicio
  Se (t = "1")entao
    msg <- "PACOTE"
  senao
    Se (t = "2")entao
      msg <- "ENVELOPE"
    senao
      Se (t = "3")entao
        msg <- "ROLO"
      FimSe
    FimSe
  FimSe
  Retorne msg
FimFuncao
  
Procedimento VerDimensao //Guarda a dimensao do pacote
inicio
  EscrevaL("========================")
  EscrevaL("DIMENS�ES DO SEU PRODUTO")
  EscrevaL("========================")
  
  Escreva("DIGITE A ALTURA DO PACOTE [", I, " ]: cm")
    Leia(Altura[I])
  Escreva("DIGITE A LARGURA DO PACOTE [", I, " ]: cm")
    Leia(Larg[I])
  Escreva("DIGITE O PESO DO PACOTE [", I, " ]: g")
    Leia(Peso[I])
  LimpaTela
FimProcedimento

Procedimento PraOnde() //Cadastro de Destinatario e seu destino
inicio
  Escreva("DESTINATARIO: ")
    Leia(Destinatario)
  Escreva("DESTINO DAS ENCOMENDAS: ")
    Leia(Destino)
FimProcedimento

Procedimento Fim() //Mensagem Final
inicio
  EscrevaL("-+-+-+-+-+-+-+-+-+-+-+-+")
  EscrevaL("    ENVIO CONCLUIDO!!   ")
  EscrevaL("-+-+-+-+-+-+-+-+-+-+-+-+")

  EscrevaL("NOME REMETENTE: ", maiusc(User))
  EscrevaL("QTD ENCOMENDA: ",Qtd)
  
  Para I de 1 ate Qtd faca
    EscrevaL("TIPO ENCOMENDA: ", Tip[I])
    EscrevaL("DESCRI��O ENCOMENDA [", I, " ]: ")
    EscrevaL(Desc[I])
    Escreval()
    Escreval("ALTURA DO PACOTE: ", Altura[I], " cm")
    Escreval("LARGURA DO PACOTE: ", Larg[I], " cm")
    Escreval("PESO DO PACOTE: ", Peso[I], " g")
    EscrevaL()
  FimPara
  
  Escreval()
  
  EscrevaL("NOME DESTINATARIO: ", Destinatario)
  EscrevaL("DESTINO: ", Destino)
  EscrevaL()
  EscrevaL("DATA POSTAGEM: ", DataAtual[1], "/", DataAtual[2], "/", DataAtual[3])
  Escreva("EXPECTATIVA DE ENTREGA: ", Expectativa, " Dias")

FimProcedimento

inicio
  //Inicio do programa
  Expectativa <- randi(15) + 1 //Expectativa aleatoria de chegada de encomenda
  Menu() //Acessa o menu
  LimpaTela
  Data() //Cadastra Data de hoje
  Cadastro() //Cadastra os pacotes
  TipoPacote() //Rotula os pacotes
  Para I de 1 ate 5 faca //Assimila��o de pacote e tipo na mesma posicao
    Se (Tip[I] <> "")entao
      Tip[I] <- VerTip(Tip[I])
    FimSe
  FimPara

  Para I de 1 ate 5 faca //Descricao do pacote
    Se (Tip[I] <> "")entao
      LimpaTela
      EscrevaL("Digite o que h� dentro do item: ", I, " ( ", Tip[I], " )")
        Leia(Desc[I])
    FimSe
  FimPara
  
  LimpaTela

  Para I de 1 ate Qtd faca
    VerDimensao() //Verifica suas dimensoes
  FimPara
  
  //Envio unico para todas as encomendas na (Versao 1)
  Repita
    EscrevaL("Selecione o tipo de envio abaixo")
    EscrevaL("[1] Nacional")
    EscrevaL("[2] Internacional")
      Leia(Envio)
    Se (Envio < 1) ou (Envio > 2)entao
      LimpaTela
    FimSe
  Ate(Envio > 0) e (Envio < 3)

  PraOnde() //Para qual local ? e quem vai receber?
  LimpaTela
  Fim() //Exibe o fim do programa
fimalgoritmo