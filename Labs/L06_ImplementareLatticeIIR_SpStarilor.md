---
title: Implementarea filtrelor digitale IIR în forma lattice și în spațiul stărilor
subtitle: Laborator 6, PSS
documentclass: scrartcl
fontsize: 12pt
---

# Obiectiv

Familiarizarea studenților cu formele de implementare tip *lattice* și 
tip spațiul stărilor, folosite la implementarea filtrelor de tip IIR

# Noțiuni teoretice


# Exerciții

1. Fie sistemul IIR cauzal cu poli și zerouri, cu funcția de sistem:
$$H(z) = \frac{ 1 + 2z^{-1} + 3z^{-2} + 2z^{-3} }{ 1 + \frac{2}{5}z^{-1} + \frac{7}{20}z^{-2} + \frac{1}{2}z^{-3} } $$

	Determinați și desenați structura echivalentă *lattice* cu poli și zerouri.

2. Se dă sistemul IIR cauzal numai cu poli, cu funcția de sistem:
$$H(z) = \frac{1}{ 1 + \frac{2}{5}z^{-1} + \frac{7}{20}z^{-2} + \frac{1}{2}z^{-3} } $$
	
	Determinați coeficienții structurii *lattice* și desenați-o.

3. Fie sistemul IIR cu funcția de sistem 
	$$H(z) = \frac{1 + 2z^{-1} + 3 z^{-2} + 2 z^{-3}}{1 + 0.9z^{-1} + 0.8 z^{-2} + 0.5 z^{-3}}$$
	
	a. Să se implementeze sistemul în spațiul stărilor tip I și tip II.
    b. Calculați primele 5 valori ale răspunsului la treaptă, pentru condițiile inițiale 
	$v[0]=
	\begin{bmatrix}
	0 \\
	1
	\end{bmatrix}$

4. Fie sistemul descris în spațiul stărilor de următoarele ecuații:

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
	
4. În mediul Simulink, realizați implementarea IIR filtrului de mai sus în forma *lattice*.


Observații:

- Veți avea nevoie de blocurile *Unit Delay*, *Sum* și *Gain*
- La intrare puneți un bloc *From Multimedia File*, la ieșire un bloc *To Audio Device*
- La ieșire, înainte de blocul *To Audio Device* intercalați un bloc *Manual Switch* la care semnalul original și semnalul filtrat, pentru a putea comuta ușor între cele două
- La blocul *From Multimedia File* selectați un fișier audio (de ex. Kalimba.mp3
din My Documents) și puneți setările *Sample-based*, *Samples per audio channel* = 1 
și "DataTypes/Audio output data type" = *double*

![Settings for the *From Multimedia Device* block - part 1](img/Simulink_Settings_FromMMDevice_1.png){width=50%}
![Settings for the *From Multimedia Device* block - part 2](img/Simulink_Settings_FromMMDevice_2.png){width=50%}


- Setați parametrii modelului Simulink pentru o simulare discretă, cu pas fix (auto):
    - Type: *Fixed-step*
    - Solver: *discrete (no continuous states)*
    
![Model settings for discrete models](img/Simulink_Settings_Model.png)


# Întrebări finale

1. TBD
