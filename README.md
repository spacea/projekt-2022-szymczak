Projekt 2022 

version: alpha 0.0.1
  W tej wersji dodaliśmy 3 tory do bazy danych. Każde uruchomienie funkcji dla toru może dobrać inną taktykę, ponieważ zastosowaliśmy funkcję "sample" żeby urozmaicić wyniki naszych obliczeń. Dodaliśmy też pliki uzupełniające, ale nie użyliśmy ich, bo musimy jeszcze ustalić jak je wykorzystać.

version 1.0
  W tej wersji dodaliśmy aplikację shiny, dokonaliśmy licznych poprawek w kodzie i pouporządkowaliśmy pliki w repozytorium; poprawiliśmy błędy wskazane w recenzji.
  
Autorzy:
  Dawid Czajkowski
  Jan Wysocki
  Kornel Szymczak    
  
Opis projektu:
  Projekt zawiera aplikację, która dobiera taktykę doboru opon podczas wyścigu F1.
Wszystkie dane zebraliśmy wykonując własne pomiary w mapach oraz z oficjalnych danych udostępnianych przez F1; Grafiki torów są wykonane przez nas, a grafiki opon pochodzą z Wikipedii, na licencji CC BY-SA 4.0.
  
Instrukcja:
  Do uruchomienia aplikacji potrzebne są pakiety:
shiny,
readxl,
imager.
Aby wyświetlić taktykę opon należy uruchomić skrypt app.R z aplikacją shiny: w aplikacji znajdują się trzy pozycje i należy wybrać tor, który nas interesuje. Grafika toru wraz z odpowiednią taktyką i grafiką opon zostanie wyświetlona poniżej.

Kilka słów od nas:
  Bardzo dziękujemy za pomoc w tworzeniu aplikacji na ostatnich labach.
Trochę nas Pan nie zrozumiał- chodzi nam o podpunkt drugi w sugestiach. Nasza aplikacja nie ma na celu losowania taktyk, a wybranie najbardziej optymalnej z najczęściej używanych obecnie w wyścigach F1, dlatego nie mamy możliwości zaimplementowania elementów prawdopodobieństwa do naszej aplikacji.