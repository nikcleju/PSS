---
title: Efectele depășirilor în filtrarea digitală
subtitle: Laborator 10, PSS
documentclass: scrartcl
fontsize: 12pt
---

# Obiectiv

Studiul efectelor produse de depășirile de format în cadrul implementărilor 
în virgulă fixă ale unui filtru digital.

# Noțiuni teoretice


# Exerciții

1. Se consideră sistemul 
	$$H(z) = \frac{1-\frac{1}{2}z^{-1}}{\left(1 - \frac{1}{4}z^{-1}\right)\left(1 + \frac{1}{4}z^{-1}\right)}$$

    a. Să se deseneze realizarea în una din formele serie
	b. Considerăm o implementare în formatul virgulă fixă, cu $b$ biți pentru partea fracționară.
	Fiecare produs se cuantizează prin rotunjire la acest format.
	Determinați dispersia zgomotului de rotunjire datorat multiplicărilor
	la ieșirea implementării de la punctul a.


2. Fie sistemul următor:
	$$H(z) = \frac{1-0.8z^{-1} -0.78z^{-3} + 0.1z^{-4}}{1 + 0.1z^{-1} - 0.08z^{-2}
    -0.264z^{-3} - 0.0504z^{-4}}$$

    a. Generați un semnal de intrare $x[n] = 0.9 u[n]$ și afișați-l.
    b. Calculați ieșirea sistemului $y[n]$ folosind implementarea în forma directă 2 
    (utilizați funcția `filter_df2()` atașată, creată într-un laborator anterior).
    c. Afișați semnalul $y[n]$ precum și semnalul intern $w[n]$ (vezi figura atașată).
    
    ![Scalarea unei implementări în forma directă 2](img/ScalingL2.png)

3. Reprezentați grafic cele două caracteristici posibile ale sumatoarelor, $g1()$ și $g2()$
    implementate în fișierele `.m` atașate. Ce semnificația au aceste caracteristici referitor
    la sumare?
    
4. Aplicați cele două caracteristici de sumare $g1()$ și $g2()$ celor două
   sume calculate în interiorul implementării, pentru a simula efectul unor sumatoare
   cu lungime finită. Afișați ieșirea $y[n]$ și semnalul intern $w[n]$ (vezi figura). 
   Este acesta un scenariu favorabil sau nu?

5. Calculați cele trei norme de scalare pentru prevenirea depășirilor, $l_{\infty}$, $l_1$ și $l_2$, folosind funcția atașată `normescal()`. 
    Aplicați scalările așa cum este reprezentat în figură. Afișați din nou semnalele $w[n]$
    și $y[n]$. Este acest scenariu mai bun sau mai rău decât situația anterioară?
    
# Întrebări finale

1. TBD
