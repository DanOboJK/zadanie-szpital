Select b.imie, b.nazwisko, a.kraj, a.miasto, a.ulica, a.nr_domu, a.nr_mieszkania, a.kod_pocztowy
from dane_adresowe_pracownikow a
left join dane_lekarza b On a.nr_legitymacji = b.id_legitymacji
left join dane_pracownika_laboratoryjnego c On a.nr_legitymacji = c.id_legitymacji
where b.id_legitymacji ="L0001"