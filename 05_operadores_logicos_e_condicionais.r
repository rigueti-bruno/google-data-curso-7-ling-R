data("airquality")
View(airquality)

# Exemplo com AND:
airquality[,"Solar.R"] > 150 & airquality[,"Wind"] > 10

# Exemplo com OR:
airquality[,"Solar.R"] > 150 | airquality[,"Wind"] > 10

# Exemplo com NOT:
airquality[,"Day"] != 1

# Condicionais:

x <- 4
if (x>0) {
  print("X is a positive number")
}

y <- 7
if(y>0) {
  print("y is a positive number.")
} else {
  print("y is either a negative number or zero")
}

z <- -1
if(z<0) {
  print("z is a negative number.")
} else if (z == 0) {
  print("z is zero.")
} else {
  print("z is a positive number")
}

x <- 60
x > 35 & x< 65