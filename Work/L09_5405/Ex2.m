% Ex 2, L09
close all  % inchidem figurile vechi

load mtlb;
plot(mtlb)

vf = fixdt(1,8,5); % 1 semn, 8 biti in total, 5 fractionari

% Cuantizare si afisare
mtlb_t   = num2fixpt(mtlb, vf, [], 'Floor', 'off');
mtlb_r   = num2fixpt(mtlb, vf, [], 'Nearest', 'off');
mtlb_tsv = num2fixpt(mtlb, vf, [], 'Zero', 'off');
plot( [ mtlb, mtlb_r, mtlb_t, mtlb_tsv ] )

% Eroarea de cuantizare = cuantizat - initial
e_r   = mtlb_r   - mtlb;
e_t   = mtlb_t   - mtlb;
e_tsv = mtlb_tsv - mtlb;
figure
plot( [e_r, e_t, e_tsv] )

% Puterea erorilor 
P_r   = sum( e_r.^2 ) / length(e_r);
P_t   = sum( e_t.^2 ) / length(e_t);
P_tsv = sum( e_tsv.^2 ) / length(e_tsv);

% Redare
sound( mtlb , Fs)
pause(1)
sound( mtlb_r , Fs)