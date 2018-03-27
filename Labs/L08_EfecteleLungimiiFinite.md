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
    
1. Să se realizeze următoarele operații în formatul virgulă fixă 1S0Î3F.
Valorile calculelor intermediare / finale se rotunjesc la fiecare pas.
    a. 0.3125 - 0.75 + 0.625
    
3. Utilizați utilitarul `fdatool` pentru a proiecta un filtru trece-jos IIR 
de ordin 4, de tip eliptic, cu frecvența de tăiere de 4kHz la 
o frecvență de eșantionare de 44.1kHz. Exportați coeficienții 
formei directe II în Workspace-ul Matlab sub numele `b` și `a`

4. În utilitarul `fdatool`, setați aritmetica filtrului la 
"fixed-point arithmetic" și modificați:
    a. Setați formatul virgulă fixă 1S1Î3F. 
    Cum se modifică funcția de transfer a circuitului? 
    b. Creșteți numărul de biți ai părții fracționare. 
    Cum se modifică funcția de transfer a circuitului? 
    Pentru ce număr de biți considerați că erorile devin neglijabile?
    c. Exportați coeficienții formei directe II 
    în Workspace-ul Matlab, sub numele `b1` și `a1`.

5. Repetați punctul precedent cu filtrul implementat în forma serie
("Second-Order-Sections"). În care caz erorile sunt mai mici? Exportați 
coeficienții în Workspace-ul Matlab sub numele `b2` și `a2`.

5. Încărcați semnalul audio `mtlb` din Matlab.
Utilizați funcția `filter()` pentru a filtra semnalul cu 
filtrul original (`b` și `a`) și cu cel în virgulă fixă în
forma directă II (`b1` și `a2`). Afisați semnalul diferență dintre
cele două ieșiri.


# Întrebări finale

1. TBD
