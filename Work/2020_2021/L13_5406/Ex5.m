clear all
close all

% Exercitiul 5, Lab 12 Analiza Spectrala .pdf
%[x, Fs] = audioread('1st_String_E.ogg');
%[x, Fs] = audioread('3rd_String_G.ogg');
[x, Fs] = audioread('5th_String_A.ogg');
plot(x)
sound(x, Fs);  % Redare sunet

[pxx, f] = periodogram(x, [], [], Fs);
figure
plot(f, pxx)