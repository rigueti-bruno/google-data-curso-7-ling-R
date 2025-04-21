library(tidyverse)

# Lendo o arquivo CSV:
bookings_df <- read_csv("hotel_bookings.csv")

# Inspecionando os dados:

head(bookings_df) # lendo os primeiros registros

str(bookings_df) # resume as colunas dos data frame horizontalmente

colnames(bookings_df) # retorna os nomes das colunas do Data Frame

# Manipulando Dados:

new_df <- select(bookings_df,'adr','adults') # extrai colunas do data frame
                                             # salva em um novo data frame
new_df

mutate(new_df, total = `adr` / adults)