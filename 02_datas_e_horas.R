library(tidyverse)
library(lubridate)

today() # exibe a data atual

now() # exibe a data e hora atuais

ymd("2023-01-20") # converte a string com ano-mes-dia em data

mdy("January 20th, 2023") # converte a string com mes-dia-ano em data

dmy("20-jan-2021") # converte a string com dia-mes-ano em data

ymd(20210120) # converte uma cadeia de numeros em data

ymd_hms("2021-01-20 20:11:59") # converte a string em data hora

mdy_hm("01/20/2021 08:01") # converte a string em data hora

as_date(now()) # extrai uma data de um data hora