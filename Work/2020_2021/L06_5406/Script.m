% Nicolae Cleju

x = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];

w1 = 0;
w2 = 0;
w3 = 0;
w4 = 0;

for n = 1:length(x)
    
    % Pas 1: Compute y(n)
    f1 = x(n) - k(4)*w1;
    f2 = f1   - k(3)*w2;
    f3 = f2   - k(2)*w3;
    f4 = f3   - k(1)*w4;
    
    y(n) = v(5)* (w1 + k(4)* f1 ) +  ...
           v(4)* (w2 + k(3)* f2 ) +  ...
           v(3)* (w3 + k(2)* f3 ) +  ...
           v(2)* (w4 + k(1)* f4 ) +  ...
           v(1)* f4 ;
    
   % Pas 2: Actualizare w pentru iteratia urmatoare
   w1 = w2 + k(3)*f2;
   w2 = w3 + k(2)*f3;
   w3 = w4 + k(1)*f4;
   w4 = f4;
   
end