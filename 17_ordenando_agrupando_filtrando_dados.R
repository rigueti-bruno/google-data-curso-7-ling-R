library(tidyverse)
library(palmerpenguins)

# Ordenando os dados em ordem crescente pela coluna "bill_length_mm":
penguins %>%
  arrange(bill_length_mm)

# Ordenando os dados em ordem decrescente pela coluna "bill_length_mm":
penguins %>%
  arrange(-bill_length_mm)

# atribuindo os dados ordenados em uma variavel para criar um novo data frame:
penguins2 <- penguins %>%
  arrange(-bill_length_mm)

penguins2

# agrupando os dados com a função group_by e obtendo a média de uma coluna:
penguins %>%
  group_by(island) %>% #agrupa pela coluna island
  drop_na() %>% # exclui os registros vazios
  summarize(mean_bill_length_mm = mean(bill_length_mm)) # obtem a media da coluna

# obtendo os maiores valores de bill_length_mm de cada ilha:
penguins %>%
  group_by(island) %>% #agrupa pela coluna island
  drop_na() %>% # exclui os registros vazios
  summarize(max_bill_length_mm = max(bill_length_mm)) # obtem o maximo da coluna

# agrupando por mais de uma coluna e obtendo os menores e maiores valores:
penguins %>%
  group_by(species,island) %>% #agrupa pela coluna species e island
  drop_na() %>% # exclui os registros vazios
  summarize(min_bill_length_mm = min(bill_length_mm), max_bill_length_mm = max(bill_length_mm)) 
# obtem os minimos e maximos dos agrupamentos

# filtrando os dados para obter somente registros de pinguis da especie Adelie:
penguins %>%
  filter(species == "Adelie")