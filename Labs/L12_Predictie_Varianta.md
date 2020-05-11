---
title: Predicție liniară
subtitle: Laborator 12, PSS
documentclass: scrartcl
fontsize: 12pt
---

# Obiectiv

Studiul predicției liniare a semnalelor.

# Noțiuni teoretice


# Exerciții

1. Se consideră sistemul descris de ecuația cu diferențe
	$$y[n] = 0.8 y[n-1] + x[n] + x[n-1],$$
	unde $x[n]$ este un proces aleator staționar cu medie $0$ și 
	autocorelație $\gamma_{xx}[m] = \left( \frac{1}{2} \right)^{|m|}$
	
	a. Determinați densitatea spectrală de putere a ieșirii $y[n]$;
	b. Determinați funcția de autocorelație a ieșirii, $\gamma_{yy}[m]$;
	c. Determinați varianța $\sigma_{y}^2$ a ieșirii.

2. În Matlab, încărcați semnalul audio `badsignal.wav`, afișați-l grafic și redați-l
audio. Cum vi se pare calitatea audio? Ce anume o cauzează?

3. Detectați și înlocuiți eșantioanele eronate folosind predicția liniară.

	a. Utilizați funcția `buffer()` pentru a împărți semnalul în ferestre 
	cu lungimea de aproximativ 25ms.
	b. Modelați semnalul ca un proces aleator AR(10), și găsiți
	coeficienții liniari de predicție utilizând	funcția `lpc()`
	(citiți documentația funcției pentru a vedea un exemplu de utilizare). 
	c. Calculați predicția liniară a semnalului, cu coeficienții obținuți mai sus
	d. Pentru prima fereastră a semnalului, afișați semnalul original, cel prezis, 
	precum și eroarea absolută.
	e. Se decide că un eșantion este eronat dacă diferă foarte mult de
	valoarea prezisă de modelul AR(10), $|x(i) - x_{prezis}(i)| > T$. 
	Se alege un prag $T$ astfel încât numărul eșantioanelor detectate ca
	eronate nu depășească $1\%$ din numărul total (de ex. T = 0.1)
	Înlocuiți toate eșantioanele $x(i)$ detectate ca eronate
	(pentru care $|x(i) - x_{prezis}(i)| > T$)
	cu valoarea conform modelului AR(10), $x_{prezis}(i)$. 
	e. Reconstruiți semnalul audio întreg, afișați-l și redați-l.
	Cum vi se pare calitatea audio acum?

4. Folosind modelul AR10 pentru ultima fereastră a semnalului, generați
pe baza acestuia încă 100ms de semnal (calculați câte eșantioane reprezintă
100ms). Concatenați aceste eșantioane la finalul semnalului original,
afișați și redați rezultatul. 


# Întrebări finale

1. TBD
