n = 0:100;
hd = (1/3).^n .* cos(n*pi/4);

B = hd(1:5)';
Adreapta = [eye(3) ; zeros(2,3)] ;
Acol1 = [0 ; -hd(1:4)'];
Acol2 = [0 ; 0 ; -hd(1:3)'];
A = [Acol1 , Acol2 , Adreapta];

X = linsolve(A,B);
