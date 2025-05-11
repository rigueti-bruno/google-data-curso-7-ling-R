library(ggplot2)
library(palmerpenguins)

# diferencia pelas cores
ggplot(data=penguins) + 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color = species))

# diferencia pelas formas
ggplot(data=penguins) + 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape = species))

# diferencia pelos tamanhos
ggplot(data=penguins) + 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,size = species))

# diferencia pela transparencua
ggplot(data=penguins) + 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,alpha = species))

# atribuindo um valor especifico ao aesthetic color:
ggplot(data=penguins) + 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g, alpha=species),color = "blue")
