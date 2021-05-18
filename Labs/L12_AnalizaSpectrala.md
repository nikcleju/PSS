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

3. În Matlab, generați un semnal de lungime $N=1000$ după cum urmează:
	
	$x[n] = \cos(2 \cdot \pi \cdot f_1 \cdot n) + 0.5 \cdot \cos(2 \cdot \pi \cdot f_2 \cdot n) + A \cdot zgomot$
	
	unde $f_1 = 1 / 44100$ și $f_2 = 1.8 / 44100$, iarr zgomotul este aleator, alb, gaussian, aditiv (`randn()`).
	
	Utilizați valori diferite pentru A (de ex. 0.1, 0.3).
	
4. Estimați densitatea spectrală de putere a semnalului `x`:
    1. Calculați transformata Fourier $X(f)$ a lui $x$ (folosiți `fft()`), și afisați $|X(f)|^2$
	2. Utilizați funcția `periodogram()`
	3. Impărțiți semnalul in 2, 4, sau 10 segmente egale, calculați periodograma fiecăruia, apoi mediați-le.
	   Care sunt diferențele?
	4. Use the Yule Walker method (`pyulear`).
	
	Investigați următoarele:
	  - sunt vârfurile spectrale localizate corect la frecvențele $f_1$ și $f_2$?
	  - sunt vârfurile spectrale înguste sau largi?
	  - este spectrul zgomotului constant ("flat") sau nu?
	  
	  
5. Realizați un script care simulează un analizor de spectru ]n timp real.
	a. Încărcați semnalul `music.wav` cu funcția `audioread()`.
	a. Utilizați funcția `buffer()` pentru a împărți semnalul în ferestre cu lungimea de 30ms.
	b. Utilizați funcția `periodogram()` pentru a estima și a afișa succesiv 
	spectrul fiecărei ferestre.
	c. Opțional: localizați și afișați frecvența dominantă din spectrul fiecărei ferestre.
	Afișați frecvența și nota muzicală corespunzătoare.

# Întrebări finale

1. TBD
