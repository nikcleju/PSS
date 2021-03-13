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
r = rxx(L + k-l);  % rxx(L) cand vrem rxx[0] din teorie
end