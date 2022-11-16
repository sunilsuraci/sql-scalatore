--N1 Calcolare	l'insieme	(non	il	multi-insieme)	delle	coppie	(A,B)	tali	che	A	è	uno	scalatore	e	B	è	un	continente	in	cui	A	ha	effettuato	una	scalata.S
select count(*)
from  scalatore, scalata
WHERE scalatore.cf = scalata.scalatore