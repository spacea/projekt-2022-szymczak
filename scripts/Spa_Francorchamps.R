#Spa
install.packages("readxl")
library(readxl)
Spa_Francorchamps = read_excel("Spa.xlsx")
Spa_Francorchamps = as.data.frame(Spa_Francorchamps)
Spa_Francorchamps
