algoritmo "Ex036"
//36) Um programa de vida saud�vel quer dar pontos atividades f�sicas que
//podem ser trocados por dinheiro. O sistema funciona assim:
//- Cada hora de atividade f�sica no m�s vale pontos
//- at� 10h de atividade no m�s: ganha 2 pontos por hora
//- de 10h at� 20h de atividade no m�s: ganha 5 pontos por hora
//- acima de 20h de atividade no m�s: ganha 10 pontos por hora
//- A cada ponto ganho, o cliente fatura R$0,05 (5 centavos)
var
  Hora: Inteiro
  Ponto,Faturamento: Real
inicio
  Escreval("----------------------------------")
  Escreval("VIDA MAIS ALEGRE, SAUDE E MENOR DR")
  Escreval("----------------------------------")
  
  Escreva("Quantas horas de atividade fisicar no m�s: h")
    Leia(Hora)

  Se (Hora < 10)entao
    Ponto <- Hora * 2
  senao
    Se (Hora < 20)entao
      Ponto <- Hora * 5
    senao
      Ponto <- Hora * 10
    FimSe
  FimSe
  
  Faturamento <- Ponto * 0.05
  
  Escreva("PARABENS SEU FATURAMENTO � DE: R$",Faturamento)
fimalgoritmo