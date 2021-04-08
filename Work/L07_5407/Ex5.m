% Calculam si afisam raspunsul la impuls al sistemului
x = [ 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ];
y = filter_spst(b, a, x, [0;0;0;0] );
stem(y);
