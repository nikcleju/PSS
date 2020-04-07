---
title: Implementarea filtrelor digitale IIR în forma lattice
subtitle: Laborator 6, PSS
documentclass: scrartcl
fontsize: 12pt
---

# Obiectiv

Familiarizarea studenților cu formele de implementare tip *lattice* pentru filtre IIR

# Noțiuni teoretice


# Exerciții

1. Fie sistemul IIR cauzal cu poli și zerouri, cu funcția de sistem:
$$H(z) = \frac{ 1 + 2z^{-1} + 3z^{-2} + 2z^{-3} }{ 1 + \frac{2}{5}z^{-1} + \frac{7}{20}z^{-2} + \frac{1}{2}z^{-3} } $$

	Determinați și desenați structura echivalentă *lattice* cu poli și zerouri.

2. Se dă sistemul IIR cauzal numai cu poli, cu funcția de sistem:
$$H(z) = \frac{1}{ 1 + \frac{2}{5}z^{-1} + \frac{7}{20}z^{-2} + \frac{1}{2}z^{-3} } $$
	
	Determinați coeficienții structurii *lattice* și desenați-o.

3. În Octave, utilizați funcția `ellip()` pentru a proiecta unul din filtrele următoare:
    
    a. Un filtru trece-jos IIR de ordin 4, cu frecvența de tăiere de 3kHz la o frecvență de eșantionare de 8kHz;
    a. Un filtru trece-sus IIR de ordin 4, cu frecvența de tăiere de 1kHz la o frecvență de eșantionare de 8kHz;
    a. Un filtru trece-bandă IIR de ordin 4, cu banda de trecere între 700Hz si 3kHz la o frecvență de eșantionare de 8kHz.

4. **Nu se cere; funcția este dată.** Creați o funcție Octave `tf2latc_iir()` pentru a calcula coeficienții formei *lattice* a unui filtru IIR, 
pornind de la coeficienții funcției de transfer. 
    
    `[K, V] = tf2lact_iir(b, a)`
    
    Utilizați funcția pentru a converti coeficienții filtrului proiectat mai sus.


5. În Octave, realizați o funcție pentru a filtra un semnal de intrare `x` cu un filtru IIR în forma lattice, folosind
coeficienții $K$ și $V$:
    
    ```
    y = filter_latc_iir(K, V, x)
    ```

5. Utilizați funcția de mai sus pentru a filtra melodia `Sample.wav`.

    a) Încărcați fișierul folosind `audioread()`;
    b) Utilizați `tf2lact_iir()` pentru a converti filtrul proiectat în  forma *lattice*;
    c) Filtrați semnalul cu funcția `filter_latc_iir()` și afișați/redați semnalul obținut.


# Întrebări finale

1. TBD
