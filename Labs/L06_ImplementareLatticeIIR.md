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
