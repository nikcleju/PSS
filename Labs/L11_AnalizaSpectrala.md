---
title: Metode de estimare spectrală
subtitle: Laborator 8, PSS
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

    $\gamma_{xx}[m] = \frac{1}{4}^m.$
	
	Să se determine ecuația cu diferențe a procesului aleator $x[n]$. Este aceasta unică? 
	Dacă nu, găsiți mai multe soluții posibile.

3. În Matlab, realizați un script care simulează un analizor de spectru.
    
	a. Încărcați semnalul `music.wav` cu funcția `audioread()`.
	b. Utilizați funcția `buffer()` pentru a împărți semnalul în ferestre cu lungimea de 30ms.
	c. Utilizați funcțiile `psd()` și `spectrum.periodogram` pentru a estima și a afișa succesiv 
	spectrul fiecărei ferestre.
	d. Localizați și afisați frecvența dominantă din spectrul fiecărei ferestre.
	Convertiți frecvența la nota muzicală.
	e. Repetați înlocuind periodigrama cu metoda Yule-Walker (`spectrum.yulear`).

# Întrebări finale

1. TBD
