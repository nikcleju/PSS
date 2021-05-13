clear all
close all

% EXercitiul  1
delta = 0.001;

s1 = delta * rand(1, 10000) - delta/2;  % U [-delta/2, delta/2] 
plot(s1)        
s2 = -delta * rand(1, 10000);           % U [-delta, 0] 
figure; plot(s2)
s3 = 2*delta * rand(1, 10000) - delta;  % U [-delta, delta] 
figure; plot(s3)

s1_m = mean(s1);    % media semnalului s1
s1_v = var(s1);     % varianta semnalului s1
s1_p = mean(s1.^2); % puterea = val patratica medie = media patratelor
% puterea = delta^2 / 12

s2_m = mean(s2);    % media semnalului
s2_v = var(s2);     % varianta semnalului 
s2_p = mean(s2.^2); % puterea = val patratica medie = media patratelor
% puterea = delta^2 / 4

s3_m = mean(s3);    % media semnalului
s3_v = var(s3);     % varianta semnalului
s3_p = mean(s3.^2); % puterea = val patratica medie = media patratelor
% puterea = delta^2 / 4

% Exercitiul 2
% Nicolae Cleju
a = 0.5;
y(1) = s1(1); 
for n=2:10000
    y(n) = a * y(n-1) + s1(n);  % x[n] = s1[n]
end

y_m = mean(y);    % media semnalului
y_v = var(y);     % varianta semnalului
y_p = mean(y.^2); % puterea = val patratica medie = media patratelor

plot( [s1' y'] )

% Exercitiul 3
time_values = 1:10000;
s1_input = [time_values' s1'];
