% Ex 3, L09
close all

x = mtlb;
y(1) = x(1);   % y(0) = 0;
for n=2:length(x)
    y(n) = 0.5*y(n-1) + x(n);
end

x = mtlb_r;
y2(1) = x(1);   % y(0) = 0;
for n=2:length(x)
    prod  = num2fixpt(0.5*y2(n-1), vf, [], 'Nearest');
    y2(n) = num2fixpt(prod + x(n), vf, [], 'Nearest');
end
plot([y', y2'])
