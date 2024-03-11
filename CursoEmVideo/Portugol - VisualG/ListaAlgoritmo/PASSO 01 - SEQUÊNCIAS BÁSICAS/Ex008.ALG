algoritmo "Ex008"
//8) Desenvolva um programa que leia uma distância em metros e
//mostre os valores relativos em outras medidas.
//Ex:
//Digite uma distância em metros: 185.72
//A distância de 85.7m corresponde a:
//0.18572Km
//1.8572Hm
//18.572Dam
//1857.2dm
//18572.0cm
//185720.0mm
var
  M: Real
inicio
  Escreva("Digite uma distância em metros: ")
  Leia(M)
  Escreval("A distancia de ",M,"m corresponde a: ")
  
  //calculo para descobrir o valor, (usado apenas uma var)
  Escreval(M/1000,"Km (Kilometro)")
  Escreval(M/100,"Hm (Hectometro)")
  Escreval(M*10,"Dm (Decametro)")
  Escreval(M*100,"cm (Centimetro)")
  Escreval(M*1000,"mm (Milimetro)")
  
fimalgoritmo