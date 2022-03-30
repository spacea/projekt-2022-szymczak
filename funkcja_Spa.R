#funkcja Spa
taktyka_opony_spa = function(Spa){
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
    konfiguracje_opon = c((2 * Spa_Francorchamps[8 , 2]) + ((2 * spa_softy) * (race_time / Spa_Francorchamps[4 , 2])) + (spa_hardy * (race_time / Spa_Francorchamps[4 , 2])), (2 * Spa_Francorchamps[8 , 2]) + (spa_softy * (race_time / Spa_Francorchamps[4 , 2])) + (spa_medy * (race_time / Spa_Francorchamps[4 , 2])) + (spa_hardy * (race_time / Spa_Francorchamps[4 , 2])), Spa_Francorchamps[8 , 2] + ((2 * spa_hardy) * (race_time / Spa_Francorchamps[4 , 2])), (Spa_Francorchamps[8 , 2]) + (spa_medy * (race_time / Spa_Francorchamps[4 , 2])) + (spa_hardy * (race_time / Spa_Francorchamps[4 , 2])))
taktyka = which.min(abs(konfiguracje_opon - race_time))
taktyka
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
taktyka_opony_spa(spa)


