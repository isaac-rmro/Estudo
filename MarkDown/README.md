# Linguagem MarkDown
Criada em 2004 por **Jhon Gruber** e **Aaron Swartz**, a linguagem tem como objetivo, facilitar a criação de contéudo formatado e ser mais simples que a HTML, utilizada até mesmo no whatsapp.
## Formatações 
### Itálico
Pode se utilizar de astericos simples ou underlines                              
_ Italico _ ou * Italico * : _Italico_ 
### Negrito
Adicione astericos duplos ou duplas underlines entre a palavra           
** Negrito ** ou __ Negrito __ : **Negrito**
### Strike
Assim como canais famosos no youtube também é possivel dar um strike na linguagem rs                
~~ Strike ~~ : ~~Strike~~  
### Mistura entre tags
De forma criativa podemos misturar Italico com Negrito e ainda dar um strike         
~~ _ ** Soup ** _ ~~ : ~~_**Soup**_~~
## Listas 
### Listas Numeradas 
Os saltos entre linhas são de fato mais que importantes que os numeros nas listas                
Digite (1. Algo) e adicione o que quiser a elas                       
**Top 5 melhores animais**
1. Gatos
2. Cavalos
3. Porcos, (por que) não?
4. Tartaruga
5. Cachorro
### Lista com Marcadores
* Usa se o (*)
  * E adicionar dois espaços desde a borda ira adicionar uma sub-tarefa
* Dica que aprendi no curso ;)
### Lista de Tarefas
Um to-do list (- [ ] Tarefa 1) **tarefas já feitas pode se marcar com um x** (- [x] Tarefa 1)
- [ ] Fazer bolo
- [ ] Nadar
- [x] Ver um bonito por do sol
## Títulos e Linhas horizontais
Os titulos funcionam na mesma semântica da **HTML**            
Tags utilizada: (# Titulo nivel 1) (## Titulo nivel 2) (### Titulo nivel 3) etc... 
# Titulo nivel 1
## Titulo nivel 2
Linhas horizontais se asemelham também a tag (hr)                           
Tag utilizada: (---) ou (***) na linha abaixo 
### Titulo nivel 3
---
## Imagens
![nome](caminho da imagem) é recomendado utilizar a largura máxima de 500px                              
![g5s7x](https://github.com/i2aacrom3ro/Estudo/assets/155275740/7af050f1-9268-4fb1-bdd2-4cbde012687f)
## Links
Apenas se retira o sinal de exclamação da tag imagem             
[mensagem](endereço do link)             
[Clique aqui!!!](https://github.com/i2aacrom3ro)

## Trechos de Codigos
### Comando isolado
Colocar o codigo entre crases fará o ser exibido em fonte monoespaçada e com um fundo acinzentado
`window.document.getElementById()` obs: A identação é criada a partir de 4 espaços da borda 👍
### Treco do codigo
Para por em um trecho, usa-se (```) acima e abaixo do codigo
```
nome = input('qual é seu nome')
print(f'Olá bem vindo ao meu github {nome}, espero que aproveite ;)')
```
## Ligação entre conteúdos
### Citação
Como Steve Jobs disse:
> Desing é função,                                         
>  não forma
### Menções a usuários
Assim como em qualquer rede social o uso do @ para citar alguém também é utilizado.
### Menções a issues
Mencionar Pull e Requests utilizando o (#: jogo da velha) e o numero do elemento (sem espaço)
## Símbolos
### Escapando das formatações
Eu utilizei este metodo para mostrar como é utilizada cada formatação
Basta por uma barra invertida antes dos simbolos (\)
É possivel criar titulos usando \# Titulo nivel 1
### Emojis
Entre simbolos de \:nomeDoEmojiEmInglês:
O dia hoje está fechado tem chances altas de 🌧️
Espero um dia me tornar um bom programador 😊
Amanha tem treino pesado 💪
## Tabela
Para separar os titulos usa-se |Titulo 1|Titulo 2|Titulo 3|
Logo abaixo deve conter a formatação guiada pelos simbolos \\:: e \\---
\--- Formatação padrao
\:--- Formatação à esquerda
\:---: Formatação centralizada
\---: Formatação à direita
E assim completar a tabela
\Ano Nascimento | Nome | Profissão
\:---: | ---: | :---
\2001 | Alfredo | Carpinteiro
\1967 | Adair | ~~Aposentado~~
\1980 | José | Design
Exemplo: 
Ano Nascimento | Nome | Profissão
:---: | ---: | :---
2001 | Alfredo | Carpinteiro
1967 | Adair | ~~Aposentado~~
1980 | José | Design
