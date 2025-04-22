# Carregando as bibliotecas necessárias:
library(tidyverse)
library(skimr)
library(janitor)

# Carregando os dados:
bookings_df <- read_csv("hotel_bookings.csv")

# Explorando os dados:
head(bookings_df) # visualiza os primeiros dados do dataset

str(bookings_df) # resume os dados

glimpse(bookings_df) # resume os dados com mais detalhes de forma organizada

colnames(bookings_df) # obtem os nomes das colunas do dataset

skim_without_charts(bookings_df) # obtem um resumo detalhado dos dados

# Limpando os dados:

# Criando um data frame novo apenas com colunas especificas:
trimmed_df <- bookings_df %>%
  select(hotel,is_canceled,lead_time)
trimmed_df

# Renomeando uma coluna:
trimmed_df %>%
  select(hotel,is_canceled,lead_time) %>%
  rename(hotel_type = hotel)

# Combinando 2 colunas em uma só:
example_df <- bookings_df %>%
  select(arrival_date_year,arrival_date_month) %>%
  unite(arrival_month_year, c("arrival_date_month","arrival_date_year"),sep="-")

example_df

# Criando uma nova coluna com registros combinados de varias colunas:
example_df <- bookings_df %>%
  mutate(guests = adults + children + babies)

# Obtendo o total de reservas canceladas:
example_df <- bookings_df %>%
  summarize(number_canceled = sum(is_canceled))

example_df
