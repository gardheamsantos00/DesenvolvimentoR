#################################################
########### 01 - Explorando o RStudio ###########
#################################################

setwd("C:/DesenvolvimentoR")
getwd()

# Informações sobre a sessão
sessionInfo()


# Imprimir na tela
print('R - Uma das melhores para análise de Dados')


# Criar gráficos
plot(1:30)

# Instalar pacotes
install.packages('randomForest')
install.packages('ggplot2')
install.packages("dplyr")
install.packages("devtools")


# Carregar o pacote
library(ggplot2)


# Descarregar o pacote
detach(package:ggplot2)


# Visualizando o diretório de trabalho
getwd()


# Se souber o nome da função
help(mean)
?mean


# exemplos do uso da função
example('plot')

#################### 01 - Hands On ####################

# 1- Configurar Diretório
# 2- Instalar e carregar o pacote "ggplot2"
# 3- ler linha de comando:

options ( scipen= 999 ) 
theme_set ( theme_bw ()) 
data ( "midwest" , package = "ggplot2" ) 
midwest <- read.csv("http://goo.gl/G1K41K") 
gg <- ggplot (midwest, aes ( x= area, y= poptotal)) +
  geom_point ( aes ( col= state, size= popdensity)) + 
  geom_smooth ( method= "loess" , se= F) + xlim ( c ( 0 , 0.1 )) +
  ylim ( c ( 0 , 500000 )) + labs ( subtitle= "Area Vs Population" , y= "Population" , x= "Area" , title= "Scatterplot" , caption = "Source: midwest" ) 
plot (gg)

############################################
########### 02 - Operadores em R ###########
############################################


# Operadores Básicos

# Soma
4 + 4

# Subtração
4 - 4

# Multiplicação
4 * 4

# Divisão
4 / 4

# Potência
4^2
4**2

# Módulo
10 %% 3 


# Operadores Relacionais 

# Atribuindo variáveis
a = 7
a
b <- 5
b

# Operadores
a > 8
a < 8
a <= 8
a >= 8
a == 8
a != 8


# Operadores lógicos

# Atribuindo variáveis
a = 7
b = 5

# And
(a==8) & (b==6)
(a==7) & (b==5)
(a==8) & (b==5)

# Or
(a==8) | (b>5)
(a==8) | (b>=5)

# Not
a > 8
!(a > 8)

#################### 02 - Hands On ###################

#1- Atribuir valor para a variável "a" igual ao resto da divisão de 11 por 4
#2- Usar operadores relacionais para verificar se "a" é maior que 1 e diferente de 2

################################################
########### 03 - Tipos de Dados em R ###########
################################################

# Numeric - Números criados em R são do tipo numérico
num = 2.5
num

num2 = 4
num2

x = -123
x
class(x)

# Conversão de tipos Numeric
y = as.integer(num2)
class(y)
y


x2 = 3.14
x2
y2 = as.integer(x2) 
y2
y3 = as.integer(3.94) 
y3


as.integer('4.27')
as.integer("J")
as.integer(TRUE)


# Character
char1 = 'A'
char1

char2 = "bolha"
char2

# Logic
x = 1; y = 2 
z = x > y
z
class(z)

u = TRUE; v = FALSE 
class(u)
u & v
u | v   
!u


# Operações com 0
5/0

# Erro
'J'/5

#################### 03 - Hands On ###################

#leia o comando abaixo
a <- 2.1
b = "2.9"

#1- Verifique se a parte inteira de "b" é diferente do valor de "a".
#e atribua a variável "z" o valor lógico.
#2- Verifique se z é igual a 1.

#########################################
########### 04 - Objetos em R ###########
#########################################
#tibble

# Vetor: possui 1 dimensão e 1 tipo de dado

vetor0 = c(1.7)
vetor0
length(vetor0)
class(vetor0)

vetor1 <- c(1:10)
vetor1
length(vetor1)
class(vetor1)

vetor2 <- c("alfa","beta","gama")
vetor2
class(vetor2)

vetor3<-c(1,2,"alpha")
vetor3
length(vetor3)
class(vetor3)

