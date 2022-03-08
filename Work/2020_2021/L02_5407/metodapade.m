function [b,a] = metodapade(ordin, hd)
% Cleju Nicolae

L = 2*ordin+1;
B = hd(1:L)';

Adreapta = [eye(ordin+1) ; zeros(ordin,ordin+1)] ;

for i=1:ordin
    % coloana numarul i
    A(:,i) = [zeros(i,1)  ;  -hd(1:L-i)' ];
end
A = [A  Adreapta];

%Acol1 = [0 ; -hd(1:4)'];
%Acol2 = [0 ; 0 ; -hd(1:3)'];
%A = [Acol1 , Acol2 , Adreapta];

X = linsolve(A,B);
a = X(1:ordin);
b = X(ordin+1 : L);