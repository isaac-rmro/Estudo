algoritmo "Ex005"
var
  M: Vetor[1..3,1..6] de Inteiro
  l, c: Inteiro
  Impar: Inteiro
  cont: Inteiro
  SomaColun: Inteiro
  Media: Real
  SomaColuns: Inteiro
  
Funcao VerColuna(numero: Inteiro): Inteiro
inicio
  Retorne Impar + numero
FimFuncao

Funcao SomaColuna(numero: Inteiro): Inteiro
inicio
  Retorne SomaColun + numero
FimFuncao

Funcao SomaColunas(): Inteiro
var
  soma: Inteiro
inicio
  Para c de 1 ate 6 faca
    soma <- soma + M[l,c]
  FimPara
  Retorne SomaColuns + soma
FimFuncao

inicio
  Para l de 1 ate 3 faca
    Para c de 1 ate 6 faca
      Se (c = 1) ou (c = 2)entao
        M[l,c] <- 1
      senao
        M[l,c] <- 0
      FimSe
    FimPara
  FimPara
  
  cont <- 0
  
  Para l de 1 ate 3 faca
    Para c de 1 ate 6 faca
      Se (c%2 <> 0)entao
        Impar <- VerColuna(M[l,c])
      FimSe

      Se (c = 2) ou (c = 4)entao
        cont <- cont + 1
        SomaColun <- SomaColuna(M[l,c])
      FimSe
      
      Se (c = 6)entao
        SomaColuns <- SomaColunas()
      FimSe
    FimPara
  FimPara
  
  Para l de 1 ate 3 faca
    Para c de 1 ate 6 faca
      Se (c = 6)entao
        M[l,c] <- SomaColuns
      FimSe
    FimPara
  FimPara

  Para l de 1 ate 3 faca
    Para c de 1 ate 6 faca
      Escreva(M[l,c])
    FimPara
    EscrevaL()
  FimPara

  Media <- SomaColun / c
  
  Escreva("MEDIA DOS ELEMENTOS DA SEGUNDA E QUARTA COLUNA: ", Media)
fimalgoritmo