

select *
FROM scalata

select *
FROM scalatore

SELECT *
FROM nazione

-------------------------------------


--N9 Calcolare	gli	scalatori	tali	che	tutte	le	scalate	che	hanno	effettuato	nella	nazione	di	nascita	le	hanno	effettuate	quando	erano	minorenni.	
select s.anno, scalatore.nazionenascita, count(*) 
FROM scalatore join scalata s on scalatore.cf = s.scalatore
    join scalata s2 on scalatore.nazionenascita = s2.nazione
WHERE (s.anno - scalatore.annonascita) > 18 and scalatore.nazionenascita = scalatore.nazionenascita
group by s.anno, scalatore.nazionenascita