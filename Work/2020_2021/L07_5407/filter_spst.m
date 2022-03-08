function y = filter_spst(b, a, x, v_init)
% Nicolae Cleju
ord = length(a) - 1;

for i=1:ord
    g(i) = b(ord-i+2) - b(1)*a(ord-i+2);
    % Verificare: ord=3
    % i=1 --> b(4) - b(1)*a(4)
    % i=2 --> b(3) - b(1)*a(3)
    % i=3 --> b(2) - b(1)*a(2)
end
F = [ zeros(ord-1, 1) , eye(ord-1) ];
F = [F ; -flip(a(2:end)) ];
q = [ zeros(ord-1, 1) ; 1 ];
% Intializam vectorul de stare
%v = zeros(ord, 1);
v = v_init;
for n=1:length(x)
    y(n) = g*v + b(1)*x(n);
    v    = F*v + q*x(n);
end
