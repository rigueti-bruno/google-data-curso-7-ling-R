library(ggplot2)
library(palmerpenguins)

ggplot(data=penguins) + 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))


# Template:
# ggplot(data=<DATA>) + 
#   <GEOM_FUNCTION>(mapping=aes(<AESTHETIC MAPPINGS>))

ggplot(data=penguins) + 
  geom_point(mapping=aes(x=bill_length_mm,y=bill_depth_mm))