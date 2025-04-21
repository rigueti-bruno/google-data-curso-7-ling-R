# Carregando os dados:
library(tidyverse)
data("diamonds")

# Criando o tibble:
diamonds_tibble <- as_tibble(diamonds)

# Examinando o tibble:
diamonds_tibble