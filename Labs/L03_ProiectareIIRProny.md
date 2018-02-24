---
title: Proiectarea filtrelor IIR prin metoda Prony
subtitle: Laborator 3, PSS
documentclass: scrartcl
fontsize: 12pt
---

# Obiectiv

Proiectarea filtrelor IIR prin metoda Prony.

# Noțiuni teoretice

Vezi PSS_L2_Tehnici_directe_proiectare_IIR.pdf

# Exerciții

1. Implementați în Matlab o funcție de rezolvare a sistemului de ecuații pentru metoda Prony:

    ```[b,a] = pronymet(ordin, hd)```

    Funcția va primi ca argumente:
	* `ordin`: ordinul filtrului dorit
	* `hd`: un vector cu răspunsul la impuls dorit
	
	Funcția va returna coeficienții funcției de sistem a filtrului proiectat:
	* `b`: coeficienții de la numărător
	* `a`: coeficienții de la numitor

2. Folosiți metoda Prony pentru a găsi parametrii filtrului de ordin 2 
care aproximează următoarea filtru de ordin superior (3):
$$H(z) = \frac{0.0736 + 0.0762 z^{-1} + 0.0762 z^{-1} + 0.0736 z^{-3}}
{1 - 1.3969 z^{-1} + 0.8778 z^{-1} - 0.1812 z^{-3}}$$

    a. Folosiți funcția `impz()` pentru a genera un răspuns la impuls
	suficient de lung al filtrului dat;
	b. Utilizați funcția `pronymet()` pentru a proiecta filtrul;
	c. Reprezentați pe același grafic răspunsul la impuls al filtrului inițial
	și al celui proiectat, pentru primele 50 de eșantioane.

3. Să se încarce un semnal audio în Matlab și să se filtreze cu filtrul proiectat mai sus.
Redați semnalul filtrat la ieșirea audio a sistemului.

# Întrebări

1. TBD
