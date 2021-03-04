[x , Fs] = audioread('Sample.wav');
% sound(x, Fs)

% Pastram 5 secunde din x, canalul 1
x = x(1:(5*Fs), 1);

% Grafic
plot( x(1:200) )

% Filtrare
y = filter( [1, -1 , 1 , -1] , 4 , x);

% Redam y
obj = audioplayer(y , Fs);
play(obj);

