clear all
close all

% Exercitiul 6, Lab 12
[x, Fs] = audioread('music.wav');
x = x(:,1);

plot(x)
%sound(x, Fs);  % Redare sunet
[pxx, f] = periodogram(x, [], [], Fs);
figure
plot(f, pxx)

% Segmentarea semnalului
n = 0.030 * Fs;  % numar de esantioane
y = buffer(x,n);

for i=1:size(y,2)  % pentru fiecare coloana
    [pxx, f] = periodogram( y(:,i) , [], [], Fs);
    plot(f(1:150), pxx(1:150))
    ylim( [0, 0.0001] )
    pause(0.030)    % pauza pentru 0.030 secunde inainte de urmatoarea afisare
end
    
    