mat<-matrix(c(1,0,0,1),nrow=2)

vetor4<-c("alpha",1,mat)
vetor4
length(vetor4)
class(vetor4)

# Matriz: possui 2 dimensões e 1 tipo de dado 

matriz1 <- matrix(1:10, nrow = 2)
matriz1
length(matriz1)
class(matriz1)

matriz1 <- matrix(1:10, nrow = 2,byrow=TRUE)
matriz1

matriz2 <- matrix(c(1,2,"um","dois"), nrow = 2)
matriz2
length(matriz2)
class(matriz2)

# Data Frames: dados de diferentes tipos
# Maneira mais fácil de explicar data frames são uma matriz com diferentes tipos de dados

df <- data.frame(c(10,20,30),c("futebol","basquete","natação"))
df
?data.frame
length(df)
class(df)


# Listas: coleção de diferentes objetos
# Diferentes tipos de dados são possíveis e comuns
vetor1<-c("alpha","beta","gama")
matriz1 <- matrix(1:10, nrow = 2)

lista1 <- list(matriz1,vetor1)
lista1
length(lista1)
class(lista1)


# Funções também são vistas como objetos em R

func1 <- function(x) {
  var1 <- x * x
  return(var1)
}

func1(5)
class(func1)

lista2 <- list(matriz1,vetor1,func1)
lista2

#################### 04 - Hands On ###################

#1- criar um vetor numérico e um vetor de characteres com 2 elementos cada
#2- criar um dataframe com os dois vetores anteriores.
#3- criar uma lista com 4 elementos (1 valor lógico, 1 vetor, 1 matriz, 1 dataframe)

####################################
########### 05 - Vetores ###########
####################################

# Vetor de caracteres
vetor_caracter = c("Oi", "vetores")
vetor_caracter


# Vetor de floats
vetor_numerico = c(1.90, 45.3, 300.5) 
vetor_numerico


# Vetor de valores lógicos
vetor_logico = c(TRUE, FALSE, TRUE, FALSE, FALSE) 
vetor_logico


# Vetor de números inteiros
vetor_integer  = c(2, 4, 6)
vetor_integer


# Utilizando rep()
vetor2 = rep(1:5,3)
vetor2


# Indexação de vetores
a <- c(1,2,3,4,5)
a
a[1]

b <- c("João","Maria","José")
b
b[1]
b[2]
b[4]


# Combinando vetores
v1 = c(2, 3, 5) 
v2 = c("aa", "bb", "cc", "dd", "ee") 
c(v1, v2) 
v2[1:2]
v2[4:5]
c(v2[1:2],v2[4:5])
v2[-3]

# Operaçõees com Vetores
x = c(1, 3, 5, 7) 
y = c(2, 4, 6, 8)

x * 5
x + y
x - y
x * y
x / y


# Vetor Nomeado
vetor = c(29, 1.80) 
vetor
names(vetor) = c("Idade","Altura") 
vetor
vetor["Idade"] 

#################### 05 - Hands On ###################


#1- Crie 1 vetor de inteiros com 500 elementos e 1 vetor de caracteres 500 elementos
#2- Crie um vetor a partir da combinação dos 2 vetores anteriores
#3- Crie um vetor com o elemento da posição 121° e 750° do vetor combinado.


#####################################
########### 06 - Matrizes ###########
#####################################

# Criando Matrizes

# Número de Linhas
matrix (c(1,2,3,4,5,6), nr = 2)
matrix (c(1,2,3,4,5,6), nr = 3)
matrix (c(1,2,3,4,5,6), nr = 6)


# Número de Colunas
matrix ( c ( 1,2,3,4,5,6), nc = 2)


# Help
?matrix


# Matrizes precisam ter um número de elementos que seja múltiplo do número de linhas
matrix ( c (1,2,3,4,5), nc = 2)


# Criando matrizes a partir de vetores e preenchendo a partir das linhas
meus_dados = c(1:10)
matrix(data = meus_dados, nrow = 5, ncol = 2, byrow = T)
matrix(data = meus_dados, nrow = 5, ncol = 2)


