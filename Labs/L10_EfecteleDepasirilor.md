---
title: Efectele depășirilor în filtrarea digitală
 în filtrarea digitală
subtitle: Laborator 10, PSS
documentclass: scrartcl
fontsize: 12pt
---

# Obiectiv

Studiul efectelor produse de depășirile de format în cadrul implementărilor 
în virgulă fixă ale unui filtru digital.

# Noțiuni teoretice


# Exerciții

1. Se consideră sistemul 
	$$H(z) = \frac{1-\frac{1}{2}z^{-1}}{\left(1 - \frac{1}{4}z^{-1}\right)\left(1 + \frac{1}{4}z^{-1}\right)}$$

    a. Să se deseneze realizarea în forma directă II și în una din formele serie
	b. Presupunând o implementare în formatul virgulă fixă pe $b$ biți.
	Fiecare produs se rotunjește pe $b$ biți. Determinați dispersia zgomotului
	de rotunjire datorat multiplicărilor la ieșirea fiecărei implementărilor
	de la punctul a.

2. Utilizați utilitarul `fdatool` pentru a proiecta un filtru trece-sus IIR 
de ordin 4, de tip Butterworth, cu frecvența de tăiere de 1.5kHz la 
o frecvență de eșantionare de 44.1kHz. Convertiți filtrul la forma directă II
și exportați-l în Simulink (bifați *Build model using basic elements*).

3. În modelul Simulink, realizați două copii ale filtrului (Copy/Paste). 
La ambele filtre se va pune ca intrare un semnal audio (de ex. *Kalimba.mp3* sau *mtlb*).
La al doilea filtru, semnalul de intrare se va converti la formatul virgulă
fixă 1S2Î9F. Calculați și afișați diferența dintre cele două ieșiri. 
Exportați semnalul diferență în Workspace-ul Matlab și calculați media și varianța sa.

4. Realizați o nouă copie a celui de-al doilea filtru, la care debifați la blocurile *Sum* opțiunea *Saturate on integer overflow*.
Care este efectul acesteia? Calculați și afișați diferența față de ieșirea primului filtru.
Care dintre filtrele 2 și 3 produce erori mai mici?

5. Utilizați funcția `normescal` pentru a calcula diferite norme de scalare pentru filtrul dat.
Scalați semnalul de intrare cu una dintre acestea, și rescalați ieșirea. Care este efectul?

# Întrebări finale

1. TBD
