algoritmo "Ex054"
//54) Desenvolva um aplicativo que leia o peso e a altura de 7 pessoas,
//mostrando no final:
//a) Qual foi a média de altura do grupo
//b) Quantas pessoas pesam mais de 90Kg
//c) Quantas pessoas que pesam menos de 50Kg tem menos de 1.60m
//d) Quantas pessoas que medem mais de 1.90m pesam mais de 100Kg.
var
  C: Inteiro
  Peso,Altura: Real
  SomaAltura,MediaAltura: Real
  Mais90: Inteiro
  PesoAlturaBaixo,PesoAlturaAlto: Inteiro
inicio
  C <- 1
  Enquanto (C <= 7)faca
    Escreva("[",C,"°] Digite seu peso: kg")
      Leia(Peso)
    Escreva("Digite sua altura: m")
      Leia(Altura)
    
    EscrevaL(" ")

    Se (Peso > 90)entao
      Mais90 <- Mais90 + 1
    FimSe
  
    Se (Peso < 50) e (Altura < 1.60)entao
      PesoAlturaBaixo <- PesoAlturaBaixo + 1
    senao
      Se (Altura > 1.90) e (Peso > 100)entao
        PesoAlturaAlto <- PesoAlturaAlto + 1
      FimSe
    FimSe

    SomaAltura <- SomaAltura + Altura

    C <- C + 1
  FimEnquanto
  
  MediaAltura <- SomaAltura/7
  
  EscrevaL("MEDIA DE ALTURA DO GRUPO: ",MediaAltura:4:2)
  EscrevaL("PESSOAS COM MAIS DE 90KG: ",Mais90)
  EscrevaL("PESSOAS COM MENOS DE 50KG E TEM MENOS DE 1.60m: ",PesoAlturaBaixo)
  EscrevaL("PESSOAS COM MAIS DE 1.90M E TEM MAIS DE 100KG: ",PesoAlturaAlto)
fimalgoritmo