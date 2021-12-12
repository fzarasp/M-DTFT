function [dtft_signal , f] = DTFT(signal , M , plt)
dtft_signal = fftshift(fft(signal , M));
%  n = length(signal);
f = (-M/2:M/2-1)*(2/M);
abs_signal = 10 * log(abs(dtft_signal));
if(plt == 1)
figure();
plot(f , abs_signal , ' black')
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel("Magnitude (dB)")
title('frequency responce(written DTFT function)')
grid on;
end
end

