clear all
close all

% Ex 6, Lab 12
[x, Fs] = audioread('music.wav');
x = x(:, 1);  % Pastram prima coloana

plot(x);
%sound(x, Fs);

% Nicolae Cleju

n = 0.03 * Fs;     % 30 milisecunde = 0.03 secunde
y = buffer(x, n);

for i=1:size(y,2)
    [pxx, f] = periodogram( y(:,i) , [], [], Fs); % Densitatea spectrala de putere   
    plot( f(1:100), pxx(1:100) ) 
    ylim( [0  0.0001] )
    
    pause(0.03)    % pauza 30 de milisecunde
end