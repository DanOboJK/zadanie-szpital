SELECT b.nazwa_probki, COUNT(a.id) AS ilosc
FROM wyniki_testow a
Left join pobrane_probki b ON a.id_probki = b.id
GROUP BY b.nazwa_probki
order by ilosc desc;