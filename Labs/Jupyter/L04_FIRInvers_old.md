# PSS Lab 04: Filtru FIR invers prin metoda celor mai mici pătrate

## Utilizare

Acest fișier se poate rule *live* in browser. Acest fișier este de tip Jupyter Notebook și utilizează un kernel Octave.

Utilizare:
  - `Shift+Enter` într-o celulă = Execută și avansează la celula următoare
  - `Ctrl+Enter` într-o celulă = Execută și rămâi la celula curentă

Rulați celula următoare pentru a preveni expirarea paginii online pe Binder:


```octave
%run -i -l python keepalive.py
```


```octave
pkg load signal  % Pentru Octave, trebuie rulată o data această linie la începutul programului, pentru a încărca unele funcții necesare
disp("Initialized")
```

    Initialized


## Considerații teoretice

### Proiectarea filtrului FIR invers prin metoda celor mai mici pătrate

Coeficienții $\{b_k\}$ se calculează din următorul sistem de ecuații (similar cu cel de la metoda Prony):

$$
\begin{bmatrix}
r_{hh}[0] & r_{hh}[-1] & \dots & r_{hh}[-(N-1)] \\
r_{hh}[1] & r_{hh}[0] & \dots & r_{hh}[-(N-2)] \\
\vdots & \dots & \dots & \vdots \\ 
r_{hh}[N-1] & r_{hh}[N-2] & \dots & r_{hh}[0] \\
\end{bmatrix}
\begin{bmatrix} 
b_1 \\ 
b_2 \\ 
\vdots \\ 
b_N \\ 
\end{bmatrix}
= 
\begin{bmatrix} 
- h_{hh}[0] \\ 
- r_{hh}[2,0] \\ 
\vdots \\ 
- r_{hh}[N,0] \\ 
\end{bmatrix}$$

Coeficientul $a_0$ de la numitor este:


## Aplicație: egalizare de canal (channel equalization)




## Exercițiu / Exemplu la tablă

1. Folosiți metoda celor mai mici pătrate pentru a găsi filtrul FIR invers de ordinul 2 al filtrului:
   $$H(z) = \frac{b_0 + b_1 z^{-1} + b_2 z^{-2}}{1 + a_1 z^{-1} + a_2 z^{-2}}$$

## Exerciții finale

### 1. Exercițiul 1

Implementați în Matlab o funcție de rezolvare a sistemului de ecuații pentru găsirea filtrului FIR invers:

    ```[b] = firinvers(ordin, h)```

   Funcția va primi ca argumente:
   
    - `ordin`: ordinul filtrului dorit
    
    - `hd`: un vector cu răspunsul la impuls al filtrului care se doreste a fi inversat

   Funcția va returna coeficienții funcției de sistem a filtrului proiectat:
   
    - `b`: coeficienții de la numărător ai filtrului FIR (= răspunsul la impuls)


```octave
function b = firinvers(ordin, h)
% TODO: Write here


end
```

### Exercițiul 2: Egalizare de canal

Fie un filtru cu $H(z) = 0.2798 + z^{-1} + 0.2798 z^{-2}$. Se dorește anularea efectului acestuia cu un filtru invers.

1. Scrieți funcția de transfer inversă, $H_I(z) = \frac{1}{H(z)}$
2. Afișați diagrama poli-zerouri a lui $H_I(z)$ cu funcția `zplane()`. Este acesta un filtrul stabil?


```octave
% TODO: Write here
```

3. Utilizați funcția de mai sus pentru a proiecta un filtru FIR invers, de ordinul 2, 

Afisați impulsul la răspuns al filtrului obținut, folosind `impz()`



```octave
% TODO: Write here
```

4. Aplicați filtrul invers semnalul `y` de mai sus și afisați rezultatul (`xrec`)


```octave
% TODO: Write here
```


5. Calculați eroarea dintre semnalul obținut mai sus, `xrec`, și cel original, `x`, cu formula:
   $$E = \sum_n (x_{rec} - x)^2$$



```octave
% TODO: Write here
```

### Exercițiul 3

Să se încarce un semnal audio în Matlab (`Kalimba.mp3`) și să se repete experimentul.
Redați semnalul original, cel filtrat, și cel recuperat la ieșirea audio a sistemului.

### Exercițiul 4

Repetați același experiment asupra liniilor unei imagini
