# Vetores e Listas

# Vetores Atomicos:

a <- c(2.5,48.5,101.5) # criação normal
b <- c(3:10) # criando por uma sequencia de valores

typeof(a) # tipo de dados no vetor
is.integer(a) # verificando por um tipo de dado especifico
is.integer(b)

length(a) # comprimento/numero de elementos do vetor

names(a) <- c("a","b","c") # nomeando os elementos do vetor

a[2] # retornando o segundo elemento por seu indice
a["b"] # retornando o segundo elemento por seu nome

# Listas

c <- list("a",1,1.5,TRUE) # criando uma lista com elementos diversos
str(c) # verificando a estrutura de dados na lista

d <- list(list(1,3,5)) # criando uma lista dentro de uma lista
str(d) # estrutura de uma lista dentro de uma lista

e <- list('chicago' = 1, 'nova york' = 2, 'los angeles' = 3) #lista com valores nomeados