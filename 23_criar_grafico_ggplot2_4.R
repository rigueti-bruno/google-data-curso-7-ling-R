library(ggplot2)
library(palmerpenguins)

# cria um gráfico de dispersão
ggplot(data=penguins) + 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

# cria uma gráfico de linha suavizada
ggplot(data=penguins) + 
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g))

# combinando os dois gráficos na mesma visualização:
ggplot(data=penguins) + 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g)) + 
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g))

# cria uma gráfico de linha suavizada para cada espécie:
ggplot(data=penguins) + 
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g,linetype = species))

# cria uma gráfico de dispersão com ruído de aleatoriedade nos pontos de dados:
ggplot(data=penguins) + 
  geom_jitter(mapping=aes(x=flipper_length_mm,y=body_mass_g))
  # evita sobreposição entre os pontos de dados

# cria um gráfico de barras:
ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut,fill=clarity))
