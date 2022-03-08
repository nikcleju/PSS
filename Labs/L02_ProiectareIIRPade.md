---
title: Proiectarea filtrelor IIR prin metoda Pade
subtitle: Laborator 2, PSS
documentclass: scrartcl
fontsize: 12pt
---

# Obiectiv

Proiectarea filtrelor IIR prin metoda Pade

# Noțiuni teoretice

A se vedea cursul, sau PSS_L2_Tehnici_directe_proiectare_IIR.pdf

# Exerciții

1. Să se determine prin metoda Pade parametrii filtrului cu funcția de sistem
$$H(z) = \frac{b_0 + b_1 z^{-1} + b_2 z^{-2}}{1 + a_1 z^{-1} + a_2 z^{-2}},$$
    dacă răspunsul la impuls dorit este 
$$h_d[n] = \left(\frac{1}{3}\right)^n \cos\left(n \pi\right) u[n] + u[n-3]$$


1. Rezolvați numeric în Matlab sistemul de ecuații aferent metodei Pade de la exercițiul anterior
$$
\begin{bmatrix} h_d[0] \\ h_d[1] \\ h_d[2] \\ h_d[3] \\ h_d[4] \\ \end{bmatrix}
= 
\begin{bmatrix} 
0 & 0 & 1 & 0 & 0 \\ 
-h_d[0] & 0 & 0 & 1 & 0 \\ 
-h_d[1] & -h_d[0] & 0 & 0 & 1 \\ 
-h_d[2] & -h_d[1] & 0 & 0 & 0 \\ 
-h_d[3] & -h_d[2] & 0 & 0 & 0 \\ 
\end{bmatrix}
\cdot
\begin{bmatrix} a_1 \\ a_2 \\ b_0 \\ b_1 \\ b_2 \\ \end{bmatrix}
$$ 

1. Implementați în Matlab o funcție de rezolvare a sistemului de ecuații pentru metoda Pade:

    ```[b,a] = metodapade(ordin, hd)```

    Funcția va primi ca argumente:
	* `ordin`: ordinul filtrului dorit
	* `hd`: un vector cu răspunsul la impuls dorit
	
	Funcția va returna coeficienții funcției de sistem a filtrului proiectat:
	* `b`: coeficienții de la numărător
	* `a`: coeficienții de la numitor

2. Utilizați această funcție pentru a găsi, prin metoda Pade, parametrii filtrului de ordin 2 
care aproximează impulsul la impuls dorit de forma:
$$h_d[n] = \left(\frac{1}{3}\right)^n \cdot \cos(\frac{\pi}{4}n)\cdot u[n]$$

3. Utiliați funcția `impz()` pentru a găsi răspunsul la impuls al unui sistem cu 
$$H(z) = \frac{1 - 1.7 z^{-1} + 0.7 z^{-2}}{1 + 1.3 z^{-1} + 0.4 z^{-2}}.$$

    Apoi folosiți funcția `metodapade()` pentru a aproxima un filtru de același ordin 2 
    din răspunsul la impuls. Se obțin coeficienții din $H(z)$ original?

3. Să se încarce un semnal audio în Matlab și să se filtreze cu filtrul proiectat mai sus.
Redați semnalul filtrat la ieșirea audio a sistemului.

# Întrebări finale

1. TBD
