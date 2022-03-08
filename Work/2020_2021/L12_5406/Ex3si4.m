clear all
close all

% Exercitiul 3
f1 = 1000/44100;
f2 = 1800/44100;
A  = 2.5;
N  = 10000;
n  = 0:N-1;

x = cos(2*pi*f1*n) + 0.5*cos(2*pi*f2*n) + A*randn(1,N);
plot(x)

% Exercitiul 4
% Metoda 1: cu fft()
S   = fft(x);    % S = transf Fourier a lui x
Pxx = abs(S).^2; % modulul transf. Fourier, ridicat la patrat
figure
plot(Pxx)

% Nicolae Cleju

% Metoda 2: cu periodogram()
pxx = periodogram(x);
figure
plot(pxx)

% Metoda 3: cu Yule-Walker
pxx = pyulear(x, 100);  % a 2-a valoare = ordinul modelului
figure
plot(pxx)

