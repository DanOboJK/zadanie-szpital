Select a.ERP, a.imie, a.nazwisko, b.data_przyjecia from dane_pacjentow a
left join dane_wizyt b  ON a.id = b.id_pacjenta
Where b.data_przyjecia > '2021-11-01'
Order by b.data_przyjecia desc