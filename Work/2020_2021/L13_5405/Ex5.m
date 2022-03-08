clear all
close all

% Ex 5, Lab 12
%[x, Fs] = audioread('1st_String_E.ogg');
%[x, Fs] = audioread('3rd_String_G.ogg');
[x, Fs] = audioread('6th_String_E.ogg');

plot(x);
sound(x, Fs);

[pxx, f] = periodogram(x, [], [], Fs);   % Densitatea spectrala de putere
figure
plot(f, pxx)