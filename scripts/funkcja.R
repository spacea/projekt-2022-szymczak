#funkcja
taktyka_opony = function(tor){
  tor = c("Spa", "Monza", "Monako")
  Spa_Francorchamps 
  Circuit_de_Monaco 
  Autodromo_Natzionale_Monza
  Dostepne_mieszanki_opon
    if(!(is.character(tor))){
      stop("Podaj jeden z trzech torów wymienionych w instrukcji w README")
    }
  if(tor == "Spa"){
    czas_przejazdu_na_softach_spa = Dostepne_mieszanki_opon[3 , 2] / ((sample(c(Spa_Francorchamps[6 , 2] : Spa_Francorchamps[7 , 2]), 1) * Spa_Francorchamps[4 , 2]) * Dostepne_mieszanki_opon[3 , 3])
    okrazenie = Spa_Francorchamps[4 , 2] * czas_przejazdu_na_softach_spa
    round(okrazenie, 0)
    czas_przejazdu_na_medach_spa = Dostepne_mieszanki_opon[2 , 2] / ((sample(c(Spa_Francorchamps[6 , 2] : Spa_Francorchamps[7 , 2]), 1) * Spa_Francorchamps[4 , 2]) * Dostepne_mieszanki_opon[2 , 3])
    okrazenie = Spa_Francorchamps[4 , 2] * czas_przejazdu_na_medach_spa
    round(okrazenie, 0)
    czas_przejazdu_na_hardach_spa = Dostepne_mieszanki_opon[1 , 2] / ((sample(c(Spa_Francorchamps[6 , 2] : Spa_Francorchamps[7 , 2]), 1) * Spa_Francorchamps[4 , 2]) * Dostepne_mieszanki_opon[1 , 3])
    okrazenie = Spa_Francorchamps[4 , 2] * czas_przejazdu_na_hardach_spa
    round(okrazenie, 0) 
  }
  if(tor == "Monako"){
    czas_przejazdu_na_softach_monako = Dostepne_mieszanki_opon[3 , 2] / ((sample(c(Circuit_de_Monaco[6 , 2] : Circuit_de_Monaco[7 , 2]), 1) * Circuit_de_Monaco[4 , 2]) * Dostepne_mieszanki_opon[3 , 3])
    okrazenie = Monako[4 , 2] * czas_przejazdu_na_softach_monako
    round(okrazenie, 0)
    czas_przejazdu_na_medach_monako = Dostepne_mieszanki_opon[2 , 2] / ((sample(c(Circuit_de_Monaco[6 , 2] : Circuit_de_Monaco[7 , 2]), 1) * Circuit_de_Monaco[4 , 2]) * Dostepne_mieszanki_opon[2 , 3])
    okrazenie = Monako[4 , 2] * czas_przejazdu_na_medach_monako
    round(okrazenie, 0)
    czas_przejazdu_na_hardach_monako = Dostepne_mieszanki_opon[1 , 2] / ((sample(c(Circuit_de_Monaco[6 , 2] : Circuit_de_Monaco[7 , 2]), 1) * Circuit_de_Monaco[4 , 2]) * Dostepne_mieszanki_opon[1 , 3])
    okrazenie = Monako[4 , 2] * czas_przejazdu_na_hardach_monako
    round(okrazenie, 0) 
  }
  if(tor == "Monza")
  {
    czas_przejazdu_na_softach_monza = Dostepne_mieszanki_opon[3 , 2] / ((sample(c(Autodromo_Natzionale_Monza[6 , 2] : Autodromo_Natzionale_Monza[7 , 2]), 1) * Autodromo_Natzionale_Monza[4 , 2]) * Dostepne_mieszanki_opon[3 , 3])
    okrazenie = Monza[4 , 2] * czas_przejazdu_na_softach_monza
    round(okrazenie, 0)
    czas_przejazdu_na_medach_monza = Dostepne_mieszanki_opon[2 , 2] / ((sample(c(Autodromo_Natzionale_Monza[6 , 2] : Autodromo_Natzionale_Monza[7 , 2]), 1) * Autodromo_Natzionale_Monza[4 , 2]) * Dostepne_mieszanki_opon[2 , 3])
    okrazenie = Monza[4 , 2] * czas_przejazdu_na_medach_monza
    round(okrazenie, 0)
    czas_przejazdu_na_hardach_spa = Dostepne_mieszanki_opon[1 , 2] / ((sample(c(Autodromo_Natzionale_Monza[6 , 2] : Autodromo_Natzionale_Monza[7 , 2]), 1) * Autodromo_Natzionale_Monza[4 , 2]) * Dostepne_mieszanki_opon[1 , 3])
    okrazenie = Monza[4 , 2] * czas_przejazdu_na_hardach_monza
    round(okrazenie, 0) 
  }
}
taktyka_opony(2)
