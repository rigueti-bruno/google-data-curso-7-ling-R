# Pacotes necessários para executar limpeza de dados básica:
library("here")
library("skimr")
library("janitor")
library("tidyverse")
library("dplyr")

# Carregando os dados de exemplo:
library("palmerpenguins")

# Resumindo os dados:
skim_without_charts(penguins) # restorna um resumo estatístico sobre o dados

glimpse(penguins) # retorna um resumo mais objetivo sobre o que há nos dados

head(penguins) # retorna as colunas e os 10 primeiros registros do dataset

# Selecionando e obtendo colunas específicas do conjunto de dados:
penguins %>%
  select(species)

# Excluindo uma coluna da seleção:
penguins %>%
  select(-species)

# Renomeando colunas com a função rename():
penguins %>%
  rename(island_new=island)

# Alterando todos os nomes das colunas do dataset:
rename_with(penguins,toupper)

# Verificando a consistência dos nomes das colunas:
clean_names(penguins)
