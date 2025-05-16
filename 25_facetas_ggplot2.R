library(ggplot2)
library(palmerpenguins)

# Facetas para 1 variável:
# mesma variavel para os graficos e facetas
ggplot(data=penguins) + 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species)) + 
  facet_wrap(~species)

# variaveis diferentes para definir os graficos e facetas
ggplot(data=diamonds) + 
  geom_bar(mapping=aes(x=color,fill=cut)) + 
  facet_wrap(~cut)

# Facetas para 2 váriaveis:
ggplot(data=penguins) + 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species)) + 
  facet_grid(sex~species)
# os graficos são deifnidos verticalmente pela variavel da esquerda - sex
# os graficos são definidos horizontalmente pela variavel da direita - species