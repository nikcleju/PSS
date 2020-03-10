---
title: Implementarea filtrelor digitale
subtitle: Laborator 4, PSS
documentclass: scrartcl
fontsize: 12pt
---

# Obiectiv

Familiarizarea studenților diverse scheme de implementare a filtrelor digitale și
cu implementarea lor în mediul Simulink

# Noțiuni teoretice

Formele directe de implementare a filtrelor IIR sunt prezentate mai jos.

## Forme directe

![Forma directă I](img/DF1.png){width=50%}

![Forma directă II](img/DF2.png){width=50%}

![Forma directă I transpusă](img/DF1T.png){width=50%}

![Forma directă II transpusă](img/DF2T.png){width=50%}

Imaginile sunt preluate din "Introduction to Digital Filters with Audio Applications", Julius O. Smith III, disponibilă la adresa:
[https://www.dsprelated.com/freebooks/filters/](https://www.dsprelated.com/freebooks/filters/)

## Forma serie

În forma serie, funcția de sistem este descompusă ca un produs de termeni de ordin mai mic, de obicei de ordin 2:
$$H(z) = H_1(z) \cdot H_2(z) \cdot ... \cdot H_n(z)$$

Sistemul este implementat din subsistemele mai mici, $H_1(z), H_2(z) ... H_n(z)$, aranjate **în serie**.
Fiecare subsistem individual poate fi implementat sub orice formă.

Exemplu:

![Exemplu de implementare serie](img/SeriesForm.gif){width=75%}

Imaginea este preluată din "DSP blockset manual", Mathworks, disponibil aici:
[http://matrix.etseq.urv.es/manuals/matlab/toolbox/dspblks/biquadraticfilter.html](http://matrix.etseq.urv.es/manuals/matlab/toolbox/dspblks/biquadraticfilter.html)


## Forma paralel

În forma paralel, funcția de sistem este descompusă ca o sumă de funcții de ordin mai mic:
$$H(z) = H_1(z) + H_2(z) + ... + H_n(z)$$

Sistemul este implementat din subsistemele mai mici $H_1(z), H_2(z) ... H_n(z)$ aranjate **în paralel**.

Exemplu:

![Exemplu de implementare în forma paralel](img/ParallelForm.gif){width=50%}

Imaginea este preluată din "Introduction to DSP", BORES Signal Processing, disponibil aici:
[http://www.bores.com/courses/intro/iir/5_para.htm](http://www.bores.com/courses/intro/iir/5_para.htm)



# Exerciții

1. Pentru un filtru general IIR de ordin 3, cu funcția de sistem: 
$$H(z) = \frac{b_0 + b_1 z^{-1} + b_2 z^{-2} + b_3 z^{-3}}{1 + a_1 z^{-1} + a_2 z^{-2} + a_3 z^{-3}},$$
să se deseneze implementarea filtrului în următoarele forme:

    a. forma directă I
    b. forma directă II
    c. forma directă I transpusă
    c. forma directă II transpusă

2. Pentru filtrul digital cu funcția de sistem: 
$$H(z) = \frac{2 (1 -z^{-1}) (1 + \sqrt(2) z^{-1} + z^{-2})}{(1 + 0.5 z^{-1}) (1 - 0.9 z^{-1} + 0.81 z^{-2}},$$
să se deseneze schema de implementare în una din formele serie (la alegere)

3. Pentru filtrul digital cu funcția de sistem: 
$$H(z) = \frac{5 - 6 z^{-1} + 3.72 z^{-2} - 0.74 z^{-3}}{1 - 1.5 z^{-1} + 1.24 z^{-2} - 0.37 z^{-3}} = 2 + \frac{1}{1-0.5 z^{-1}} + \frac{2 - z^{-1}}{1 - z^{-1} + 0.74 z^{-2}},$$
să se deseneze schema de implementare în forma paralel

1. În mediul Matlab, utilizați utilitarul `fdatool` pentru a proiecta unul din filtrele următoare:
    
    a. Un filtru trece-jos IIR de ordin 4, de tip eliptic, cu frecvența de tăiere de 4kHz la o frecvență de eșantionare de 44.1kHz;
    a. Un filtru trece-sus IIR de ordin 4, de tip eliptic, cu frecvența de tăiere de 1kHz la o frecvență de eșantionare de 44.1kHz;
    a. Un filtru trece-bandă IIR de ordin 4, de tip eliptic, cu banda de trecere între 700Hz și 4kHz la o frecvență de eșantionare de 44.1kHz.

1. În mediul Simulink, realizați implementarea filtrelor de mai sus în forma directă II. Aplicați la intrare un semnal audio și ascultați la ieșire
semnalul filtrat și cel original. Caracterizați diferența auditivă între cele două semnale.

1. În mediul SImulink, schimbați una dintre implementările anterioare la o formă serie ("Second-Order-Sections").

Observații:

- Setați parametrii modelului Simulink pentru o simulare discretă, cu pas fix (auto):
    - Type: *Fixed-step*
    - Solver: *discrete (no continuous states)*
    
![Model settings for discrete models](img/Simulink_Settings_Model.png)

- Veți avea nevoie de blocurile *Unit Delay*, *Sum* și *Gain*
- La intrare puneți un bloc *From Multimedia File*, la ieșire un bloc *To Audio Device*
- La ieșire, înainte de blocul *To Audio Device* intercalați un bloc *Manual Switch* la care semnalul original și semnalul filtrat, pentru a putea comuta ușor între cele două
- La blocul *From Multimedia File* selectați un fișier audio (de ex. Kalimba.mp3
din My Documents) și puneți setările *Sample-based*, *Samples per audio channel* = 1 
și "DataTypes/Audio output data type" = *double*

![Settings for the *From Multimedia Device* block - part 1](img/Simulink_Settings_FromMMDevice_1.png){width=50%}
![Settings for the *From Multimedia Device* block - part 2](img/Simulink_Settings_FromMMDevice_2.png){width=50%}


# Întrebări finale

1. TBD
