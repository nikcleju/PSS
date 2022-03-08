function [b,a] = metoda_prony(ordin, hd)
% Nicolae Cleju

% Creeaza sistemul pentru calcularea a-urilor
% A
for i=1:ordin
    for j=1:ordin
        A(i,j) = xcorr_prony(hd, i, j, ordin);
    end
end
%B
for k=1:ordin
    B(k,1) = - xcorr_prony(hd, k, 0, ordin);
end
% Se rezolva sistemul AX = B
a = linsolve(A,B);   % solve

% Se calculeaza b-urile 
a = a';  % transpunere din coloana in linie
for n=0:ordin
    b(n+1) = hd(n+1) + sum(a(1:n) .* hd(n:-1:1));
end

% La revedere!
end