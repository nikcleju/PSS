function [b,a] = metoda_prony(ordin, hd)
% Nicolae Cleju

% Se creeaza matricea A
for i=1:ordin
    for j=1:ordin
        A(i,j) = xcorr_prony(hd, i, j, ordin);
    end
end

% Se creeaza vectorul B
for i=1:ordin
    B(i,1) = - xcorr_prony(hd, i, 0, ordin);
end

% Rezolvam sistemul AX=B
a = linsolve(A,B);

% Calculam si coeficientii b
a = a';
for n = 0:ordin
  b(n+1) = hd(n+1) + sum(a(1:n) .* hd(n:-1:1));
end

end

function r = xcorr_prony(x, k, l, M)
% Computes restricted autocorrelation for the Prony method
% Inputs:
%  x = the input vector
%  k,l = the element to compute
%  M = the degree of the numerator polynomial B(z)
% Returns:
%  r = rxx[k-l]

x(1 : M+1-max(k,l)) = 0; % Setăm primele valori la 0
rxx = xcorr(x);           % Calculeaza autocorelatia partiala

L = length(x);
r = rxx(L + k-l);
end