# Fatiando a Matriz
mat <- matrix(c(2,3,4,5), nr = 2)
mat
mat[1,2]
mat[2,2]
mat[1,3]
mat[,2]


# Criando uma matriz diagonal
matriz = 1:3
diag(matriz)
diag(9)

# Extraindo vetor de uma matriz diagonal
vetor = diag(matriz)
diag(vetor)


# Transposta da matriz
W <- matrix (c(2,4,8,12 ), nr = 2, ncol = 2)
W
U <- t(W)
U

# Obtendo uma matriz inversa
solve(W)


# Multiplicação de elementos das Matrizes 
mat1 <- matrix(c(2,3,4,5), nr = 2)
mat1
mat2 <- matrix(c(6,7,8,9), nr = 2)
mat2
mat1 * mat2
mat1 / mat2
mat1 + mat2
mat1 - mat2

# Multiplicação das Matrizes 

mat1%*%mat2

# Multiplicando Matriz com Vetor
x = c(1:4)
x
y <- matrix(c(2,3,4,5), nr = 2)
y
x * y 


# Nomeando a Matriz
mat3 <- matrix(c('Futebol', 'Natação', 'Basquete', 'Piscina'), nr = 2)
mat3
dimnames(mat3) = (list( c("Linha1", "Linha2"), c("Coluna1", "Coluna2")))
mat3


# Identificando linhas e colunas no momento de criação da Matriz
matrix (c(1,2,3,4), nr = 2, nc = 2, dimnames = list(c("Linha 1", "Linha 2" ), c( "Coluna 1", " Coluna 2") ))


# Combinando Matrizes
mat4 <- matrix(c(2,3,4,5), nr = 2)
mat4
mat5 <- matrix(c(6,7,8,9), nr = 2)
mat5
cbind(mat4, mat5)
rbind(mat4, mat5)


# Desconstruindo a Matriz
c(mat4)

#################### 06 - Hands On ###################

#1- Crie uma matriz 2x3 e uma matriz 3x2 e faça a multiplicação de matrizes
#2- Ache o inverso e a transposta da matriz encontra em "1".

matriz1 <- matrix(1:6,nrow=2)
matriz1
matriz2 <- matrix(7:12,nrow=3)
matriz2
matriz3 = matriz1 %*% matriz2

solve(matriz3)

###################################
########### 07 - Listas ###########
###################################
#str(iris)

# Use list() para criar listas

# Lista de strings
lista_caracter = list('A', 'Bem-vindo', 'DSA')
lista_caracter


# Lista de números inteiros
lista_inteiros = list(2, 3, 4)
lista_inteiros


# Lista de floats
lista_numerico = list(1.90, 45.3, 300.5)
lista_numerico


# Lista de valores lógicos
lista_logicos = list(TRUE, FALSE, FALSE)
lista_logicos


# Listas Compostas
lista_composta1 = list("A", 3, TRUE)
lista_composta1

lista1 <- list(1:10, c("Maria", "João", "Alfredo"), rnorm(10))
lista1

?rnorm

# Slicing da Lista
lista1[1]
lista1[c(1,2)]
lista1[2]
lista1[[2]][1]  
lista1[[2]][1] = "Monica" 
lista1

# Para nomear os elementos - Listas Nomeadas
names(lista1) <- c("inteiros", "caracteres", "numéricos")
lista1

lista1$inteiros

lista1[[1]]

vec_num <- 1:4
vec_char <- c("A", "B", "C", "D")

lista2 <- list(Numeros = vec_num, Letras = vec_char)
lista2


# Nomear os elementos diretamente
lista2 <- list(elemento1 = 3:5, elemento2 = c(7.2,3.5))
lista2


# Trabalhando com elementos específicos da lista
names(lista1) <- c("inteiros", "caracteres", "numéricos")
lista1

lista1$caracteres
length(lista1)
length(lista1$inteiros)
lista1$inteiros


# Verificar o comprimento da lista
length(lista1)


# Podemos extrair um elemento específico dentro de cada nível da lista
lista1$caracteres[2]


