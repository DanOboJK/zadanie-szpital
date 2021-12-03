Select b.imie, b.nazwisko, a.kraj, a.miasto, a.ulica, a.nr_domu, a.nr_mieszkania, a.kod_pocztowy
from dane_adresowe_pacjentow a
right join dane_pacjentow b On a.id_pacjenta = b.id
where b.ERP = "121456"