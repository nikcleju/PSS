---
title: Efectele cuantizării în filtrarea digitală
subtitle: Laborator 9, PSS
documentclass: scrartcl
fontsize: 12pt
---

# Obiectiv

Studiul efectelor produse de cuantizarea semnalelor în cadrul
unui filtru digital.

# Noțiuni teoretice


# Exerciții

1. Fie sistemul cu ecuația cu diferențe următoare:

	$$y[n] = \frac{1}{2}y[n-1] + x[n]$$

	Calculați primele 6 eșantioane ale răspunsului la semnalul 
        de intrare $x[n] = \left(\frac{1}{4}\right)^n u[n]$, în trei moduri:
	
	a. Calcule în precizie infinită
	b. Calcule în formatul virgulă fixă 1S0Î4F, cuantizare prin
	trunchiere
	c. Calcule în formatul virgulă fixă 1S0Î4F, cuantizare prin
	rotunjire
    

1. În Octave, creați un fișier tip *script* pentru a studia cuantizarea unui semnal audio
 pe un format virgulă fixă cu $N=8$ biți.
    a. Încărcați semnalul audio `Sample.wav ` și păstrați doar primele trei secunde ale semnalului. Numiți acest vector `x`.
    a. Reprezentați grafic semnalul `x`, și deduceți dacă avem nevoie de bit de semn sau nu;
	b. Aflați valoarea absolută maximă a semnalului și deduceți numărul de
	biți necesar pentru partea întreagă, respectiv câți biți mai 
	rămân disponibili pentru partea fracționară;
    c. Utilizați funcția din laborator `cuant()` pentru a cuantiza semnalul `x`
        pe formatul binar virgulă fixă determinat mai sus, 
        prin toate cele trei metode de cuantizare;
    d. Pentru toate cele 3 metode de cuantizare, vizualizați semnalul cuantizat,
	eroarea de cuantizare, și calculați energia totală a erorii de cuantizare.
	Care metodă de cuantizare produce erorile minime?
    e. Afișați histogramele erorilor de cuantizare și deduceți distribuția acestora, în toate cele trei cazuri;
	f. Redați semnalul cuantizat. Se poate auzi diferența față de semnalul original?
    Experimentați cu un număr mai mare sau mai mic de biți până când se aud distorsiuni în semnal.
        
2. Fie implementarea în forma directă 2 a unui filtru IIR furnizată în fișierul `filter_df2.m` 
(acest fișier a fost creat la laboratorul 4).

    a. Simulați implementarea acestui filtru pe un format virgulă fixă cu $N = 8$ biți,
    cuantizând toate semnalele din interiorul filtrului:
      
      - semnalul de intrare;
      - rezultatul fiecărei operații de înmulțire și de adunare din implementarea filtrului.
      
    b. Aplicați sistemul cuantizat asupra semnalului original din exercițiul 2.
    Aplicați de asemenea și sistemul original, necuantizat, asupra aceluiași semnal.
    Afișați cele două semnale de ieșire pe aceeași figură.
    
    c. Calculați semnalul de eroare dintre cele două ieșiri de mai sus, calculați energia sa și afișați-i histograma.


# Întrebări finale

1. TBD
