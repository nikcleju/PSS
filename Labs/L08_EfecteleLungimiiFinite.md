---
title: Efectele reprezentării de lungime finită a numerelor în filtrarea digitală
subtitle: Laborator 8, PSS
documentclass: scrartcl
fontsize: 12pt
---

# Obiectiv

Studiul efectelor produse de implementarea în virgulă fixă a coeficienților
unui filtre digital.

# Noțiuni teoretice


# Exerciții

1. Să se scrie în formatul virgulă fixă cu 1 bit de semn, 6 biți pentru partea întreagă
și 6 biți pentru partea fracționară (1S6Î6F) numerele:
    a. 273
    b. 273.21875

1. Să se scrie în formatul virgulă fixă cu 1 bit de semn, 6 biți pentru partea întreagă
și 6 biți pentru partea fracționară (1S6Î6F) numerele negative următoare. 
Reprezentarea numerelor negative se va face în formatele mărime cu semn,
complement față de 1 (C1) și complement față de 2 (C2).
    a. -273
    b. -273.21875
    
1. Cuantizați eșantioanele $x_1 = 0.42625$ și $x_2 = -0.4333$ 
în formatul virgulă fixă 1S0Î4F prin:
    a. Trunchiere
    b. Rotunjire
    c. Trunchiere semn-valoare
    
    Valorile negative se reprezintă în formatul C2.
    
1. Să se realizeze următoarele operații în formatul virgulă fixă 1S0Î3F.
Valorile calculelor intermediare / finale se rotunjesc la fiecare pas.
    a. 0.3125 - 0.75 + 0.625
    

3. Utilizați utilitarul `fdatool` pentru a proiecta un filtru trece-jos IIR de ordin 4, de tip eliptic, 
cu frecvența de tăiere de 4kHz la o frecvență de eșantionare de 44.1kHz. Exportați coeficienții în Workspace-ul Matlab.

4. În utilitarul `fdatool`, setați parametrii de cuantizare la "fixed-point arithmetic" în formatul
virgulă fixă 1S1Î4F. Cum se modifică funcția de transfer a circuitului? 
Pentru ce număr de biți considerați că erorile devin neglijabile?

1. Fie sistemul IIR cu funcția de sistem 
	$$H(z) = \frac{1 + 2z^{-1} + 3 z^{-2} + 2 z^{-3}}{1 + 0.9z^{-1} + 0.8 z^{-2} + 0.5 z^{-3}}$$
	
	a. Să se implementeze sistemul în spațiul stărilor tip I și tip II.
    b. Calculați primele 5 valori ale răspunsului la treaptă, pentru condițiile inițiale 
	$v[0]=
	\begin{bmatrix}
	0 \\
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
