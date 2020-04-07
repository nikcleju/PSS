---
title: Implementarea în spațiul stărilor a filtrelor digitale IIR
subtitle: Laborator 7, PSS
documentclass: scrartcl
fontsize: 12pt
---

# Obiectiv

Familiarizarea studenților cu formele de implementare tip în spațiul stărilor
a filtrelor IIR.

# Noțiuni teoretice


# Exerciții

1. Fie sistemul IIR cu funcția de sistem 
	$$H(z) = \frac{1 + 2z^{-1} + 3 z^{-2} + 2 z^{-3}}{1 + 0.9z^{-1} + 0.8 z^{-2} + 0.5 z^{-3}}$$
	
	a. Să se implementeze sistemul în spațiul stărilor tip I și tip II.
    b. Calculați primele 5 valori ale răspunsului la treaptă, pentru condițiile inițiale 
	$v[0]=
	\begin{bmatrix}
	0 \\
	0 \\
	1 \\
	\end{bmatrix}$

2. Fie sistemul descris în spațiul stărilor de următoarele ecuații:

	$$v[n+1] = 
	\begin{bmatrix}
	0     & 1 \\
	-0.81 & 1
	\end{bmatrix}
	v[n] + 
	\begin{bmatrix}
	0 \\
	1
	\end{bmatrix}
	x[n]
	$$
	$$y[n] = 
	\begin{bmatrix}
	- 1.81 & 1 
	\end{bmatrix}
	+ x[n]
	$$

	a. Determinați funcția de transfer a circuitului
	b. Calculați primele 5 valori ale răspunsului la treaptă, pentru condițiile inițiale 
	$v[0]=
	\begin{bmatrix}
	0 \\
	1
	\end{bmatrix}$
	c. Reprezentați implementarea în spațiul stărilor (I și II) și în forma directă II.

	
3. În Octave, utilizați funcția `ellip()` pentru a proiecta unul din filtrele următoare:
    
    a. Un filtru trece-jos IIR de ordin 4, cu frecvența de tăiere de 3kHz la o frecvență de eșantionare de 8kHz;
    a. Un filtru trece-sus IIR de ordin 4, cu frecvența de tăiere de 1kHz la o frecvență de eșantionare de 8kHz;
    a. Un filtru trece-bandă IIR de ordin 4, cu banda de trecere între 700Hz și 3kHz la o frecvență de eșantionare de 8kHz;
    a. Un filtru oprește-bandă IIR de ordin 4, cu banda de oprire între 1kHz și 3kHz la o frecvență de eșantionare de 8kHz.
    
    Numiți vectorii de coeficienți `b` și `a`.
	
    
4. În Octave, implementați o funcție `filter_stsp(b, a, x)` pentru a filtra un semnal `x` 
cu un filtru definit de coeficienții `b` and `a`. Implementarea va utiliza ecuațiile matriciale
ale implementării în spațiul stărilor de tip I.

5. Utilizați funcția de mai sus pentru a filtra un semnal audio `Sample.wav`.

    a) Încărcați fișierul folosind `audioread()`;
    b) Filtrați semnalul cu funcția `filter_stsp()` și afișați/redați semnalul obținut.


# Întrebări finale

1. TBD