# Combinando 2 listas
lista3 <- c(lista1, lista2)
lista3


# Transformando um vetor em lista
v = c(1:3)
v
l  = as.list(v)
l


# Unindo 2 elementos em uma lista
mat = matrix(1:4, nrow = 2)
mat
vec = c(1:9)
vec
lst = list(mat, vec)
lst

#################### 07 - Hands On ###################

#1- Criar uma lista com 1 vetor com 2 elementos e uma matrix identidade 2x2
#2- Nomear os elementos da lista
#2- Selecionar apenas a primeira linha da matriz a partir da lista

####################################
########### 08 - Strings ###########
####################################
#tiris = iris
#edit(tiris)

# String
texto <- "Isso é uma string!"
texto

x = as.character(3.14) 
x
class(x) 


# Concatenando Strings
nome = "Barack"; sobrenome = "Obama" 
paste(nome, sobrenome)
paste0(nome, sobrenome)
cat(nome, sobrenome)


# Formatando a saída
nome = "Barack Obama"
anos = 8
sprintf("%s governou os EUA por %d anos", nome, anos) 

# Extraindo parte da string
texto <- "Isso é uma string!"
substr(texto, start=12, stop=17) 
?substr

# Contando o número de caracteres
nchar(texto)


# Alterando a capitalização
tolower("Isso é uma string!")
toupper("Isso é uma string!")


# Usando stringr
library(stringr)


# Dividindo uma string em caracteres
strsplit("Isso é uma string!", NULL)
?strsplit


# Dividindo uma string em caracteres, após o caracter espaço
strsplit("Histogramas e Elementos de Dados", " ")


# Trabalhando com strings
string2 <- c("Precisamos testar outras strings - @???!Â§$",
             "Análise de Dados em R")
string2


# Podemos contar quantas vezes um caracter aparece no texto
str_count(string2, "s")


# Localiza a primeira e última posição em que o caracter aparece na string
str_locate_all(string2, "s")


# Substitui a primeira ocorrência de um caracter
str_replace(string2, "\\s", "")


# Substitui todas as ocorrências de um caracter
str_replace_all(string2, "\\s", "")


#################### 08 - Hands On ###################

#1-Leia o código abaixo:
string1 <- "Campos inundados, rios cheios e estradas bloqueadas:" 
string2 = "A passagem do furacão Florence, que deixou danos de bilhões de dólares."
#2- Concatene os 2 strings numa 3ª string
#3- Localize a palavra "furacão" na 3ª string
#4- substitua a palavra "furacão" por "tempestade tropical" na 3ª string

#######################################
########### 9 - DataFrames ###########
#######################################

# Criando um dataframe vazio
df <- data.frame()
class(df)
df

# Criando vetores vazios
nomes <- character()
idades <- numeric()
codigos <- integer()

df <- data.frame(c(nomes, idades, codigos))
df


# Criando vetores
pais = c("EUA", "Dinamarca", "Holanda", "Espanha", "Brasil")
nome = c("Maurício", "Pedro", "Aline", "Beatriz", "Marta")
altura = c(1.78, 1.72, 1.63, 1.59, 1.63)
codigo = c(5001, 2183, 4702, 7965, 8890)


# Criando um dataframe de diversos vetores
pesquisa = data.frame(pais, nome, altura, codigo)
pesquisa

# Adicionando um novo vetor a um dataframe existente
olhos = c("verde", "azul", "azul", "castanho", "castanho")
pesq = cbind(pesquisa, olhos)
pesq


# Informações sobre o dataframe
str(pesq)
dim(pesq)
length(pesq)

# Obtendo um vetor de um dataframe
pesq$pais
pesq$nome
pesq$olhos

# Extraindo um único valor
pesq[1,1]
pesq[3,2]

#editar data.frame
pesq = edit(pesq)
pesq

# Número de Linhas e Colunas
nrow(pesq)
ncol(pesq)

# Primeiros elementos do dataframe
head(pesq)
head(mtcars)


# últimos elementos do dataframe
tail(pesq)
tail(mtcars)


