#funkcja_Monako
taktyka_opony_monako = function(Monako){
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
  konfiguracje_opon = c((2 * Circuit_de_Monaco[8 , 2]) + ((2 * monako_softy) * (race_time / Circuit_de_Monaco[4 , 2])) + (monako_hardy * (race_time / Circuit_de_Monaco[4 , 2])), (2 * Circuit_de_Monaco[8 , 2]) + (monako_softy * (race_time / Circuit_de_Monaco[4 , 2])) + (monako_medy * (race_time / Circuit_de_Monaco[4 , 2])) + (monako_hardy * (race_time / Circuit_de_Monaco[4 , 2])), Circuit_de_Monaco[8 , 2] + ((2 * monako_hardy) * (race_time / Circuit_de_Monaco[4 , 2])), (Circuit_de_Monaco[8 , 2]) + (monako_medy * (race_time / Circuit_de_Monaco[4 , 2])) + (monako_hardy * (race_time / Circuit_de_Monaco[4 , 2])))
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
taktyka_opony_monako(monako)
