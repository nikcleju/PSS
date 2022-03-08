% Calculare si afisare raspuns la impuls
x = [1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
y = filter_spst(b, a, x, [0;0;0;0]);
stem(y)