# Data frames built-in do R
?mtcars
mtcars

# Filtro para um subset de dados que atendem a um critério
pesq[altura < 1.60,]
pesq[altura < 1.60, c('codigo', 'olhos')]
pesq


# Dataframes Nomeados
names(pesq) <- c("País", "Nome", "Altura", "Código", "Olhos")
pesq

colnames(pesq) <- c("Var 1", "Var 2", "Var 3", "Var 4", "Var 5")
rownames(pesq) <- c("Obs 1", "Obs 2", "Obs 3", "Obs 4", "Obs 5")
pesq


# Importando arquivos
# read.xls() - Excel
# read.mtp() - Minitab
# read.spss() - SPSS
# read.table() - Arquivos txt
# read.csv() - Arquivos csv
# read.delim() - Leitura de arquivos delimitados

?read.csv
df2 <- data.frame(read.csv(file = 'dframe.csv', header = TRUE, sep = ","))
head(df2)
summary(df2)

df2$Diabete
df2$status
df2$Status

plot(df2$Admdate)


summary(mtcars$mpg)
plot(mtcars$mpg, mtcars$disp)
plot(mtcars$mpg, mtcars$wt)


# Combinando dataframes
df3 <- merge(pesq, df2)
df3

#################### 09 - Hands On ###################

###################################################
########### 10 - Estruturas de Controle ###########
###################################################

# If-else
x = 25
if (x < 30) 
{"Este número é menor que 30"}


# Chaves não são obrigatórios, mas altamente recomendados
if (x < 30) 
  "Este número é menor que 30"


# Else
if (x < 7) {
  "Este número é menor que 7"
} else {
  "Este número não é menor que 7"
}


# Comandos podem ser ainhados
x = 7
if (x < 7) {
  "Este número é menor que 7"
} else if(x == 7) {
  "Este é o número 7"
}else{
  "Este número não é menor que 7"
}


# Ifelse
x = 5
ifelse (x < 6, "Correto!", NA)

x = 9
ifelse (x < 6, "Correto!", NA)


# Expressões ifelse aninhadas
x = c(7,5,4)
ifelse(x < 5, "Menor que 5", 
       ifelse(x == 5, "Igual a 5", "Maior que 5"))


# Estruturas if dentro de funções
func1 <- function(x,y){
  ifelse(y < 7, x + y, "Não encontrado")
}

func1(4,2)
func1(40,7)


# Rep
rep(rnorm(10), 5)


# Repeat
x = 1
repeat {
  x = x + 3
  if (x > 99)
    break
  print(x)}


# Loop For
for (i in 1:20) {print(i)}
for (q in rnorm(10)) {print(q)}


# Ignora alguns elementos dentro do loop
for(i in 1:22){
  if(i == 13 | i == 15)
    next
  print (i)}


# Interromper o loop
for(i in 1:22){
  if(i == 13)
    break
  print (i)}


# Loop While
x = 1
while(x < 5){
  x = x + 1
  print(x)
}

# O loop while não será executado
y = 6
while(y < 5){
  y = y+10
  print(y)
}

#################### 10 - Hands On ###################

#1- Imprima os valores pares de 100 a 200.


####################################
########### 11 - Funções ###########
####################################

# Funções Built-in
abs(-43)
sum(c(1:5))
mean(c(1:5))
round(c(1.1:5.8))
rev(c(1:5))
seq(1:5)
sort(c(4,9,3,6))
append(c(1:5), 6)

vec1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vec2 <- sort(vec1)
vec2

# Funções dentro de funções
plot(rnorm(10))
mean(c(abs(vec1), abs(vec2)))


# Criando funções
myfunc <- function(x) { x + x }
myfunc(10)
class(myfunc)

myfunc2 <- function(a, b) {
  valor = a ^ b
  print(valor)
}
myfunc2(3, 2)

jogando_dados <- function() {
  num <- sample(1:6, size = 1) #Local
  num
}

jogando_dados()

#################### 11 - Hands On ###################

#1- Crie uma função que calcule 10 números aleatórios de
#1 a 10 e calcule a média desses números

