algoritmo "012"
//12. Crie um programa que leia três valores(a, b, c) e informe se é possivel
//formar um triângulo com esses valores. Se sim, informe se é um triângulo
//equilátero, isósceles ou escaleno.
var
  I: Inteiro //Var contadora
  Alf: vetor[1..3] de Caractere //Vetores para mostra de lugar dos valores
  Vlr: vetor[1..3] de Inteiro //Vetores para guarda de valores
  Tri, Eq, Iso, Esc: Logico //Vetores Verificadores
  
Funcao VerTri(a,b,c: Inteiro): Logico //Verifica se é um triangulo
var
  v: Logico //Var para guarda de resultado
inicio
  //Se cada lado do triangulo for menor que a soma dos outros dois
  Se (a < b + c) e (b < c + a) e (c < b + a)entao
    v <- Verdadeiro //Então é um triangulo
  senao //Caso contrario
    v <- Falso //Não
  FimSe
  Retorne v //Retorna a verificacao
FimFuncao

Funcao VerEq(a,b,c: Inteiro): Logico //Verifica se é um Triangulo Equilatero
var
  v: Logico //Var para guarda de resultado
inicio
  //Se todos os lados forem iguais
  Se (a = b) e (b = c)entao
    v <- Verdadeiro //É um triangulo equilatero
  senao //Se não
    v <- Falso //Não é
  FimSe
  Retorne v //Retorna resultado
FimFuncao

Funcao VerIso(a,b,c: Inteiro): Logico //Verifica se é Triangulo Isosceles
var
  v: Logico //Var para guarda de resultado
inicio
  //Se houver 2 lados iguais e um diferente
  Se (a = b) e (b <> c)entao
    v <- Verdadeiro
  senao
    Se (b = c) e (b <> a)entao
      v <- Verdadeiro
    senao
      Se (c = a) e (c <> b)entao //Todos ira retornar verdadeiro
        v <- Verdadeiro
      senao
        v <- Falso //Se não houver nenhum, Falso
      FimSe
    FimSe
  FimSe
  Retorne v //Retorna o resultado
FimFuncao

Funcao VerEsc(a,b,c: Inteiro): Logico //Verifica se é Triangulo Escaleno
var
  v: Logico //Var para guarda de resultado
inicio
  Se (a <> b) e (b <> c) e (c <> a)entao //Se todos os lados for diferente
    v <- Verdadeiro //É Escaleno
  senao //Se não
    v <- Falso //Não é
  FimSe
  Retorne v //Retorna resultado
FimFuncao

inicio
  //Vetores para exibição da posição
  Alf[1] <- "a"
  Alf[2] <- "b"
  Alf[3] <- "c"

  Para I de 1 ate 3 faca
    Escreva("Digite o valor de ", Alf[I], ": ")
      Leia(Vlr[I]) //Guarda o valor na posição do contador
  FimPara
  
  //Atribuições de verificações
  Tri <- VerTri(Vlr[1],Vlr[2],Vlr[3])
  Eq <- VerEq(Vlr[1],Vlr[2],Vlr[3])
  Iso <- VerIso(Vlr[1],Vlr[2],Vlr[3])
  Esc <- VerEsc(Vlr[1],Vlr[2],Vlr[3])
  
  LimpaTela //Limpa a Tela
  
  //Exibi na tela os resultados
  EscrevaL("RESULTADOS")
  EscrevaL("TRIANGULO: ", Tri)
  EscrevaL("EQUILATERO: ", Eq)
  EscrevaL("ISOSCELES: ", Iso)
  Escreva("ESCALENO: ", Esc)
fimalgoritmo