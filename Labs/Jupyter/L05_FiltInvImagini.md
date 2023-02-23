# Filtrare inversă pe liniile unei imagini

Să prespunem că fiecare linie a unei imagini este distorsionată, doar de-a lungul liniilor, nu si de-a lungul coloanelor.

Avem o problemă de filtare inversă 1-D pe fiecare linie a imaginii.

## Filtrul FIR invers

### Proiectarea filtrului FIR invers, cauzal, prin metoda celor mai mici pătrate

Dat fiind un filtru $H(z)$ cauzal cu răspunsul la impuls $h[n]$, 
**filtrul FIR invers** cauzal $H_I(z) = b_0 + ... + b_Nz^{N}$ se obține rezolvând sistemul următor (similar cu cel de la metoda Prony):

$$
\begin{bmatrix*}
h[0] \\ 
0 \\ 
\vdots \\ 
0 \\ 
\end{bmatrix*}
=
\begin{bmatrix*}[l]
r_{hh}[0] & r_{hh}[-1] & \dots & r_{hh}[-N)] \\
r_{hh}[1] & r_{hh}[0] & \dots & r_{hh}[-N+1)] \\
\vdots & \dots & \dots & \vdots \\ 
r_{hh}[N] & r_{hh}[N-1] & \dots & r_{hh}[0] \\
\end{bmatrix*}
\begin{bmatrix} 
b_0 \\ 
b_1 \\ 
\vdots \\ 
b_N \\ 
\end{bmatrix}
$$

### 1. Calculare filtru FIR invers

**CERINȚA 1**: Scrieți o funcție care calculează filtrul FIR invers.

Funcții Matlab:
- `length()`
- `xcorr()`


```matlab
%%file FIRinvers.m

function b = FIRinvers(ord, h)

     % TODO: write code here
     
end
```

Rulați linia de mai jos pentru a testa, cu niște valori oarecare, dacă funcția este implementată corect.


```matlab
% TESTARE

% b = FIRinvers(3, [1,2,3,4,5,6]);
assert( all(abs(   FIRinvers(3, [1,2,3,4,5,6]) - [ 0.0274; -0.0230; 0.0008; 0.0024]  )))
```

### 2. Definirea distorsiunilor

Rulați celulele următoare pentru a defini distorsiunile `distort()`, `distort_more()`, `distort_noisy()`, `distort_delay()`


```matlab
%%file distort.m
function y = distort(x)
    L1 = 5;
    coef = [zeros(1,L1) 1.1.^[0:-1:-L1]];
    coef = coef / norm(coef,1);
    coef  = fliplr(coef);  % filter2 expects kernel, not impulse response, it doesn't flip it
    coef;
    y = filter2(coef, x, 'same');
end
```


```matlab
%%file distort_more.m
function y = distort_more(x)
    L1 = 10;
    coef = [zeros(1,L1) 1.1.^[0:-1:-L1]];
    coef = coef / norm(coef,1);
    coef  = fliplr(coef);  % filter2 expects kernel, not impulse response, it doesn't flip it
    coef;
    y = filter2(coef, x, 'same');
end
```


```matlab
%%file distort_noisy.m
function y = distort_noisy(x)
    L1 = 5;
    coef = [zeros(1,L1) 1.1.^[0:-1:-L1]];
    coef = coef / norm(coef,1);
    coef  = fliplr(coef);  % filter2 expects kernel, not impulse response, it doesn't flip it
    coef;
    y = filter2(coef, x, 'same');
    
    y = y + 0.05*randn(size(y));
end

```


```matlab
%%file distort_delay.m
function y = distort_delay(x)
    Delay = 10;
    L1 = 5;
    coef = [zeros(1,L1+Delay) 1.1.^[0:-1:-L1]];
    coef = coef / norm(coef,1);
    coef  = fliplr(coef);  % filter2 expects kernel, not impulse response, it doesn't flip it
    coef;
    y = filter2(coef, x, 'same');
end
```

### 3. Distorsionarea unei imagini

**CERINȚA 2**: 
Incărcați imaginea `'lena512.bmp'`, convertiți-o la tipul `double`, convertiți-o la `grayscale`, și afișați-o.

Funcții Matlab:
  - `imread()`
  - `double()` , împărțire la 255
  - `im2gray()`
  - `imshow()`


```matlab
I = ...
I = ...
...
```

**CERINȚA 3**: treceți imaginea prin distorsiunea `distort()`, și afișați rezultatul.

Cum arată imaginea distorsionată? Ce tip de distorsiune este aceasta?


```matlab
I2 = ...
imshow(I2)
```

### Refacerea imaginii prin filtrare inversă

Etape:
- obțineți răspunsul la impuls
- calculați filtrul FIR invers
- filtrați fiecare linie a imaginii distorsionate cu filtrul invers (filtare 1-D), stocați rezultatele într-o nouă imagine
- afișați rezultatul

**CERINȚA 4**: Găsiți și afișați răspunsul la impuls al distorsiunii `distort()`


```matlab
hdis = ...

```

**CERINȚA 5**: Calculați filtrul invers cu funcția `FIRinvers()`, așisați coeficienții și răspunsul la impuls.

Cât este $H(z) = $?


```matlab
b = 

% Make b horizontal
b = b'

stem(b)
```

**CERINȚA 6**: Filtrați fiecare linie a imaginii distorsionate cu filtrul găsit, stocați rezultatele, afișați imaginea finală.


```matlab
...

imshow(Irec)
```

### CERINȚE FINALE

1. Repețați cu alte imagini (`bugs.jpg`, `barbara.png`)
2. Repetați cu celelalte funcții de distorsiune. Când se înrăutățesc rezultatele?
