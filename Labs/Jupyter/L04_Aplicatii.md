# PSS Lab 04: Aplicații

## Utilizare

Acest fișier se poate rule *live* in browser. Acest fișier este de tip Jupyter Notebook și utilizează un kernel Octave.

Utilizare:
  - `Shift+Enter` într-o celulă = Execută și avansează la celula următoare
  - `Ctrl+Enter` într-o celulă = Execută și rămâi la celula curentă

Rulați celula următoare pentru a preveni expirarea paginii online pe Binder:


```matlab
%run -l python keepalive.py
```


```matlab
pkg load signal  % Pentru Octave, trebuie rulată o data această linie la începutul programului, pentru a încărca unele funcții necesare
graphics_toolkit ("gnuplot");
disp("Initialized")
```

## Aplicații ale metodelor din familia Pade / Prony / Shanks 

Contextul tuturor acestor metode este următorul:

Avem un sistem cu răspuns la impuls cunoscut $h[n]$, posibil foarte lung (IIR-like). Ne interesează să cunoaștem parametrii $a_k$ și $b_k$ ai sistemului care l-a generat, care sunt în număr mult mai mic.

Posibile scopuri:
- Implementare eficientă: mult mai puține calcule
- Clasificarea semnalului: număr mic și fix de parametri, care caracterizează întreg semnalul
- Egalizare de canal: anularea efectului nedorit cauzat de $h[n]$

### Funcțiile folosite

1. Metoda Pade implementată la laborator
2. Metoda Prony implementată la laborator
3. Metoda Shanks, implementată in Matlab cu numele `prony()`  (nu e disponibilă în varianta *live*, care folosește Octave)

Rulați celulele de mai jos pentru a defini funcțiile.


```matlab
function [b,a] = metodapade(ordin, hd)

    B = hd(1 : 2*ordin+1)';

    Adreapta = [ eye(ordin+1) ; zeros(ordin,ordin+1) ];

    for i=1:ordin
        % coloana numarul i
        A(:,i) = [ zeros(i,1) ; -hd(1 : 2*ordin+1 - i)'];
    end    
    A = [A Adreapta];

    X = linsolve(A,B);
    a = X(1:ordin);
    b = X(ordin+1 : 2*ordin+1);

end  # end function
```


```matlab
function r = xcorr_prony(x, k, l, M)
    % Computes restricted autocorrelation for the Prony method
    % Inputs:
    %  x = the input vector
    %  k,l = the element to compute
    %  M = the degree of the numerator polynomial B(z)
    % Returns:
    %  r = rxx[k,l] = rxx[k-l]

    x(1 : M+1-max(k,l)) = 0; % Setăm primele valori la 0
    rxx = xcorr(x);          % Calculeaza autocorelatia partiala

    % Returneaza doar o singura valoare, rxx[k-l]
    L = length(x);
    r = rxx(L + k-l);
end

function [b,a] = metodaprony(ordin, hd)
    % Nicolae Cleju

    % Se creeaza A
    for i=1:ordin
        for j=1:ordin
            A(i,j) = xcorr_prony(hd, i, j, ordin);
        end
    end
    % Se creeaza B
    for i=1:ordin
        B(i,1) = -xcorr_prony(hd, i, 0, ordin);
    end
    % Se rezolva sistemul AX=B
    a = linsolve(A,B);

    % Calculeaza b
    for n=0:ordin
        % Primele ecuatii de la metode Pade
        b(1+n) = hd(n+1) + sum(a(1:n)' .* hd(n:-1:1));
    end
    b=b';
end
```

## Egalizare de canal

Se transmite un semnal $x[n]$ pe un canal care alterează semnalul prin funcția de transfer $H(z)$.

Nu cunoaștem $H(z)$, dar putem măsura răspunsul la impuls: trimitem un impuls $\delta[n]$, măsurăm ieșirea $h[n]$.

