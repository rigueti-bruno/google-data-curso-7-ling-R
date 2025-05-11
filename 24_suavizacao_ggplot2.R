library(ggplot2)
library(palmerpenguins)

# Suavização de Loess:
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + 
  geom_point() + 
  geom_smooth(method="loess")

# Suavização GAM:
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + 
  geom_point() + 
  geom_smooth(method="gam", formula=y ~ s(x))