# Linguagem MarkDown
Criada em 2004 por **Jhon Gruber** e **Aaron Swartz**, a linguagem tem como objetivo, **facilitar a criação de contéudo formatado** e ser mais simples que a HTML, utilizada até mesmo no whatsapp.
## Formatações 
### Itálico
Pode-se utilizar de astericos simples ou underlines                              
\_Italico_ ou \*Italico* : _Italico_ 
### Negrito
Adicione astericos duplos ou duplas underlines entre a palavra           
\**Negrito** ou \_\_Negrito__ : **Negrito**
### Strike
Assim como canais famosos no youtube também é possivel dar um ~~strike~~ na linguagem rs                
\~~Strike~~ : ~~Strike~~  
### Mistura entre tags
De forma criativa podemos misturar _Italico_ com **Negrito** e ainda dar um ~~strike~~         
\~~\_\*\\*Soup**_~~ : ~~_**Soup**_~~
## Listas 
### Listas Numeradas 
Os saltos entre linhas são de fato **mais importantes que os números nas listas**                
**Digite \1. Algo e adicione o que quiser a elas**                       
**Top 5 melhores animais**
1. Gatos
2. Cavalos
3. Porcos, (por que) não?
4. Tartaruga
5. Cachorro
### Lista com Marcadores
* Usa se o \*
  * E adicionar dois espaços desde a borda ira adicionar uma **sub-tarefa**
* Dica que aprendi no curso ;)
### Lista de Tarefas
Um to-do list               
\- [ ] Tarefa 1 **tarefas já feitas pode ser marcadas com um x** (- [x] Tarefa 1)
- [ ] Fazer bolo
- [ ] Nadar
- [x] Ver um bonito por do sol
## Títulos e Linhas horizontais
Os títulos funcionam na mesma semântica da **HTML**            
**Símbolos utilizados: (\# Título nivel 1) (\## Título nivel 2) (\### Título nivel 3)**
# Título nivel 1
## Título nivel 2
Linhas horizontais se asemelham também a tag **(hr)**                           
**Símbolos utilizados:** \--- **ou** \*** **na linha abaixo** 
### Título nivel 3
---
## Imagens
**![nome](caminho da imagem) é recomendado utilizar a largura máxima de 500px**                              
![g5s7x](https://github.com/i2aacrom3ro/Estudo/assets/155275740/7af050f1-9268-4fb1-bdd2-4cbde012687f)
## Links
**Apenas se retira o sinal de exclamação**             
**[mensagem](endereço do link)**            
[Clique aqui!!!](https://github.com/i2aacrom3ro)

## Trechos de Códigos
### Comando isolado
Colocar a mensagem entre crases fará o ser exibido em **fonte monoespaçada e com um fundo acinzentado**
`window.document.getElementById()` **obs: A identação é criada a partir de 4 espaços da borda** 👍
### Trecho do código
Para por em um trecho, usa-se \``` acima e abaixo do código
```
nome = input('qual é seu nome')
print(f'Olá bem vindo ao meu github {nome}, espero que aproveite ;)')
```
## Ligação entre conteúdos
### Citação
usa-se o simbolo **\>** a cada linha da citação                                    
Como **Steve Jobs** disse uma vez:
> Desing é função,                                         
>  não forma
### Menções a usuários
Assim como em qualquer rede social o uso do **\@** para citar alguém também é utilizado.
### Menções a issues
Mencionar **Pull e Requests** utilizando o (#: jogo da velha) e o número do elemento (sem espaço)
## Símbolos
### Escapando das formatações
Eu utilizei este metodo para mostrar como é utilizada cada formatação                          
Basta por **uma barra invertida antes dos simbolos ( \ )**                          
É possivel criar titulos usando \# Título nivel 1                      
### Emojis
Entre símbolos faça \:nomeDoEmojiEmInglês:                 
O dia hoje está fechado tem chances altas de 🌧️                
Espero um dia me tornar um bom programador 😊             
Amanhã tem treino pesado 💪              
## Tabela
Para separar os titulos usa-se **\|Titulo 1\|Titulo 2\|Titulo 3**                              
Logo abaixo deve conter a formatação guiada pelos símbolos (\\::) e (\\---)                              
**\--- Formatação padrao**                        
**\:--- Formatação à esquerda**                    
**\:---: Formatação centralizada**                        
**\---: Formatação à direita**                     
E assim completar a tabela                    
Ano Nascimento | Nome | Profissão                 
\:---: | ---: | :---               
2001 | Alfredo | Carpinteiro             
1967 | Adair | \~~Aposentado~~               
1980 | José | Design                   
**Exemplo:**                                
Ano Nascimento | Nome | Profissão
:---: | ---: | :---
2001 | Alfredo | Carpinteiro
1967 | Adair | ~~Aposentado~~
1980 | José | Design
