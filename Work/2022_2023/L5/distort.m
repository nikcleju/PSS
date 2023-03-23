function y = distort(x)
L1 = 5;
coef = [zeros(1,L1) 1.1.^[0:-1:-L1]];
coef = coef / norm(coef,1);
coef = fliplr(coef); % filter2 expects kernel, not impulse response, it doesn't flip
coef;
y = filter2(coef, x, 'same');
end