Vrem să anulăm efectul lui $H(z)$ astfel:
- estimăm $H(z)$ prin metodele cunoscute
- aplicăm asupra oricărei ieșitri **filtrul invers** $\frac{1}{H(z)}$

### Aplicație

Avem un canal care introduce distorsiuni, prin următoarele funcții (diferite variante):



```matlab
function y = distort(x)
    % Distort a signal x
    b = [0.6, 0.5, 0.2, 0.1, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.1];
    a = [1,-0.5];
    y = filter(b, a, x);
end

function y = distortN(x)
    % Distort a signal x, add noise
    y = distort(x);
    noise = randn(size(y));
    y = y + noise * norm(y) / norm(noise) / 60;
end

function y = distort2(x)
    % Distort a signal x
    b = [0.2, 0.5, 0.2, 0.6, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.1];
    a = [1,-0.5];
    y = filter(b, a, x);
end

function y = distort2N(x)
    % Distort a signal x, add noise
    y = distort2(x);
    noise = randn(size(y));
    y = y + noise * norm(y) / norm(noise) / 60;
end
```

De exemplu, pentru semnalul `x` de mai jos, ieșirea distorsionată cu `distort()` este următoarea:


```matlab
x = [zeros(1, 10) 2*ones(1,20) zeros(1,10) linspace(1, 2.5, 40) 2.5*ones(1,10) zeros(1, 15)];
plot(x)
```


```matlab
y = distort(x);
plot(y)
```

Calcluați și afișați semnalul distorsionat cu celelalte funcții. Care e diferența?


```matlab
% TODO: write here for distortN()
yN = ...
plot(yN)
```


```matlab
% TODO: write here for distort2()
y2 = ...
plot(y2)
```


```matlab
% TODO: write here for distort2N()
y2N = ...
plot(y2N)
```

#### Cerințe

Estimați **filtrul invers** al distorsiunilor pentru a anula efectele acestuia, pe cât posibil.

Pași:
1. Calculați răspunsul la impuls $h_{canal}[n]$ al distorsiunii
2. Estimați parametrii sistemului $H(z)$ cu funcțiile Pade/Prony/etc
   - calculați răspunsul la impuls $h[n]$ cu `impz()`
   - afișați pe aceeasi figură $h_{canal}[n]$ și $h[n$
   <!-- - calculați eroarea $E = \sum_n (h_{canal}[n] - h[n])^2$ -->
   - comparați coeficienții $b$ și $a$ obținuți cu cei din funcțiile `distort()`
3. Afișați polii și zerourile filtrului estimat, folosind funcția `zplane()`
3. Aplicați semnalului `y` filtrul invers $\frac{1}{H(z)}$, folosind funcția `filter()`
4. Comparați semnalul obținut `xrec` cu originalul `x`
   - afișați-le pe aceeasi figură
   <!-- - calculați eroarea dintre ele -->



```matlab
% Compute and show the impulse response of the distortion
hcanal = distort( ... );
plot(hcanal)
```


```matlab
% Estimate the parameters b_k and a_k with one of the functions
[b,a] = ...

% Add a_0 in front (a_0 = 1)
a = [1; a]

```


```matlab
% Compute impulse response of the filter we obtained, and plot it
hest = ...
plot(hest)
```


```matlab

% Plot hcanal and hest on the same figure
plot( ... )
```


```matlab
% Plot the pole-zero plot of the designed filter, using zplane()
...
```


```matlab
% Apply inverse filter to the distorted signal y
xrec = ...

% Plot original signal x and the recovered xrec
plot([x', xrec'])
```

## Filtrul FIR invers

Filtrul invers $\frac{1}{H(z)}$ este **instabil** dacă $H(z)$ are zerouri în afara cercului unitate.

Una din soluțiie este de a găsi un filtru FIR care aproximează filtrul invers, care fiind FIR este întotdeauna stabil.

### Proiectarea filtrului FIR invers prin metoda celor mai mici pătrate

Dat fiind un filtru $H(z)$ cu răspunsul la impuls $h[n]$, 
**filtrul FIR invers** $H_I(z) = b_0 + ... + b_Nz^{N}$ se obține rezolvând sistemul următor (similar cu cel de la metoda Prony):

$$
\begin{bmatrix} 
h[0] \\ 
0 \\ 
\vdots \\ 
0 \\ 
\end{bmatrix}
=
\begin{bmatrix}
r_{hh}[0] & r_{hh}[-1] & \dots & r_{hh}[-N)] \\
r_{hh}[1] & r_{hh}[0] & \dots & r_{hh}[-N+1)] \\
\vdots & \dots & \dots & \vdots \\ 
r_{hh}[N] & r_{hh}[N-1] & \dots & r_{hh}[0] \\
\end{bmatrix}
\begin{bmatrix} 
b_0 \\ 
b_1 \\ 
\vdots \\ 
b_N \\ 
\end{bmatrix}
$$

