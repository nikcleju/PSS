# PSS Lab 03: Proiectarea filtrelor IIR prin metoda Prony

## Utilizare

Acest fișier se poate rule *live* in browser. Acest fișier este de tip Jupyter Notebook și utilizează un kernel Octave.

Utilizare:
  - `Shift+Enter` într-o celulă = Execută și avansează la celula următoare
  - `Ctrl+Enter` într-o celulă = Execută și rămâi la celula curentă

Rulați celula următoare pentru a preveni expirarea paginii


```octave
%run -i -l python keepalive.py
```

## Considerații practice

### Funcția de autocorelație

Pentru un semnal oarecare $x[n]$, funcția de autocorelație se definește ca:
$$r_{xx}[k] = \sum_{n=-\infty}^{\infty} x[n] x[n-k]$$

În Matlab, pentru un vector `x` de lungime `L` (elementele mergând de la `x[1]` la `x[L]`), funcția de autocorelație se calculează cu funcția  `xcorr()`, ca în  exemplul următor:


```octave
pkg load signal  % Pentru Octave, trebuie rulată o data această linie la începutul programului, pentru a încărca unele funcții necesare
```


```octave
x = [1,2,3,4];
rxx = xcorr(x)   % Calculează autocorelația lui x
```

    rxx =
    
        4.0000   11.0000   20.0000   30.0000   20.0000   11.0000    4.0000
    


Sunt 2*L-1 valori în total (L = lungimea lui `x`), începând de la $r_{xx}[-(L-1)]$ și până la $r_{xx}[L-1]$. Așadar, valoarea $r_{xx}[0]$ din teorie se găsește de fapt în mijlocul vectorului rezultat, `rxx(L)`:


```octave
L = length(x);
rxx(L)     % Valoarea r_xx[0] 
rxx(L+1)   % Valoarea r_xx[1] 
rxx(L-3)   % Valoarea r_xx[-3] 
```

### **Exercițiu**: afișare autocorelație

**Exercițiu**: Calculați și afișați funcția de autocorelație pentru vectorul constant $\{3, 3, 3, 3, 3, 3, 3\}$ (cu funcțiile `xcorr()` și `stem()`).
Indicați apoi care sunt valorile lui $r_{xx}[0]$ și $r_{xx}[2]$


```octave
% TODO: scrieți codul aici

```

Reprezentarea grafică are forma unui triunghi.

## Autocorelația parțială pentru metoda Prony

Pentru metoda Prony avem nevoie de valorile unei funcții de **autocorelație parțială**, definită ca:
$$r_{xx}[k,l] = r_{xx}[k-l] = \sum_{n=M+1}^\infty h[n-k] h[n-l] = \sum_{n=M+1-k}^\infty h[n] h[n+(k-l)]$$

Diferența este că **suma nu începe de la $n=0$**, ci de la o valoare superioară, astfel unele dintre primele elemente din sumă lipsesc.

Autocorelația parțială se poate calcula precum cea obișnuită, daca primele $M + 1 - max(k,l)$ elemente ale vectorului sunt transformate în 0.

Fie exemplul următor pentru a calcula $r_{xx}[k=1, l=2]$, cu $M=2$:


```octave
M = 2;
x = [1,2,3,4];
k=1;
l=2;

x(1 : M+1-max(k,l)) = 0; % Setăm primele valori la 0
x                        % Afiseaza x modificat
rxx = xcorr(x)           % Calculeaza autocorelatia partiala
```

### **Exercițiu**: funcție pentru calcularea autocorelației parțiale

Creați o funcție `r = xcorr_prony(x, k, l, M)` pentru a calcula o valoarea de autocorelația parțială pentru metoda Prony.
Funcția trebuie să returneze o singură valoare, $r_{xx}[k-l]$ (**notă:** nu uitați că $r_{xx}[0] = $ `rxx(L)` în Matlab).

Testați funcția, verificând valorile urmatoare pentru `x = [1,2,3,2,1,2,3]` și `M=2`:
  - $r_{xx}[1,1] = 27$
  - $r_{xx}[1,2] = 22$
  - $r_{xx}[2,1] = 22$
  - $r_{xx}[2,2] = 31$
  - $r_{xx}[1,0] = r_{xx}[1] = 16$
  - $r_{xx}[2,0] = r_{xx}[2] = 14$


Pentru acest fișier *live*, funcția poate fi definită și rulată în celula de mai jos. Dacă scrieți un script Matlab/Octave offline, salvați această funcție ca un fișier `xcorr_prony.m`


```octave
function r = xcorr_prony(x, k, l, M)
% Computes restricted autocorrelation for the Prony method
% Inputs:
%  x = the input vector
%  k,l = the element to compute
%  M = the degree of the numerator polynomial B(z)
% Returns:
%  r = rxx[k-l]


end

% Call it here to find the values, like this:
% xcorr_prony( ... , ... , ... , ...)
```

## Metoda Prony: sistemele de ecuații

În metoda Prony se calculează prima dată coeficienții $\{a_k\}$ dintr-un sistem de ecuații ce utilizează valorile autocorelației parțiale:

