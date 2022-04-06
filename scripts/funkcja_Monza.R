#pakiet
library(readxl)

#funkcja Monza
taktyka_opony_monza = function(Monza){
  
#dane dotyczace toru Monza
Autodromo_Natzionale_Monza = read_excel("excel/Autodromo_Natzionale_Monza.xlsx")
Autodromo_Natzionale_Monza = as.data.frame(Autodromo_Natzionale_Monza)
  
#parametry opon
Dostepne_mieszanki_opon = data.frame(Mieszanki = c("Hard", "Medium", "Soft"),
                                     Lifetime = c(3100, 2200 ,1100),
                                     Speed = c(1.07, 1.015, 1))

#czas wyscigu(bedzie rozny dla kazdej z mieszanek i losowy)
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
taktyka_opony_monza(monza)

