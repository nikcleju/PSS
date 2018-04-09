---
title: Efectele cuantizării în filtrarea digitală
 în filtrarea digitală
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
	de intrare $x[n] = \left(\frac{1}{4}\right)^n$, în trei moduri:
	
	a. Calcule în precizie infinită
	b. Calcule în formatul virgulă fixă 1S0Î4F, cuantizare prin
	trunchiere
	c. Calcule în formatul virgulă fixă 1S0Î4F, cuantizare prin
	rotunjire
    

1. În Matlab, încărcați semnalul `mtlb` și cuantizați-l pe $N=8$ biți.
    a. Deduceți dacă aveți nevoie de bit de semn sau nu;
	b. Aflați valoarea absolută maximă a semnalului și deduceți numărul de
	biți necesar pentru partea întreagă, respectiv câți biți mai 
	rămân disponibili pentru partea fracționară;
	c. Utilizați funcția `fixdt()` pentru a crea tipul de date corespunzător
	d. Utilizați funcția `num2fixpt` pentru a converti semnalul `mtlb` la
	formatul virgulă fixă ales, prin toate cele 3 metode de cuantizare
	e. Pentru toate cele 3 metode de cuantizare, vizualizați eroarea de cuantizare, 
	calculați valoarea medie și dispersia erorii. Care metodă de cuantizare produce
	erorile minime?
	f. Redați semnalul cuantizat. Se poate sesiza diferența?
	
2. În Matlab, realizați o funcție pentru a implementa sistemul din exercițiul 1. 
Valorile se vor cuantiza după fiecare operație de înmulțire / adunare.
Aplicați la intrarea sistemului semnalul cuantizat de la exercițiul 2. 


# Întrebări finale

1. TBD
