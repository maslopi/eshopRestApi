# eshopRestApi


Co potrzebne:

Do edycji PyCharm od JetBeans (ale dla mnie to był edytor tekstowy w zasadzie bo i tak wszystko poza edycją kodu robi się z konsoli)
MySQL (Ja używam Xamppa z MySQL i Apache, polecam)
Python 3.4 z najnowszym Django
Reszta możliwe, że jest zainstalowana ze środowiskiem które wam wrzuciłem.


Instrukcja:
1. Stawiacie mysql
2. Na mysql baza o nazwie tenant_5 (taka jest w konfigu projektu, to niech zostanie)
3. Tworzycie strukture z sql'a który jest w projekcie
4. W katalogu projektu rozpakowujecie env.rar
5. Wchodzicie z konsoli do katalogu projektu (tam gdzie jest folder env)
6. Wpisujecie env\Scripts\activate (to uruchamia środowisko wirtualne i was do niego przenosi)
7. Stąd można już odpalić apkę wpisując manage.py runserver   i powinno działać
8. Jak nie to możliwe, że musicie zrobić swoje wirtualne środowisko, co jest easy ale nie wiem jak z zainstalowanymi paczkami, głównie mysql (którego też wrzucam)
Jak już serwer stoi to można robić zmiany w projekcie i automatycznie je łapie po ctrl+s


-- Na pewno nie wszystko napisałem, ale nie wiem, które kroki będziecie musieli przejść. Może to wystarczy! --
