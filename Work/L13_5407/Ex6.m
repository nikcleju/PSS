% Exercitiul 6, L12
clear all
close all
% Nicolae Cleju

[x, Fs] = audioread('music.wav');
x = x(:,1);

plot(x);
%sound(x, Fs);
%[pxx, f] = periodogram(x, [], [], Fs);
%figure
%plot(f, pxx)

n = 1 * Fs;     % nr esantioane din 300 milisecunde
y = buffer(x,n);

for i=1:size(y,2)
    [pxx, f] = periodogram( y(:,i) , [], [], Fs);
    plot( f(1:1200), pxx(1:1200) ) 
    ylim([0 1e-4])  % axa y intre 0 si 0.0001
    pause(1)    % pauza de 300 milisecunde
end
    