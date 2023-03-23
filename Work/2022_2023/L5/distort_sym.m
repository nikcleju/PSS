function y = distort_sym(x)
L1 = 5;
% coef1 = 1.1 .^ [-L1:1:-1];
% coef2 = 1.1 .^ [0:-1:-L1];
% coef = [coef1 coef2]
coef = [1.1 .^ [-L1:1:-1]  1.1 .^ [0:-1:-L1]]
coef = coef / norm(coef,1);
coef = fliplr(coef); % filter2 expects kernel, not impulse response, it doesn't flip
y = filter2(coef, x, 'same');
end