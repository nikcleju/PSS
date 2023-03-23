function b = FIRinvers(ord, h)

y = [h(1) ; zeros(ord, 1)];

rhh = xcorr(h);
L = length(h);

A = zeros(ord+1, ord+1);
for i=1:ord+1
    for j=1:ord+1
        A(i,j) = rhh(L + i - j);
    end
end

b = linsolve(A, y);

end