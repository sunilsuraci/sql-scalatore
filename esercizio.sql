--N1 Calcolare	l'insieme	(non	il	multi-insieme)	delle	coppie	(A,B)	tali	che	A	è	uno	scalatore	e	B	è	un	continente	in	cui	A	ha	effettuato	una	scalata.S
select Distinct scalatore.cf, scalata.scalatore
from  scalatore, scalata
WHERE scalatore.cf = scalata.scalatore

--N2 Per	ogni	scalatore	nato	prima	del	1980,	calcolare	tutti	i	continenti	in	cui	ha	effettuato	una	scalata,	ordinando	il	risultato	per	codice	fiscale	e,	a	parità	di	codice	fiscale,	per	il	nome	del	continente

SELECT Distinct scalatore.annonascita, scalatore.cf, scalata.scalatore, nazione.nome, scalata.nazione
FROM scalatore, scalata, nazione
WHERE scalatore.annonascita < 1980 and scalatore.cf = scalata.scalatore and nazione.nome = scalata.nazione
order by scalatore.cf, scalata.nazione

--N3 Calcolare	le	nazioni	(mostrando,	per	ciascuna,	anche	il	continente)	nelle	quali	è	stata	effettuata	almeno	una	scalata	da	uno	scalatore	minorenne.

select distinct scalata.nazione, scalata.anno, scalatore.cf
FROM scalata, nazione, scalatore
WHERE (scalata.anno - scalatore.annonascita) < 18 and scalata.nazione = nazione.nome and scalatore.cf = scalata.scalatore

--N4 Per	ogni	nazione,	calcolare	il	numero	di	scalate	effettuate	da	scalatori	nati	in	quella	nazione

SELECT scalata.nazione, count(scalata.nazione)
FROM nazione, scalatore, scalata 
WHERE scalata.nazione = scalatore.nazionenascita
group by scalatore.nazionenascita, scalata.nazione

--N5 Per	ogni	continente,	calcolare	il	numero	di	scalate	effettuate	da	scalatori	nati	in	una	nazione	di	quel	continente

SELECT  nazione.continente,  count( distinct scalata.nazione)
FROM nazione, scalatore, scalata
WHERE scalatore.nazionenascita = scalata.nazione and nazione.nome = scalata.nazione and scalatore.cf = scalata.scalatore
group by nazione.continente

--N6 Calcolare	codice	fiscale,	nazione	di	nascita,	continente	di	nascita	di	ogni	scalatore	nato	in	un	continente	diverso	dall’America,	e,	solo	se	egli	ha	effettuato	almeno	una	scalata,	affiancare	queste	informazioni	alle	nazioni	in	cui	ha	effettuato	scalate.

SELECT scalatore.cf, scalatore.nazionenascita, scalatore.
FROM
WHERE