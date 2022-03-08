clear all
close all

% Exercitiul 1
delta = 0.001;

s1 = delta * rand(1, 10000) - delta/2;    % U [-delta/2, delta/2]
plot(s1)
s2 = -delta * rand(1, 10000);             % U [-delta, 0]
figure;
plot(s2)
s3 = 2 * delta * rand(1, 10000) - delta;  % U [-delta, delta]
figure;
plot(s3)

s1_m = mean(s1);    % media semnalului
s1_v = var(s1);     % varianta
s1_p = mean(s1.^2); % puterea = delta^2 / 12

s2_m = mean(s2);    % media semnalului
s2_v = var(s2);     % varianta
s2_p = mean(s2.^2); % puterea = delta^2 / 3

s3_m = mean(s3);    % media semnalului
s3_v = var(s3);     % varianta
s3_p = mean(s3.^2); % puterea = delta^2 / 3

% Exercitiul 2
% Nicolae Cleju
a = 0.99;
y(1) = s1(1);       % pentru primul esantion, y(0) = 0
for n = 2:10000
    y(n) = a * y(n-1) + s1(n);
end
plot( [s1'  y'] )
y_m = mean(y);    % media semnalului
y_v = var(y);     % varianta
y_p = mean(y.^2); % puterea = delta^2 / 3

Q = y_p / s1_p

% Exercitiul 3
n = 1:10000;
simin = [n'  s1'];





