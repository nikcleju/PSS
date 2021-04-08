function y = filter_spst(b, a, x, v_init)
% Nicolae Cleju
ordin = length(b) - 1;

for i=1:ordin
    g(i) = b(ordin-i+2) - b(1)*a(ordin-i+2);
    % Verificare: ordin=3
    % i=1 --> b(4) - b(1)*a(4)
    % i=2 --> b(3) - b(1)*a(3)
    % i=3 --> b(2) - b(1)*a(2)
end

F = [zeros(ordin-1, 1) ,  eye(ordin-1) ];
F = [ F ; -flip(a(2:end)) ];
q = [ zeros(ordin-1, 1) ; 1 ];
% Initializare vector de stare v
%v = zeros(ordin, 1);
v = v_init;
% Ecuatii
for n=1:length(x)
    y(n) = g*v + b(1)*x(n);
    v    = F*v + q*x(n);
end