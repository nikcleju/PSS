function b = FIRinvers_sym(ord, h)

rhh = xcorr(h);
L = length(h);

y = [zeros(ord, 1); h(ceil(L/2)) ; zeros(ord, 1)];

A = zeros(2*ord+1, 2*ord+1);
for i=1:2*ord+1
    for j=1:2*ord+1
        A(i,j) = rhh(L + i - j);
    end
end

b = linsolve(A, y);

end