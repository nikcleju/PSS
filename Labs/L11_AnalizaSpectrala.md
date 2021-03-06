---
title: Metode de estimare spectrală
subtitle: Laborator 11, PSS
documentclass: scrartcl
fontsize: 12pt
---

# Obiectiv

Studiul unor metode de estimare spectrală și a unei
aplicații a acesteia.

# Noțiuni teoretice


# Exerciții

1. Determinați media și funcția de autocorelație a secvenței $x[n]$ care se obține
la ieșirea unui proces ARMA(1,1) descris de ecuația cu diferențe
    
	$$x[n] = \frac{1}{2}x[n-1] + w[n] + w[n-1],$$
	
	unde $w[n]$ este zgomot alb cu varianța $\sigma_w^2$ și medie $0$.
	
2. Autocorelația unui proces aleator AR $x[n]$ este:

    $\gamma_{xx}[m] = \frac{1}{4}^{|m|}.$
	
	Să se determine ecuația cu diferențe a procesului aleator $x[n]$. Este aceasta unică? 
	Dacă nu, găsiți mai multe soluții posibile.

3. În Matlab, construiți un semnal audio care "cântă" toate notele muzicale (
	Do - Do# - Re - Re# - Mi - Fa - Fa# - Sol - Sol# - La - La# - Si),
	știind că frecvențele lor sunt: [262   277   294   311   330   349   370   392   415   440   466   494] Hz.
	
4. Adaugați zgomot alb peste semnalul generat anterior

5. Realizați un script care simulează un analizor de spectru pentru semnalul de la punctul anterior.
	a. Utilizați funcția `buffer()` pentru a împărți semnalul în ferestre cu lungimea de 30ms.
	b. Utilizați funcția `periodogram()` pentru a estima și a afișa succesiv 
	spectrul fiecărei ferestre.
	c. Localizați și afișați frecvența dominantă din spectrul fiecărei ferestre.
	Afișați frecvența și nota muzicală corespunzătoare.
	d. Repetați înlocuind periodograma cu metoda Yule-Walker (`pyulear()`).

6. Rulați script-ul anterior pentru fișierul audio `Kalimba.mp3`

# Întrebări finale

1. TBD
