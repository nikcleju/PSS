[x , Fs] = audioread('Sample.wav');
x = x(1:(5*Fs), 1);

% Play! Fara oprire
% sound(x, Fs)

% Reprezint grafic primele 200 esantioane din x
plot( x(1:200) )

% Filtrare
y = filter( [1, -1, 1, -1] , 4 , x);

% Play, dar cu alte functii
obj = audioplayer(y , Fs);
play(obj);

