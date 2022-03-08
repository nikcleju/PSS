[x,Fs] = audioread('Kalimba.mp3');
x = x(1:5*Fs , : );
sound(x, Fs);

% x2 = [ x ; 0.01*randn( 2*Fs , 2 ) ];
% sound(x2, Fs);

plot( x(1:2000, 2) )

pause(6)
y = filter( [1,-1,1,-1] , 4 , x );
sound(y, Fs);
