% Ex 2, L09
% Nicolae Cleju
load mtlb;
plot(mtlb)

% 8 biti in total: 1 Semn, 2 I, 5 F
vf = fixdt(1,8,5); % 1 Semn, 8 in total, 5 fractionari

% Cuantizare prin cele 3 metode
mtlb_r   = num2fixpt(mtlb, vf, [], 'Nearest', 'off');
mtlb_t   = num2fixpt(mtlb, vf, [], 'Floor',   'off');
mtlb_tsv = num2fixpt(mtlb, vf, [], 'Zero',    'off');

% Afisare semnale cuantizate
plot( [mtlb, mtlb_r, mtlb_t, mtlb_tsv] )

% Eroarea de cuantizare
e_r   = mtlb_r - mtlb;
e_t   = mtlb_t - mtlb;
e_tsv = mtlb_tsv - mtlb;
figure
plot([e_r, e_t, e_tsv])

% Puterea erorilor de cuantizare
P_r   = sum(e_r.^2) / length(e_r);
P_t   = sum(e_t.^2) / length(e_t);
P_tsv = sum(e_tsv.^2) / length(e_tsv);

% Redare audio
%sound(mtlb, Fs)
sound(mtlb_t, Fs)