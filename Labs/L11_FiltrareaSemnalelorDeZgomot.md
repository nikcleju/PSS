---
title: Filtrarea semnalelor de zgomot
subtitle: Lab 11, PSS
documentclass: scrartcl
fontsize: 12pt
---

# Obiectiv

Studiul efectelor unui filtru de ordin 1 aplicat asupra unor semnale de zgomot.

# Noțiuni teoretice


# Exerciții

1. În Matlab, generați următoarele semnale, pentru o valoare $\Delta = 0.001$. 
   Lungimea semnalelor este 10000.

   a. Un semnal de tip zgomot alb cu distribuție uniformă  $U \; [-\Delta/2, \Delta/2]$
   a. Un semnal de tip zgomot alb cu distribuție uniformă  $U \; [0, \Delta/2]$
   a. Un semnal de tip zgomot alb cu distribuție uniformă  $U \; [-\Delta, \Delta]$
  
   Cerințe:
   
     - Pentru fiecare semnal de mai sus, calculați media, varianța și puterea medie 
       (cu funcțiile `mean()`, `var()`). Care dintre aceste semnale are puterea cea mai mică?
  
     - Afișați cele trei semnale în trei subfiguri distincte, în aceeași fereastră.

2. În Matlab, filtrați fiecare semnal de mai sus cu filtrul următor:
	$$y[n] = a y[n-1] + x[n]$$
	
	Calculați media, varianța și valoarea medie pentru fiecare semnal de ieșire.
	
	Folosiți diferite valori pentru $a$: 0.1, 0.5, 0.9.

3. Implementați aceeași operație de filtrare în Simulink, după cum urmează:
   
   - Creați un model pentru sistem
   - Utilizați un bloc `From Workspace` pentru a prelua semnale din Workspace
   - Utilizați un bloc `To Workspace` pentru a trimite semnalul rezultat înapoi în Workspace
   
   Utilizați blocuri de tip `Dashboard Scope` pentru vizualizări ale semnalelor de intrare și ieșire.
	
3. Calculați răspunsul la impuls al acestui filtru (cu funcția `impz()`) și verificați numeric relația teoretică următoare:
	$$\sigma^2_o = \sigma^2_e \sum_n{h[n]^2} = \sigma^2_e \frac{1}{1 - a^2}$$
	
4. Calculați raportul $Q = \frac{\sigma^2_o}{\sigma^2_e}$ pentru 100 de valori ale lui $a$ între $a \in [0.01, 0.99]$,
   și reprezentați grafic valoarea lui $Q$ în funcție de $a$. Ce funcție matematică este reprezentată în figură?
	

# Întrebări finale

1. TBD