$$
\begin{bmatrix}
r_{dd}[1,1] & r_{dd}[1,2] & \dots & r_{dd}[1,N] \\
r_{dd}[2,1] & r_{dd}[2,2] & \dots & r_{dd}[2,N] \\
\vdots & \dots & \dots & \vdots \\ 
r_{dd}[N,1] & r_{dd}[N,2] & \dots & r_{dd}[N,N] \\
\end{bmatrix}
\begin{bmatrix} 
a_1 \\ 
a_2 \\ 
\vdots \\ 
a_N \\ 
\end{bmatrix}
= 
\begin{bmatrix} 
- r_{dd}[1,0] \\ 
- r_{dd}[2,0] \\ 
\vdots \\ 
- r_{dd}[N,0] \\ 
\end{bmatrix}$$


### **Exercițiu**: rezolvați sistemul pentru $M=2$ și găsiți valorile $\{a_k\}$

Rezolvați sistemul pentru un răspuns la impuls dorit egal cu $h_d[n] = \{1,2,3,2,1,2,3\}$, cu $M=2$ și $N=2$. Utilizați funcția `linsolve()`.


```octave
A = ...   % 2x2 matrix
B = ...   % 2x1 column vector

a = linsolve(A,B)   % solve
```

Coeficienții numărătorului se obțin din aceleași ecuații ca la metoda Pade, înlocuind valorile $\{a_k\}$ găsite mai sus.
Ecuațiile se pot scrie astfel:
$$b_n = h_d[n] + \sum_{k=1}^N a_k h_d[n-k]$$

Expresiile pot fi calculate în Matlab ca mai jos:


```octave
% Date de intrare
hd = [1,2,3,2,1,2,3];
a  = [0.4, 0.5];   % valorile de la a1 incolo
M = 2;             % gradul numaratorului
N = 2;             % gradul numitorului

% Calcularea coeficientului b2
n = 2;    % indica ce element se calculeaza
bn = hd(n+1) + sum(a(1:n) .* hd(n:-1:1))
```

### **Exercițiu**: Calculați toți coeficienții {$b_n$}

Copiați exercițiul de mai sus și extindeți-l pentru a găsi toți coeficienții $b_n$, salvându-i într-un vector `b`. Utilizați o instrucțiune `for` pentru a calcula toți coeficienții folosind aceeași expresie.


```octave
% Date de intrare
hd = [1,2,3,2,1,2,3];
a  = [0.4, 0.5];   % valorile de la a1 incolo
M = 2;             % gradul numaratorului
N = 2;             % gradul numitorului

% TODO: scrieți aici

```

## Exercițiu / Exemplu la tablă

1. Folosiți metoda Prony pentru a afla parametrii sistemului cu următoarea funcție de sistem de ordinul 2:
   $$H(z) = \frac{b_0 + b_1 z^{-1} + b_2 z^{-2}}{1 + a_1 z^{-1} + a_2 z^{-2}}$$

   considerând următorul răspuns la impuls dorit:,
   $$h_d[n] = \left(\frac{1}{3}\right)^n \cos\left(n \pi\right) u[n] + u[n-3]$$

## Exerciții finale


1. Implementați în Matlab o funcție de rezolvare a sistemului de ecuații pentru metoda Prony:

    ```[b,a] = metoda_prony(ordin, hd)```

   Funcția va primi ca argumente:
   
    - `ordin`: ordinul filtrului dorit
    
    - `hd`: un vector cu răspunsul la impuls dorit

   Funcția va returna coeficienții funcției de sistem a filtrului proiectat:
   
    - `b`: coeficienții de la numărător
    
    - `a`: coeficienții de la numitor

2. Utilizați funcția de mai sus pentru a proiecta un filtru de ordinul doi cu metoda Prony, 
pentru a aproxima răspunsul la impuls dorit de mai jos:
$$h_d[n] = \left(\frac{1}{3}\right)^n \cdot \cos(\frac{\pi}{4}n)\cdot u[n]$$

    Puteți utiliza codul de la laboratorul precedent pentru a genera valorile semnalului $h_d[n]$.


3. Folosiți metoda Prony pentru a găsi parametrii filtrului de ordin 2 
care aproximează următorul filtru de ordin superior (3):
$$H(z) = \frac{0.0736 + 0.0762 z^{-1} + 0.0762 z^{-1} + 0.0736 z^{-3}}
{1 - 1.3969 z^{-1} + 0.8778 z^{-1} - 0.1812 z^{-3}}$$

    - a. Folosiți funcția `impz()` pentru a genera un răspuns la impuls al filtrului dat (minim 100 de eșantioane);
    
      **Notă**: funcția `impz()` se folosește pentru a calcula răspunsul la impuls al unui sistem, în felul următor:
      ```h = impz(b,a,N); ```
      unde `b` și `a` sunt coeficienții funcției de sistem, iar `N` este număul de eșantioane
        
    - b. Utilizați funcția `metoda_prony()` pentru a proiecta filtrul;
    
    - c. Reprezentați grafic răspunsul la impuls al filtrului inițial și al celui proiectat, pentru primele 50 de eșantioane.
        Există eșantioane identice între cele două?

3. Să se încarce un semnal audio în Matlab și să se filtreze cu filtrul proiectat mai sus.
Redați semnalul filtrat la ieșirea audio a sistemului.
