%% Q1 : part C 
close all
clc
h  = [1/12];
h_i = [1 , 12];
len = 100;
x = ones(1 , len).*(0.9.^(0:len-1));  
[y,t ] = convolution(x , h , [1 len] , h_i);
f_h = DTFT(h, 128 , 0);
f_x = DTFT(x , 128,0);
f_y = f_h .* f_x;
[yf ,f] = DTFT(y , 128 ,1);
hold on ;
plot(f ,10*log(abs(f_y)) ,'.')
legend({'DTFT(conv(x , y))' , 'DTFT(x) * DTFT(h)' })
figure();
freqz(y);
title('frequncy response(freqz function)')