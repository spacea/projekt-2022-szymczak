Sektor1_softy = Autodromo_Natzionale_Monza[13, 2]
Sektor1_softy

Sektor1_medy = Autodromo_Natzionale_Monza[13, 2] * Dostepne_mieszanki_opon[2, 3]
Sektor1_medy                                                                           

Sektor1_hardy = Autodromo_Natzionale_Monza[13, 2] * Dostepne_mieszanki_opon[1, 3]
Sektor1_hardy
##################################################################

Sektor2_softy = Autodromo_Natzionale_Monza[19, 2]
Sektor2_softy

Sektor2_medy = Autodromo_Natzionale_Monza[19, 2] * Dostepne_mieszanki_opon[2, 3]
Sektor2_medy 

Sektor2_hardy = Autodromo_Natzionale_Monza[19, 2] * Dostepne_mieszanki_opon[1, 3]
Sektor2_hardy
##################################################################

Sektor3_softy =  Autodromo_Natzionale_Monza[25, 2]
Sektor3_softy

Sektor3_medy = Autodromo_Natzionale_Monza[25, 2] * Dostepne_mieszanki_opon[2, 3]
Sektor3_medy

Sektor3_hardy = Autodromo_Natzionale_Monza[25, 2] * Dostepne_mieszanki_opon[1, 3]
Sektor3_hardy

##################################################################

fastest_lap = Autodromo_Natzionale_Monza[3, 2]
fastest_lap

sredni_czas_softy = (Sektor1_softy + Sektor2_softy + Sektor3_softy)
sredni_czas_softy

sredni_czas_medy = (Sektor1_medy + Sektor2_medy + Sektor3_medy)
sredni_czas_medy

sredni_czas_hardy = (Sektor1_hardy + Sektor2_hardy + Sektor3_hardy)
sredni_czas_hardy
#################################################################

sred_czas_sektor1 = mean(Sektor1_hardy, Sektor1_medy, Sektor1_softy)
sred_czas_sektor1

sred_czas_sektor2 = mean(Sektor2_hardy, Sektor2_medy, Sektor2_softy)
sred_czas_sektor2

sred_czas_sektor3 = mean(Sektor3_hardy, Sektor3_medy, Sektor3_softy)
sred_czas_sektor3
##################################################################

czas_softy = sred_czas_k_softy * (strategia)
czas_medy = sred_czas_k_medy * (strategia)
czas_hardy = sred_czas_k_hardy * (strategia)

