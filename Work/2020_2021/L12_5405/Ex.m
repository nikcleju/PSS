clear all
close all

% Exercitiul 3
f1 = 1000/44100;
f2 = 1800/44100;
A  = 2.0;
n  = 0:2999;
x = cos(2*pi*f1*n) + 0.5*cos(2*pi*f2*n) + A*randn(1,3000);
plot(x)

% Exercitiul 4
% Metoda 1: cu fft()
S = fft(x);       % Transf Fourier
pxx = abs(S).^2;  %  in modul, si ridicata la patrat
figure;
plot(pxx)

% Nicolae Cleju

% Metoda 2: cu periodogram()
pxx = periodogram(x);
figure
plot(pxx)

% Metoda 3: Yule-Walker
pxx = pyulear(x, 85);
figure
plot(pxx)

 