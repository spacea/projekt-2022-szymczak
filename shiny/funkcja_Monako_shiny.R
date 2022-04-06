#pakiet
library(readxl)
library(imager)

#funkcja Monako
taktyka_opony_monako = function(Monako){

#dane dotyczące toru Monako
Circuit_de_Monaco = read_excel("excel/Circuit de Monaco.xlsx")
Circuit_de_Monaco = as.data.frame(Circuit_de_Monaco)

#parametry opon
Dostepne_mieszanki_opon = data.frame(Mieszanki = c("Hard", "Medium", "Soft"),
                                       Lifetime = c(3100, 2200 ,1100),
                                       Speed = c(1.07, 1.015, 1))    

#czas wyscigu(bedzie rozny dla kazdej z mieszanek i  losowy)
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
    "../grafiki/taktyka/monako/monako_ssm.png"
  }
  if(taktyka == 2){
    "../grafiki/taktyka/monako/monako_shm.png"
  }
  if(taktyka == 3){
    "../grafiki/taktyka/monako/monako_hh.png"
  }
  if(taktyka == 4){
    "../grafiki/taktyka/monako/monako_hm.png"
  }
}
taktyka_opony_monako(monako)
