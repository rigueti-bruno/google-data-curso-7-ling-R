data() # carrega todos os conjuntos de dados disponiveis no R

data("mtcars")
str(mtcars)

library(tidyverse)
readr_example()

# Carregando dados de um arquivo .csv com a função read_csv() do pacote readr:
read_csv(readr_example("mtcars.csv"))

# Carregando dados de um arquivo do excel (.xlsx):
library(readxl)
readxl_example()
read_excel(readxl_example("type-me.xlsx"))

# Carregando uma planilha/aba específica de um arquivo do excel:
read_excel(readxl_example("type-me.xlsx"), sheet="numeric_coercion")