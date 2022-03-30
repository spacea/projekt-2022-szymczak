#Monako
install.packages("readxl")
library(readxl)
Circuit_de_Monaco = read_excel("Circuit de Monaco.xlsx")
Circuit_de_Monaco = as.data.frame(Circuit_de_Monaco)
Circuit_de_Monaco
