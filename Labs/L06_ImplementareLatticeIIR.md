---
title: Introducere
subtitle: Laborator 1, SDP
documentclass: scrartcl
fontsize: 12pt
---

# Obiectiv

Recapitularea noțiunilor fundamentale de prelucrare digitală a semnalelor, precum și ale mediului Matlab.

# Noțiuni teoretice

Următoarele aspecte vor fi reamintite.

1. Bazele prelucrării digitale a semnalelor:
  - sistem, funcție de sistem
  - răspuns la impuls: ce este
  - sisteme FIR / IIR: ce sunt, prin ce diferă
  - ordinul unui filtru
  - funcție de transfer: numere complexe, modul și fază, interpretarea acestora
  - poli, zerouri: ce sunt, interpretare
  - tipuri de filtre: trece-jos, trece-sus, trece-bandă, oprește-bandă
  - filtre neideale: bandă de tranziție, riplu în banda trecere și de oprire
   
2. Matlab
  - vectori și matrici


# Exerciții

1. Încărcați un fișier audio cu funcția `audioread()`, păstrați doar primele 5 secunde din semnal.

2. Reprezentați grafic primele 200 de eșantioane din semnalul audio (un singur canal)

4. Filtrați semnalul cu filtrul $H(z) = \frac{1+z^{-1}+z^{-2}+z^{-3}}{4}$, utilizând funcția `filter()`.

5. Redați rezultatul folosind funcțiile `audioplayer` and `play()`.


# Întrebări finale

1. TBD
