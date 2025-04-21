data("ToothGrowth") # carrega o conjunto de dados
View(ToothGrowth) #visualiza o conjunto de dados
library(dplyr) # carrega o pacote de manipulação de dados
filtered_tg <- filter(ToothGrowth, dose == 0.5) # filtra os dados do dataset
arrange(filtered_tg, len) # ordena os dados do dataset

arrange(filter(ToothGrowth, dose == 0.5), len) # função filter() aninhada na função arrange()

# Usando Pipes:
filtered_toothgrowth <- ToothGrowth %>% # chama o dataset seguido do operador
  filter(dose == 0.5) %>% # filtra os dados do dataset sem indica-lo
  arrange(len) # ordena os dados do resultado filtrado do dataset

filtered_toothgrowth


# Usando pipes para agrupar e sumarizar dados:
filtered_toothgrowth <- ToothGrowth %>%
  filter(dose == 0.5) %>%
  group_by(supp) %>% #agrupa os dados pela coluna supp
  summarize(mean_len = mean(len,na.rm=T), .group ="drop") # calcula a media e
# atribui um grupo drop aos dados e os apresenta em um sumario

filtered_toothgrowth
