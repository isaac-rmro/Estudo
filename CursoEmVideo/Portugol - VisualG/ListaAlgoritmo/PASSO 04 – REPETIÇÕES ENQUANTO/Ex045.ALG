algoritmo "Ex045"
//45) O programa acima vai ter um problema quando digitarmos o primeiro valor
//maior que o último. Resolva esse problema com um código que funcione em
//qualquer situação
var
  InicioC,FimC: Inteiro //Var para entrada de dados pelo user
  C: Inteiro //Var contadora
inicio
  //Entrada de dados
  Escreva("Inicio: ")
    Leia(InicioC)
  Escreva("Fim: ")
    Leia(FimC)

  //Condiçoes
  Se (InicioC = FimC)entao //Se o inicio e fim forem iguais exiba
    EscrevaL("Inicio e Fim iguais")
    EscrevaL("Contando...")
    Escreva(InicioC,"... ",FimC,"... ")
  senao
    Se (InicioC <= FimC)entao //Se o inicio for menor que o fim
      C <- InicioC
      EscrevaL("Contagem Progressiva...") //Ira adicionar +1 de C ate atingir o final
      Enquanto (C <= FimC)faca
        Escreva(C,"... ")
        C <- C + 1
      FimEnquanto
    senao //Se o inicio for maior que o fim
      C <- InicioC
      EscrevaL("Contagem Regressiva...") //Ira retirar -1 de C ate atingir o final
      Enquanto (C >= FimC)faca
        Escreva(C,"... ")
        C <- C - 1
      FimEnquanto
    FimSe
  FimSe

fimalgoritmo