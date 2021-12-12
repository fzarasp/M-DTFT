
%% Q1 : part E
close all
clc
filename = 'meyou.wav';
outfile = 'outmeyou.wav';
[x , Fs]= audioread(filename , [1 , 30* Fs]);
xs = x(1:length(x));
h  = [1/12];
h_i = [1 , 12];
x_i = [1 , length(xs)];
[y,t]= convolution(xs , h , x_i , h_i);
[yf , f]=DTFT(y , Fs , 1);
f_h = DTFT(h, Fs , 0);
f_x = DTFT(xs , Fs,0);
f_y = f_h .* f_x;
% hold on ;
% plot(f ,10*log(abs(f_y)) ,'red')
figure();
freqz(y,128)
audiowrite(outfile,y,Fs);
clear y 
