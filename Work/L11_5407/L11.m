clear all
close all

% Exercitiul 1
delta = 0.001;

s1 = rand(1,10000) * delta - delta/2 ;  % U [-delta/2, delta/2]
plot(s1)
s2 = rand(1,10000) * (-delta);          % U [-delta, 0]
figure;
plot(s2)
s3 = rand(1,10000) * 2 * delta - delta ;% U [-delta, delta]
figure;
plot(s3)

s1_m = mean(s1);     % media
s1_v = var(s1);      % varianta
s1_p = mean(s1.^2) ; % val medie patratica = puterea semnalului
% delta^2/12

s2_m = mean(s2);     % media
s2_v = var(s2);      % varianta
s2_p = mean(s2.^2) ; % val medie patratica = puterea semnalului
% delta^2 / 3

s3_m = mean(s3);     % media
s3_v = var(s3);      % varianta
s3_p = mean(s3.^2) ; % val medie patratica = puterea semnalului
% delta^2 / 3

% Exercitiul 2
% Nicolae Cleju
a = 0.9;
y(1) = a * 0 + s1(1);
for n = 2:10000
    y(n) = a*y(n-1) + s1(n);
end

plot( [s1'  y'] )
y_m = mean(y);     % media
y_v = var(y);      % varianta
y_p = mean(y.^2) ; % val medie patratica = puterea semnalului

Q = y_p / s1_p

% Exercitiul 3
timp = 1:10000;
s1_mat = [timp' s1'];

