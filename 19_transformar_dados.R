id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)

head(employee)

# Dividindo a coluna name em duas: first_name e last_name:
separate(employee,name,into=c('first_name','last_name'),sep=" ")

# Novo Data Frame:
first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "C++", "Carlson", "Pansy", "Darius", "Claudia")

last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, first_name, last_name, job_title)

print(employee)

# Combinando duas colunas em uma: first_name e last_name em name:
unite(employee,'name',first_name,last_name,sep=' ')

library(palmerpenguins)
penguins %>%
  mutate(body_mass_kg = body_mass_g / 1000, flipper_length_m = flipper_length_mm/1000)