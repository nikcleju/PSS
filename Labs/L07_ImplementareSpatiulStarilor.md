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
	1
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

	
3. Utilizați utilitarul `fdatool` pentru a proiecta unul din filtrele următoare:
    
    a. Un filtru trece-jos IIR de ordin 4, de tip eliptic, cu frecvența de tăiere de 5kHz la o frecvență de eșantionare de 44.1kHz;
    a. Un filtru trece-sus IIR de ordin 4, de tip eliptic, cu frecvența de tăiere de 1kHz la o frecvență de eșantionare de 44.1kHz;
    a. Un filtru trece-bandă IIR de ordin 4, de tip eliptic, cu banda de trecere între 700Hz si 4kHz la o frecvență de eșantionare de 44.1kHz.
    
    Exportați coeficienții în Workspace-ul Matlab.
	
4. În Matlab implementați o funcție `filter_spst(b, a, x)` care filtrează un semnal `x`
cu filtrul definit de coeficienții `b` și `a`.
    - Implementarea va fi realizată conform ecuațiilor de tip spațiul stărilor I


5. Testați funcția realizată mai sus coeficienții obținuți la exercițiul 3), pentru un semnal audio oarecare.


# Întrebări finale

1. TBD