### Implementare

Scrieți o funcție care obține filtrul FIR invers:


```matlab
function [b] = FIRinvers(ord, h)

    % TODO: write code here

end
```

### Aplicație

Aplicăm această metodă distorsiunilor de tip `distort2()` care nu pot fi anulate cu metodele precedente.

Calculăm filtrul invers și îl aplicăm semnalului distorsionat.


```matlab
h = distort2([1 zeros(1,30)]);

b = FIRinvers( ... );

xrec = filter( ... );

plot([x', xrec'])

```

## Implementare eficientă / identificare de sistem

Descărcați și dezarhivați ecourile (reverb-urile) disponibile pe pagina [https://www.voxengo.com/impulses/](https://www.voxengo.com/impulses/)

Încărcați unul dintre cele mai scurte (de ex. `Direct Cabinet N2.wav`) și aplicați-l asupra unei melodii.


```matlab
% Load impulse response, keep a single column, plot it
[h, Fs2] = ...
h = h(:, 1);
plot(h)

% Load signal, keep a single column
...

% Apply reverb = convolution between `x` and `h`
y = ...
```

Să afișăm primele 200 eșantioane din `h`:


```matlab
plot(h(1:200))
```

### Problema

Dacă lungimea lui $h$ este L, câte calcule se fac la aplicarea convoluției?

- L înmulțiri pentru fiecare eșantion al iesirii $y$
- sunt $F_s$ eșantioane pe secundă în $y$
- total = 

Dacă am reuși să exprimăm $h$ ca un răspuns la impuls al unui sistem IIR de gradul `ord`, 
am putea implementa sistemul cu ecuația sistemului, care utilizează doar `2*ord +1` multiplicări.

### Soluție

Utilizăm metodele tip Prony pentru a găsi un sistem al cărui $h[n]$ aproximează $h_d$-ul dorit.

Aproximați semnalul $h$ prin metoda Pade / Prony, încercând diverse valori ale lui `ord`.

- rulați funcția și obțineți coeficienții `b` și `a`
- având $b_k$ și $a_k$, calculați răspunsul la impuls obținut $h[n]$ pentru primele 44100 eșantioane cu `impz()`
- afișați semnalele $h[n]$ (cel proiectat) și $h_d[n]$ (cel țintă) pe aceeași figură, pentru comparație
- calculați eroarea dintre cele două semnale cu formula:
  $$E = \sum_n (h[n] - h_d[n])^2$$


```matlab
% TODO: write here
```

O problemă importantă este că primele eșantioanele ale lui $h$ sunt foarte mici și irelevante, iar metodele Pade & Prony 
aleg o parte din coeficienți pe baza acestora. 

Se poate încerca eliminarea primelor eșantioane din semnalul $h$.



## Exercițiu / Exemplu la tablă

1. Folosiți metoda celor mai mici pătrate pentru a găsi filtrul FIR invers de ordinul 2 al filtrului:
   $$H(z) = 0.2 + 0.8 z^{-1} + 0.2 z^{-2}$$
