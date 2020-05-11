---
title: Predicție liniară
subtitle: Laborator 12, PSS
documentclass: scrartcl
fontsize: 12pt
---

# Obiectiv

Studenții vor utiliza predicția liniară (codarea liniar predictivă) într-o aplicație simplă
de prelucrare a seriilor de timp.

# Noțiuni teoretice


# Exerciții

1. Se consideră sistemul descris de ecuația cu diferențe
	$$y[n] = 0.8 y[n-1] + x[n] + x[n-1],$$
	unde $x[n]$ este un proces aleator staționar cu medie $0$ și 
	autocorelație $\gamma_{xx}[m] = \left( \frac{1}{2} \right)^{|m|}$
	
	a. Determinați densitatea spectrală de putere a ieșirii $y[n]$;
	b. Determinați funcția de autocorelație a ieșirii, $\gamma_{yy}[m]$;
	c. Determinați varianța $\sigma_{y}^2$ a ieșirii.


2. În Octave, încărcați datele din fișierul `COVID_World.csv` folosind funcția `csvread()`. 
Acestea reprezintă numărul zilnic al cazurilor noi raportate de COVID-19 în lume, începând cu
data de 17 ianuarie și până în data de 11 mai.
    a. Afișați datele;
    b. Afișați suma cumulativă a datelor (numărul total de cazuri până în fiecare zi).

3. Încărcați de asemenea datele din fișierul `COVID_Ro.csv`, care reprezintă doar datele pentru România. 
începând din 11 mai și până în 1 ianuarie. Inversați vectorul, pentru a fi aranjat în ordine cronologică 
(începând cu 1 ianuarie și până în 11 mai).

4. Utilizați funcția atașată `lpc()` pentru a estima coeficienții liniar predictivi din secvența de date.
Utilizați diferite ordine de predicție (de ex. 5, 10, 30).
    a. Instalați mai întâi package-urile Octave numite `nan` și `tsa`, apoi încărcați-le:

        ```
        pkg install -forge nan
        pkg install -forge tsa

        pkg load nan
        pkg load tsa    
        ```
        
    b. Care dintre eșantioanele precedente este cel mai semnificativ predictor al unui eșantion?
    c. Afisați vectorul valorilor prezise împreună cu secvența originală, pentru a estima calitatea predicției;
    d. Afisați semnalul de eroare de predicție;
    e. Preziceți numărul de cazuri pentru următoarele trei zile, conform modelului.

4. Repetați estimarea folosind suma cumulativă a cazurilor.

5. Generați un semnal sinusoidal cu frecvența $f=0.003$, de lungime 3000 eșantioane, peste care se suprapune un zgomot aleator de amplitudine $0.1$.
Estimați coeficienții liniari predictivi și afișați pe aceeași figură valorile prezise și semnalul original. 
Care dintre acestea are mai puțin zgomot prezent?




# Întrebări finale

1. TBD
