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