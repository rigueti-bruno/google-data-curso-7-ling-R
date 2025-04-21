# Criando um vetor de frutas:
frutas <- c("uva","pera","banana","maça","laranja")

# Criando um vetor com o rank das frutas:
ranks <- c(4,5,2,3,1)

# Combinando os vetores em um novo Data Frame:
fruit_ranks <- data.frame(frutas,ranks)

# Verificando Data Frame criado:
str(fruit_ranks)

# Ordenando as linhas pelos ranks:
fruit_rankeado <- fruit_ranks[order(fruit_ranks$ranks),]

fruit_rankeado
