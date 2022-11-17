select distinct *
from scalatore

--Query n1

select count(*) as totali
from  scalatore, scalata
WHERE scalatore.cf = scalata.scalatore

select Distinct scalatore.cf, scalata.scalatore
from  scalatore, scalata
WHERE scalatore.cf = scalata.scalatore


--Query n2

SELECT Distinct scalatore.annonascita, scalatore.cf, scalata.scalatore, nazione.nome, scalata.nazione
FROM scalatore, scalata, nazione
WHERE scalatore.annonascita < 1980 and scalatore.cf = scalata.scalatore and nazione.nome = scalata.nazione
order by scalatore.cf, scalata.nazione

--Query n3

select distinct scalata.nazione, scalata.anno, scalatore.cf
FROM scalata, nazione, scalatore
WHERE (scalata.anno - scalatore.annonascita) < 18 and scalata.nazione = nazione.nome and scalatore.cf = scalata.scalatore 

--Query n4

SELECT scalata.nazione, count(scalata.nazione)
FROM nazione, scalatore, scalata 
WHERE scalata.nazione = scalatore.nazionenascita
group by scalatore.nazionenascita, scalata.nazione

--Query n5

SELECT  nazione.continente,  count( distinct scalata.nazione)
FROM nazione, scalatore, scalata
WHERE scalatore.nazionenascita = scalata.nazione and nazione.nome = scalata.nazione and scalatore.cf = scalata.scalatore
group by nazione.continente


--Query n6

SELECT distinct scalatore.cf, scalatore.nazionenascita, nazione.continente
FROM scalatore, scalata, nazione
WHERE scalatore.nazionenascita = nazione.nome and nazione.continente != 'America'


--Query n7

SELECT 
FROM
WHERE