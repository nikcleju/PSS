function b = FIRinvers_delay(ord, h, delay)

rhh = xcorr(h);
L = length(h);

if ord > delay
    y = [h(delay+1:-1:1)' ; zeros(ord-delay, 1)];
else
    y = h(delay+1:-1:delay-ord+1)';
end

A = zeros(ord+1, ord+1);
for i=1:ord+1
    for j=1:ord+1
        A(i,j) = rhh(L + i - j);
    end
end

b = linsolve(A, y);

end