#pakiet
library(readxl)

#funkcja
wybor_toru = function(tor){

#parametry opon
Dostepne_mieszanki_opon = data.frame(Mieszanki = c("Hard", "Medium", "Soft"),
                                     Lifetime = c(3100, 2200 ,1100),
                                     Speed = c(1.07, 1.015, 1))  
   
#jezeli tor Spa
  if(tor == 1){

#dane dotyczace toru Spa
Spa_Francorchamps = read_excel("excel/Spa.xlsx")
Spa_Francorchamps = as.data.frame(Spa_Francorchamps)
   
#funkcja Spa
taktyka_opony_spa = function(Spa){

#czas wyscigu (bedzie rozny dla kazdej z mieszanek i losowy)
race_time = sample(c(Spa_Francorchamps[6 , 2] : Spa_Francorchamps[7 , 2]), 1) * Spa_Francorchamps[4 , 2]
  czas_przejazdu_na_softach_spa = Dostepne_mieszanki_opon[3 , 2] / (race_time * Dostepne_mieszanki_opon[3 , 3])
    okrazenia = Spa_Francorchamps[4 , 2] * czas_przejazdu_na_softach_spa
      spa_softy = round(okrazenia, 0)
  czas_przejazdu_na_medach_spa = Dostepne_mieszanki_opon[2 , 2] / (race_time * Dostepne_mieszanki_opon[2 , 3])
    okrazenia = Spa_Francorchamps[4 , 2] * czas_przejazdu_na_medach_spa
      spa_medy = round(okrazenia, 0)
  czas_przejazdu_na_hardach_spa = Dostepne_mieszanki_opon[1 , 2] / (race_time * Dostepne_mieszanki_opon[1 , 3])
    okrazenia = Spa_Francorchamps[4 , 2] * czas_przejazdu_na_hardach_spa
      spa_hardy = round(okrazenia, 0)
    
#dostepne konfiguracje opon
konfiguracje_opon = c((2 * Spa_Francorchamps[8 , 2]) + ((2 * spa_softy) * (race_time / Spa_Francorchamps[4 , 2])) + (spa_hardy * (race_time / Spa_Francorchamps[4 , 2])), (2 * Spa_Francorchamps[8 , 2]) + (spa_softy * (race_time / Spa_Francorchamps[4 , 2])) + (spa_medy * (race_time / Spa_Francorchamps[4 , 2])) + (spa_hardy * (race_time / Spa_Francorchamps[4 , 2])), Spa_Francorchamps[8 , 2] + ((2 * spa_hardy) * (race_time / Spa_Francorchamps[4 , 2])), (Spa_Francorchamps[8 , 2]) + (spa_medy * (race_time / Spa_Francorchamps[4 , 2])) + (spa_hardy * (race_time / Spa_Francorchamps[4 , 2])))

#taktyka
taktyka = which.min(abs(konfiguracje_opon - race_time))

  if(taktyka == 1){
    cat("Na ten wyścig najlepiej będzie wybrać dwa komplety miękkich opon i komplet twardych")
  }
  if(taktyka == 2){
    cat("Na ten wyścig najlepiej będzie wybrać po jednym komplecie opon miękkich, średnich i twardych")
  }
  if(taktyka == 3){
    cat("Na ten wyścig najlepiej będzie wybrać dwa komplety opon twardych")
  }
  if(taktyka == 4){
    cat("Na ten wyścig najlepiej będzie wybrać po jednym komplecie opon średnich i twardych")
  }
}
cat(taktyka_opony_spa(spa))

#jezeli tor w Monako
   }else if(tor == 2){
   
#dane dotyczace toru w Monako
Circuit_de_Monaco = read_excel("excel/Circuit de Monaco.xlsx")
Circuit_de_Monaco = as.data.frame(Circuit_de_Monaco)

#funkcja Monako
taktyka_opony_monako = function(Monako){
  
#czas wyscigu (bedzie rozny dla kazdej z mieszanek i losowy)
race_time = sample(c(Circuit_de_Monaco[6 , 2] : Circuit_de_Monaco[7 , 2]), 1) * Circuit_de_Monaco[4 , 2]
  czas_przejazdu_na_softach_monako = Dostepne_mieszanki_opon[3 , 2] / (race_time * Dostepne_mieszanki_opon[3 , 3])
    okrazenia = Circuit_de_Monaco[4 , 2] * czas_przejazdu_na_softach_monako
      monako_softy = round(okrazenia, 0)
  czas_przejazdu_na_medach_monako = Dostepne_mieszanki_opon[2 , 2] / (race_time * Dostepne_mieszanki_opon[2 , 3])
    okrazenia = Circuit_de_Monaco[4 , 2] * czas_przejazdu_na_medach_monako
      monako_medy = round(okrazenia, 0)
  czas_przejazdu_na_hardach_monako = Dostepne_mieszanki_opon[1 , 2] / (race_time * Dostepne_mieszanki_opon[1 , 3])
    okrazenia = Circuit_de_Monaco[4 , 2] * czas_przejazdu_na_hardach_monako
      monako_hardy = round(okrazenia, 0)
  
#dostepne konfiguracje opon
konfiguracje_opon = c((2 * Circuit_de_Monaco[8 , 2]) + ((2 * monako_softy) * (race_time / Circuit_de_Monaco[4 , 2])) + (monako_hardy * (race_time / Circuit_de_Monaco[4 , 2])), (2 * Circuit_de_Monaco[8 , 2]) + (monako_softy * (race_time / Circuit_de_Monaco[4 , 2])) + (monako_medy * (race_time / Circuit_de_Monaco[4 , 2])) + (monako_hardy * (race_time / Circuit_de_Monaco[4 , 2])), Circuit_de_Monaco[8 , 2] + ((2 * monako_hardy) * (race_time / Circuit_de_Monaco[4 , 2])), (Circuit_de_Monaco[8 , 2]) + (monako_medy * (race_time / Circuit_de_Monaco[4 , 2])) + (monako_hardy * (race_time / Circuit_de_Monaco[4 , 2])))
  
#taktyka
taktyka = which.min(abs(konfiguracje_opon - race_time))
  
  if(taktyka == 1){
    cat("Na ten wyścig najlepiej będzie wybrać dwa komplety miękkich opon i komplet twardych")
  }
  if(taktyka == 2){
    cat("Na ten wyścig najlepiej będzie wybrać po jednym komplecie opon miękkich, średnich i twardych")
  }
  if(taktyka == 3){
    cat("Na ten wyścig najlepiej będzie wybrać dwa komplety opon twardych")
  }
  if(taktyka == 4){
    cat("Na ten wyścig najlepiej będzie wybrać po jednym komplecie opon średnich i twardych")
  }
}
cat(taktyka_opony_monako(monako))

#jezeli tor Monza
 }else if(tor == 3){

#dane dotyczace toru Monza
Autodromo_Natzionale_Monza = read_excel("excel/Autodromo_Natzionale_Monza.xlsx")
Autodromo_Natzionale_Monza = as.data.frame(Autodromo_Natzionale_Monza)

#funkcja Monza
taktyka_opony_monza = function(Monza){

#czas wyscigu (bedzie rozny dla kazdej z mieszanek i losowy)
race_time = sample(c(Autodromo_Natzionale_Monza[6 , 2] : Autodromo_Natzionale_Monza[7 , 2]), 1) * Autodromo_Natzionale_Monza[4 , 2]
  czas_przejazdu_na_softach_monza = Dostepne_mieszanki_opon[3 , 2] / (race_time * Dostepne_mieszanki_opon[3 , 3])
    okrazenia = Autodromo_Natzionale_Monza[4 , 2] * czas_przejazdu_na_softach_monza
      monza_softy = round(okrazenia, 0)
  czas_przejazdu_na_medach_monza = Dostepne_mieszanki_opon[2 , 2] / (race_time * Dostepne_mieszanki_opon[2 , 3])
    okrazenia = Autodromo_Natzionale_Monza[4 , 2] * czas_przejazdu_na_medach_monza
      monza_medy = round(okrazenia, 0)
  czas_przejazdu_na_hardach_monza = Dostepne_mieszanki_opon[1 , 2] / (race_time * Dostepne_mieszanki_opon[1 , 3])
    okrazenia = Autodromo_Natzionale_Monza[4 , 2] * czas_przejazdu_na_hardach_monza
      monza_hardy = round(okrazenia, 0)
  
#dostepne konfiguracje opon
konfiguracje_opon = c((2 * Autodromo_Natzionale_Monza[8 , 2]) + ((2 * monza_softy) * (race_time / Autodromo_Natzionale_Monza[4 , 2])) + (monza_hardy * (race_time / Autodromo_Natzionale_Monza[4 , 2])), (2 * Autodromo_Natzionale_Monza[8 , 2]) + (monza_softy * (race_time / Autodromo_Natzionale_Monza[4 , 2])) + (monza_medy * (race_time / Autodromo_Natzionale_Monza[4 , 2])) + (monza_hardy * (race_time / Autodromo_Natzionale_Monza[4 , 2])), Autodromo_Natzionale_Monza[8 , 2] + ((2 * monza_hardy) * (race_time / Autodromo_Natzionale_Monza[4 , 2])), (Autodromo_Natzionale_Monza[8 , 2]) + (monza_medy * (race_time / Autodromo_Natzionale_Monza[4 , 2])) + (monza_hardy * (race_time / Autodromo_Natzionale_Monza[4 , 2])))
  
#taktyka
taktyka = which.min(abs(konfiguracje_opon - race_time))

  if(taktyka == 1){
    cat("Na ten wyścig najlepiej będzie wybrać dwa komplety miękkich opon i komplet twardych")
  }
  if(taktyka == 2){
    cat("Na ten wyścig najlepiej będzie wybrać po jednym komplecie opon miękkich, średnich i twardych")
  }
  if(taktyka == 3){
    cat("Na ten wyścig najlepiej będzie wybrać dwa komplety opon twardych")
  }
  if(taktyka == 4){
    cat("Na ten wyścig najlepiej będzie wybrać po jednym komplecie opon średnich i twardych")
  }
}
cat(taktyka_opony_monza(monza))
 }  
}
wybor_toru(2)
