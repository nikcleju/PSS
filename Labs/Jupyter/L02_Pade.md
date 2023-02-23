# PSS Lab 02: Proiectarea filtrelor IIR prin metoda Pade

## Utilizare

Acest fișier se poate rule *live* in browser. Acest fișier este de tip Jupyter Notebook și utilizează un kernel Octave.

Utilizare:
  - `Shift+Enter` într-o celulă = Execută și avansează la celula următoare
  - `Ctrl+Enter` într-o celulă = Execută și rămâi la celula curentă

## Considerații teoretice

Metoda Pade este o metodă de proiectare a unui filtru IIR astfel încât răspunsul la impuls $h[n]$ să îndeplinească anumite cerințe.
Proiectarea unui filtru înseamnă găsirea valorilor coeficienților de la numărătorul și numitorul unei funcții de sistem, $b_0, b_1, ...b_M$ și $a_1, a_2, ....a_N$,
astfel încât filtrul să rezulte cu funcția de transfer dorită.

$$H(z) = \frac{b_0 + b_1z^{-1} + b_2z^{-2} + ... + b_Mz^{-M}}{1 + a_1z^{-1} + a_2z^{-2} + ... + b_Nz^{-N}}$$

### Metoda Pade

În metoda Pade, dorim să proiectăm un filtru $H(z)$ astfel încât răspunsul la impuls $h[n]$ 
să fie similar cu un răspuns la impuls dorit $h_d[n]$.
Răspunsul la impuls dorit $h_d[n]$ poate fi, de exemplu, răspunsul la impuls al unui filtru ideal trece-jos, trece-bandă sau trece-sus.

Ideea metodei Pade este următoarea: se găsesc $b_0, b_1, ...b_M$ și $a_1, a_2, ....a_N$ 
astfel încât **primele eșantioane** ale $h[n]$ să fie **identice** cu cele ale $h_d[n]$.
De ce? Deoarece în multe cazuri primele eșantioane sunt cele mai importante, și dacă reușim să le facem egale cu cele ale filtului dorit, putem presupune că următoarele nu vor conta atât de mult și, prin urmare, filtrul nostru va fi aproximativ similar cu cel dorit.

### Algorithm matematic

Se pornește de la ecuația cu diferențe a sistemului:
$$y[n]  = -a_1 y[n-1] - ... a_Ny[n-N] + b_0 x[n] + b_1 x[n-1] + ... b_M x[n-m]$$

Dacă intrarea este $\delta[n]$ , ieșirea va fi $h[n]$, și prin urmare:
$$h[n]  = -a_1 h[n-1] - ... a_Nh[n-N] + b_0 \delta[n] + b_1 \delta[n-1] + ... b_M \delta[n-m]$$

Egalăm primele $M+N+1$ eșantioane cu cele ale $h_d[n]$. Numărul de eșantioane este același cu numărul total de coeficienți care trebuie obținuți. Se presupun condițiile inițiale $h[-1] = h[-2] = ... = 0$ (dacă nu se specifică altfel).

Se obține următorul sistem: 

$$\begin{aligned}
h[0] &= b_0 = h_d[0] \\
h[1] &= -a_1h_d[0] + b_1 = h_d[1] \\
&\dots \\
h[M] &= -a_1h_d[M-1] - ... - a_Mh_d[0] + b_M = h_d[M] \\
h[M+1] &= -a_1h_d[M] - ... - a_Mh_d[M+1-N] \\
&\dots \\
h[M+N] &= -a_1h_d[M+N-1] - ... - a_Mh_d[N] \\
\end{aligned}$$

Rezultă un sistem cu $M+N+1$ ecuații, suficient pentru a găsi un număr total $M+N+1$ de necunoscute ($a_i$ și $b_i$).

Se rezolvă sistemul. La rezolvarea manuală, putem folosi următoarea observație:

- Ultimele $N$ ecuații nu depind de $b_i$, doar de $a_i$. Acestea se rezolvă ca un sistem separat, mai mic, din care se obțin valorile $a_i$.
- Apoi trecem la primele $M+1$ ecuații. Se înlocuiesc $a_i$ cu valorile găsite mai sus și se obțin $b_i$. Fiecare ecuație furnizează o valoare pentru un $b_i$.

### Exercițiu / Exemplu la tablă

1. Folosiți metoda Pade pentru a afla parametrii sistemului cu următoarea funcție de sistem de ordinul 2:
   $$H(z) = \frac{b_0 + b_1 z^{-1} + b_2 z^{-2}}{1 + a_1 z^{-1} + a_2 z^{-2}}$$

   considerând următorul răspuns la impuls dorit:,
   $$h_d[n] = \left(\frac{1}{3}\right)^n \cos\left(n \pi\right) u[n] + u[n-3]$$


## Exercițiu Matlab

1. Implementați în Matlab o funcție pentru crearea și apoi rezolvarea sistemului de ecuații rezultat din metoda Pade.

    ```[b,a] = pademethod(order, hd)```

   Funcția va avea următoarele argumente:
   - `order`: ordinul filtrului proiectat
   - `hd`: un vector cu eșantioanele răspunsului la impuls dorit
  
   Funcția va returna coeficienții funcției de sistem pentru filtrul rezultat:
   - `b`: vector cu coeficienții numărătorului
   - `a`: vector cu coeficienții numitorului

2. Utilizați funcția de mai sus pentru a proiecta un filtru de ordinul doi cu metoda Pade, pentru aproximarea răspunsului la impuls dorit, prezentat mai jos:
$$h_d[n] = \left(\frac{1}{3}\right)^n \cdot \cos(\frac{\pi}{4}n)\cdot u[n]$$

2. Reprezentați primele 20 eșantioane ale răspunsului la impuls al filtrului proiectat (utilizați impz()) și ale răspunsului la impuls dorit, pe aceeași figură. Unde sunt identice?
   
3. Încărcați un fișier audio în Matlab și filtrați-l cu filtrul de mai sus.
Redați semnalul filtrat. Cum sună? Comparați-l cu semnalul original.

## Întrebări finale
1. TBD
