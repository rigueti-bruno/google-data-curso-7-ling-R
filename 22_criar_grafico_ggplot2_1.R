library(ggplot2)
library(palmerpenguins)
data(penguins)
View(penguins)

# Criando o Gráfico:
ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))