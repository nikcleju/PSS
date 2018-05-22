---
title: Proiectarea filtrelor IIR prin metoda Pade
subtitle: Laborator 2, PSS
documentclass: scrartcl
fontsize: 12pt
---

# Obiectiv

Proiectarea filtrelor IIR prin metoda Pade

# Noțiuni teoretice

Vezi PSS_L2_Tehnici_directe_proiectare_IIR.pdf

# Exerciții

1. Să se determine prin metoda Pade parametrii filtrului cu funcția de sistem
$$H(z) = \frac{b_0 + b_1 z^{-1} + b_2 z^{-2}}{1 + a_1 z^{-1} + a_2 z^{-2}},$$
    dacă răspunsul la impuls dorit este 
$$h_d[n] = \left(\frac{1}{3}\right)^n \cos\left(\frac{n \pi}{4}\right).$$



1. Implementați în Matlab o funcție de rezolvare a sistemului de ecuații pentru metoda Pade:

    ```[b,a] = pade(ordin, hd)```

    Funcția va primi ca argumente:
	* `ordin`: ordinul filtrului dorit
	* `hd`: un vector cu răspunsul la impuls dorit
	
	Funcția va returna coeficienții funcției de sistem a filtrului proiectat:
	* `b`: coeficienții de la numărător
	* `a`: coeficienții de la numitor

2. Utilizați această funcție pentru a găsi, prin metoda Pade, parametrii filtrului de ordin 2 
care aproximează impulsul la impuls dorit de forma:
$$h_d[n] = \left(\frac{1}{3}\right)^n \cdot \cos(\frac{\pi}{4}n)\cdot u[n]$$

3. Să se încarce un semnal audio în Matlab și să se filtreze cu filtrul proiectat mai sus.
Redați semnalul filtrat la ieșirea audio a sistemului.

# Întrebări finale

1. TBD
