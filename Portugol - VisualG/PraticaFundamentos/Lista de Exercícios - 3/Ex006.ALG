algoritmo "Ex006"
var
  I: Inteiro //Var contadora
  Num: Vetor[1..10] de Inteiro //Vetor de 10 posições
  Arruma: Vetor[1..10] de Inteiro //Vetor para inverter todas as posiçoes

Funcao TrocaValor(atual, sucessor: Inteiro): Inteiro //Inverte
var
  aux: Inteiro //Var para auxiliar
inicio
  aux <- atual //Guarda o numero atual
  atual <- sucessor //Troca o numero atual pelo ultimo numero
  sucessor <- aux //Troca o ultimo numero pelo antigo atual

  Retorne atual //Retorna o valor ja invertido
FimFuncao

inicio
  Para I de 1 ate 10 faca //Solicita 10 valores
    Escreva("Digite o ", I, "° valor: ")
      Leia(Num[I])
  FimPara
  
  Para I de 1 ate 10 faca //Inverte os 10 valores
    Arruma[I] <- TrocaValor(Num[I], Num[11-I])
  FimPara
  
  Para I de 1 ate 10 faca //Imprime os valores invertidos
    Escreva(Arruma[I], " ")
  FimPara
fimalgoritmo