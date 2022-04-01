Projekt 2022 

version: alpha 0.0.1
  W tej wersji dodaliśmy 3 tory do bazy danych. Każde uruchomienie funkcji dla toru może dobrać inną taktykę, ponieważ zastosowaliśmy funkcję "sample" żeby urozmaicić wyniki naszych obliczeń. Dodaliśmy też pliki uzupełniające, ale nie użyliśmy ich, bo musimy jeszcze ustalić jak je wykorzystać.

Autorzy:
  Dawid Czajkowski
  Jan Wysocki
  Kornel Szymczak    
  
Opis projektu:
  Projekt będzie zawierać aplikację, która dobiera taktykę doboru opon podczas wyścigu F1.
  Wszystkie dane zebraliśmy wykonując własne pomiary w mapach oraz z oficjalnych danych udostępnianych przez F1; Grafiki torów są wykonane przez nas a grafiki opon pochodzą z Wikipedii, na licencji CC BY-SA 4.0.
  
Instrukcja:
  Aby wyświetlić taktykę opon należy uruchomić skrypty:
- Spa_Francorchamps.R
- Monako.R
- Monza.R
- funkcja_Spa.R
- funkcja_Monako.R
- funkcja_Monza.R
- opony.R
- wybierz_tor.R
  W funkcji "wybor_toru" należy wpisać wartość od 1 do 3, gdzie:
- 1 -> tor Spa
- 2 -> tor Monako
- 3 -> tor Monza
  program po wykonaniu wszystkich kroków poda taktykę doboru opon na wybranym torze. 