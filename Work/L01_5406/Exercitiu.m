%[x, Fs] = audioread('Blue.mp3');
[x, Fs] = audioread('Sample.wav');

% Incarca doar de la esantionul 1 la esantionul nr. 220500
% [x, Fs] = audioread('Blue.mp3', [1, 220500]);

% Pastram doar primele 220500 esantioane
x = x(1:(5*Fs), 1);

% Play!
% sound(x, Fs)

plot( x(1:200) );

% Filtram semnalul
y = filter( [1,-1, 1,-1] , 4 , x);

% Play dar cu alta functie
obj = audioplayer(y, Fs);
play(obj);

