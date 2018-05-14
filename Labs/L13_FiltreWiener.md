---
title: Filtre Wiener
subtitle: Laborator 13, PSS
documentclass: scrartcl
fontsize: 12pt
---

# Obiectiv

Studiul filtrelor Wiener și aplicații ale acestora în filtrarea de zgomot.

# Noțiuni teoretice


# Exerciții

1. Fie semnalul $x[n] = s[n] + w[n]$, unde $s[n]$ este un proces aleator autoregresiv AR(1),
cu ecuație cu diferențe:
    $$s[n] = 0.6 \cdot s[n-1] + v[n].$$

	Semnalele $w[n]$ și $v[n]$ sunt zgomote albe, necorelate, cu varianța
$\sigma^2_w = 1$ și $\sigma^2_v = 0.64$.

	a. Determinați funcția de autocorelație a semnalelor $s$ și $x$, $\gamma_{ss}[m]$ și $\gamma_{xx}[m]$;
	b. Găsiți filtrul Wiener FIR de lungime $M=2$ pentru estimarea lui $s[n]$ din $x[n]$;
	c. Determinați eroarea pătratică medie pentru $M=2$.


1. Fie semnalul de mai jos:

	$$s[n] = \sin(2 \pi f_1 n) + \sin(2 \pi f_2 n),$$
	
	unde $f_1 = 0.013$, $f_2 = 0.051$ și $n=0:999$.

	Peste semnalul $s[n]$ se suprapune o secvență de tip zgomot alb cu varianța $\sigma_w^2 = 0.25$,
	obținându-se semnalul $x[n] = s[n] + w[n]$.

	a. Cu ajutorul funcției `wienerfir()`, determinați coeficienții filtrului Wiener FIR
    cu M=20 și filtrați secvența $x[n]$ cu acest filtru. 
    b. Reprezentați pe aceeași figură cele trei semnale $s[n]$, $x[n]$ și semnalul rezultat în urma filtrării lui $x[n]$.
    c. Calculați eroarea medie pătratică EPMM rezultată.
    d. Repetați punctele precedente pentru diverse valori ale ordinului filtrului FIR M=40, 100. Ce observați?

# Întrebări finale

1. TBD
