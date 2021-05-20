close all 
clear all

% Exercitiul 3
N  = 5000;
f1 = 1000/44100;
f2 = 1800/44100;
A  = 2;
n  = 0:N-1;

x = cos(2*pi*f1*n) + 0.5*cos(2*pi*f2*n) + A*randn(1,N);
plot(x)

% Exercitiul 4
% Metoda 1: cu fft() (metoda periodogramei)
Y = fft(x);
Pxx = abs(Y).^2;
figure
plot(Pxx(1:N/2))

% Metoda 2: cu periodogram()
pxx = periodogram(x);
figure
plot(pxx)

% Nicolae Cleju

% Metoda 3: cu ecuatiile Yule-Walker
pxx = pyulear(x, 75);
figure
plot(pxx)


