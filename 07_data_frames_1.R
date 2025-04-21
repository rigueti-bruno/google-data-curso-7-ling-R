library(ggplot2)
data("diamonds")
View(diamonds)

head(diamonds) # vizualiza os primeiros registros do Data Frame

str(diamonds) # visualiza a estrutura do Data Frame

colnames(diamonds) # visualiza apenas os nomes das colunas do Data Frame

library(tidyverse)
mutate(diamonds,carat_2 = carat * 100)