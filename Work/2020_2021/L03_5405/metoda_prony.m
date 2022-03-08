function [b,a] = metoda_prony(ordin, hd)
% Nicolae Cleju

% Se creeaza A
for i=1:ordin
    for j=1:ordin
        A(i,j) = xcorr_prony(hd, i, j, ordin);
    end
end
% Se creeaza B
for i=1:ordin
    B(i,1) = -xcorr_prony(hd, i, 0, ordin);
end
% Se rezolva sistemul AX=B
a = linsolve(A,B);

% Calculeaza b
a = a';
for n=0:ordin
    % Primele ecuatii de la metode Pade
    b(1+n) = hd(n+1) + sum(a(1:n) .* hd(n:-1:1));
end

end