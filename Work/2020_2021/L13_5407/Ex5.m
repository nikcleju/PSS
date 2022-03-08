% Exercitiul 5, L12
clear all
close all

%[x, Fs] = audioread('1st_String_E.ogg');
[x, Fs] = audioread('4th_String_D.ogg');

plot(x);
sound(x, Fs);

[pxx, f] = periodogram(x, [], [], Fs);
figure
plot(f, pxx)
