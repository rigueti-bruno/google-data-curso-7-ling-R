# Data Frame:
z <- data.frame(x=c(1,2,3),y=c(1.5,5.5,7.5))
z[2,1]

# Arquivo

# Criar Aquivo:
file.create("new_csv_file.csv")

# Copiar Arquivo:
file.copy("new_csv_file.csv", "new_csv_file_copy.csv")

# Excluir um Arquivo::
unlink("new_csv_file_copy.csv")

# Matriz

# Criar Matriz:
k <- matrix(c(3:8),nrow=2)
k

m <- matrix(c(3:8),ncol=2)
m

# Extrair um Elemento da Matriz:
m[3,2]