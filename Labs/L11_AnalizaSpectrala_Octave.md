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

    $\gamma_{xx}[m] = \frac{1}{4}^m.$
	
	Să se determine ecuația cu diferențe a procesului aleator $x[n]$. Este aceasta unică? 
	Dacă nu, găsiți mai multe soluții posibile.

3. În Octave, estimați spectrul unui fișier audio.
	a. Încărcați semnalul `1st_String_E.ogg` folosind funcția `audioread()`;
    b. Afișați și redați audio semnalul;
	c. Utilizați funcția `periodogram()` pentru a estima densitatea spectrală de putere (DSP) a semnalului;
    d. Afișați DSP; pe axa X trebuie afișate valorile corecte ale frecvențelor;
	e. Identificați frecvența dominantă din spectru, și afișați-i valoarea în Hz;
    f. repetați acești pași pentru toate semnalele disponibile.

4. În Octave, creați un script care implementează un analizor de spectru, funcționând pe semnalul precedent.
    a. Încărcați semnalul `1st_String_E.ogg` folosind funcția `audioread()`;
   	a. Împărțiți semnalul în ferestre de lungime $L=100ms$, folosind funcția `buffer()`;
	c. Estimați și afișați DSP a fiecărei ferestre cu `periodogram()`, și afișați-le succesiv, cu pauză de 0.1 secunde între ele;
    d. Identificați frecvența dominantă a fiecărei ferestre și afișați-i valoarea în titlul figurii (de ex. titlul va fi "Frecv. max = 200 Hz").
    e. Găsiți o metodă de a identifica "pauzele" din melodie, și schimbați titlul în "Pauză" în acele intervale detectate.

5. Rulați analizorul de spectru pe semnalul "music.wav".

6. Repetați exercițiul 4, folosind însă metoda de estimare Yule-Walker, implementată în funcția `pyulear()`.

# Întrebări finale

1. Cum se poate crea o aplicație care să ajute la acordarea corectă a unei chitare?

