% *********************************************************
% Laborator PSS: Efectele cuantizarii prin rotunjire ale produselor si
% sumelor
% normescal(): calculul normei linfinit, lunu, ldoi
% *********************************************************

function [linfinit,lunu,ldoi] = normescal(b,a)

%linfinit
[h,w]=freqz(b,a,1024);
linfinit=max(abs(h));
disp('linfinit = ');disp(linfinit);
h=impz(b,a,1000);%se considera ca h(1000)<<0

%lunu
lunu=sum(abs(h));
disp('lunu = ');disp(lunu);

%ldoi
ldoi=sqrt(sum(h.^2));
disp('ldoi = ');disp(ldoi);
