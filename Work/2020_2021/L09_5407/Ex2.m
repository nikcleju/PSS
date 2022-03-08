% Ex 2, L09
load mtlb;
plot(mtlb)

vf = fixdt(1,5,2); % 1 bit de semn, 8 in total, 5 fractionari

% Cuantizare prin cele 3 metode
mtlb_r   = num2fixpt(mtlb, vf, [], 'Nearest');
mtlb_t   = num2fixpt(mtlb, vf, [], 'Floor');
mtlb_tsv = num2fixpt(mtlb, vf, [], 'Zero');
plot( [mtlb , mtlb_r, mtlb_t, mtlb_tsv] )

% Eroarea de cuantizare = cuantizat - initial
e_r   = mtlb_r - mtlb;
e_t   = mtlb_t - mtlb;
e_tsv = mtlb_tsv - mtlb;
plot([e_r, e_t, e_tsv])

% Puterea zgomotului de cuantizare
P_r   = sum( e_r.^2 )   / length(e_r);
P_t   = sum( e_t.^2 )   / length(e_t);
P_tsv = sum( e_tsv.^2 ) / length(e_tsv);

% Redare
sound(mtlb, Fs)
pause(1)
sound(mtlb_t, Fs)




