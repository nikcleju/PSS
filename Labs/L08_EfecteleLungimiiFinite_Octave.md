---
title: Efectele reprezentării în lungime finită a coeficienților
 în filtrarea digitală
subtitle: Laborator 8, PSS
documentclass: scrartcl
fontsize: 12pt
---

# Obiectiv

Studiul efectelor produse de implementarea în virgulă fixă a coeficienților
unui filtru digital.

# Noțiuni teoretice


# Exerciții

1. Să se scrie în formatul virgulă fixă cu 1 bit de semn, 6 biți pentru partea întreagă
și 6 biți pentru partea fracționară (1S6Î6F) numerele:
    a. 273
    b. 273.21875

1. Să se scrie în formatul virgulă fixă cu 1 bit de semn, 6 biți pentru partea întreagă
și 6 biți pentru partea fracționară (1S6Î6F) numerele negative următoare. 
Reprezentarea numerelor negative se va face în formatele mărime cu semn,
complement față de 1 (C1) și complement față de 2 (C2).
    a. -273
    b. -273.21875
    
1. Cuantizați eșantioanele $x_1 = 0.42625$ și $x_2 = -0.4333$ 
în formatul virgulă fixă 1S0Î4F prin:
    a. Trunchiere
    b. Rotunjire
    c. Trunchiere semn-valoare
    
    Valorile negative se reprezintă în formatul C2.
    
1. În Octave, utilizați funcția `cheby1()` pentru a proiecta un filtru Cebâșev tip 1 cu următoarele specificații:

    a. Un filtru trece-jos IIR de ordin 7, cu frecvența de tăiere de 1kHz la o frecvență de eșantionare de 8kHz;
    a. Un filtru trece-sus IIR de ordin 7, cu frecvența de tăiere de 2.5kHz la o frecvență de eșantionare de 8kHz;
    a. Un filtru trece-bandă IIR de ordin 7, cu banda de trecere între 0.5kHz și 3.5kHz la o frecvență de eșantionare de 8kHz;
    a. Un filtru oprește-bandă IIR de ordin 7, cu banda de oprire între 1kHz și 3kHz la o frecvență de eșantionare de 8kHz.
    
2. Utilizați funcția `cuant()` atașată laboratorului pentru a cuantiza coeficienții filtrului,
și afișați funcția de transfer cu `freqz()` în trei scenarii diferite:
    - coeficienți ne-cuantizați
    - coeficienți cuantizați cu 15 biți parte fracționară
    - coeficienți cuantizați cu 6 biți parte fracționară
  
    Folosiți cuantizarea prin rotunjire
  
    Afișați funcțiile de transfer în cele trei cazuri pe aceeași figură, pentru a le compara mai ușor.
  
3. Afișați diagrama poli-zerouri în fiecare caz de mai sus, folosind funcția `zplane()`
  
3. Evaluați efectul cuantizării considerând o **implementare în forma paralel** a filtrului:
    - Calculați coeficienții pentru implementarea paralel folosind funcția `rpfd()` furnizată în fișierele de laborator;
    - Folosiți funcția `qfr ()` pentru a calcula răspunsul în frecvență cu coeficienți cuantificați, în forma de implementare paralel;
      Deschideți fișierul `qfr.m` pentru a vedea care sunt argumentele de intrare și ieșire;
    - Afișați funcțiile de transfer în trei cazuri:
        - coeficienți necuantificați (precizie maximă)
        - coeficienți cuantificați cu 15 biți fracționari
        - coeficienți cuantizați cu 6 biți fracționari.
        
    -  Afișați diagrama poli-zerouri în fiecare caz, folosind funcția `zplane()`
      
    **Notă:** Funcția `rpfd ()` se apelează `[c, nsec, dsec] = rpfd (b, a)` și furnizează coeficienții implementării paralel după cum urmează:
      - `c` = coeficienții polinomului liber (câtul împărțirii polinoamelor)
      - `nsec` = coeficienții de la numărător ai tuturor secțiunilor, pe fiecare linie
      - `dsec` = coeficienții de la numitor ai tuturor secțiunilor, pe fiecare linie

4. Similar cu exercițiul de mai sus, evaluați efectul cuantizării considerând implementare **în formă serie** a filtrului, care se obține cu funcția `tf2sos()`.

5. Care este implementarea care este cea mai robustă pentru cuantificare?      

# Întrebări finale

1. TBD