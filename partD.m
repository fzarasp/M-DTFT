
close all
clc



%% Q1 : part D
n = 0:1000;
h  = [1/12];
h_i = [1 , 12];
x = sin(2 * pi * n) + sin(2 * pi * 0.25 * n)+sin(2 * pi * 0.29 * n);
x_i = [1 , length(n)+ 1 ];
[y,t]= convolution(x , h , x_i , h_i);
[yf , f]=DTFT(y , 128 , 1);
f_h = DTFT(h, 128 , 0);
f_x = DTFT(x , 128,0);
f_y = f_h .* f_x;
hold on ;
plot(f ,10*log(abs(f_y)) ,'o- red')
legend({'DTFT(conv(x , y))' , 'DTFT(x) * DTFT(h)' })
figure();
freqz(y,128)
title('frequncy response(freqz function)')