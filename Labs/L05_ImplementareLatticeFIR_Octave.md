---
title: Implementarea filtrelor digitale FIR în forma lattice
subtitle: Laborator 5, PSS
documentclass: scrartcl
fontsize: 12pt
---

# Obiectiv

Familiarizarea studenților cu formele de implementare tip *lattice* folosite
la implementarea filtrelor de tip FIR

# Noțiuni teoretice


# Exerciții

1. Determinați coeficienții filtrului FIR în forma directă
dacă se cunosc coeficienții de reflexie ai structurii *lattice*:
$K_1 = \frac{1}{2}$, $K_2 = 0.6$, $K_3 = -0,7$, $K_1 = \frac{1}{3}$.

2. Determinați coeficienții structurii *lattice* pentru un filtru FIR cu funcția de sistem:
$$H(z) = 1 + \frac{2}{5}z^{-1} + \frac{7}{20}z^{-2} + \frac{1}{2}z^{-3}$$


3. Using the Octave software, use the `fir1()` function to design one of the following FIR filters:
    
    a. A low-pass FIR filter of order 4, with cutoff frequency of 5kHz at a sampling frequency of 44.1kHz;
    a. A high-pass FIR filter of order 4, with cutoff frequency of 2kHz at a sampling frequency of 44.1kHz;
    a. A band-pass FIR filter of order 4, with passband between 1kHz and 3kHz at a sampling frequency of 44.1kHz.
    
4. În Octave, utilizați funcția `fir1()` pentru a proiecta unul dintre următoarele filtre FIR:
    
    a. Un filtru trece-jos FIR de ordin 4, cu frecvența de tăiere de 5kHz la o frecvență de eșantionare de 44.1kHz;
    a. Un filtru trece-sus FIR de ordin 4, cu frecvența de tăiere de 1kHz la o frecvență de eșantionare de 44.1kHz;
    a. Un filtru trece-bandă FIR de ordin 4, cu banda de trecere între 700Hz si 4kHz la o frecvență de eșantionare de 44.1kHz.


4. Creați o funcție `tf2latc()` pentru a calcula coeficienții formei *lattice* pentru un filtru FIR, 
pornind de la coeficienții funcției de transfer.

    Funcția va fi apelată sub forma: `K = tf2lact(b)`
    
    Convertiți filtrul proiectat anterior.

4. Creați o funcție pentru a filtra un semnal `x` cu o implementare tip *lattice*, :
    
    ```
    y = filter_latc(K, x)
    ```

5. Utilizați funcția de mai sus pentru a filtra melodia `Kalimba.mp3`.

    a) Încărcați fișierul folosind `audioread()`;
    b) Utilizați `tf2latc()` pentru a conevrti filtrul proiectat în  forma *lattice*;
    c) Filtrați semnalul cu funcția `filter_latc()` și afișați/redați semnalul obținut.


# Întrebări finale

1. TBD
