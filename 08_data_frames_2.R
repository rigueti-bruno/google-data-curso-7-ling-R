# Criando o vetor de nomes:
names <- c("Pedro","Paulo","Jose","Maria")

# Criando o vetor de idades:
ages <- c(71,48,58,63)

# Montando um Data Frame com os vetores chamado people:
people <- data.frame(names,ages)

# Visualizando as primeiras linhas de dados:
head(people)


# Obtendo resumos sobre os dados:
str(people) # resumo com os tipos de dados e os dados das colunas
            # retorna também o numero de linhas(obs) e o numero de colunas(variables)

library(tidyverse)
glimpse(people) # traz os mesmos resultados da função str(), mas em um formato diferente

# Obtendo uma lista com os nomes das colunas no Data Frame:
colnames(people)

# Adicionando uma nova coluna ao Data Frame:
mutate(people,age_in_20 = ages + 20)
str(people)
