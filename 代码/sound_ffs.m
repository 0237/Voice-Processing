[x,fs]=audioread('tada.wav'); %wavread已被弃用
fx=fft(x);%fft函数--快速离散傅里叶变换
x0=ifft(fx);%逆变换
figure('name','快速傅里叶变换');
subplot(3,1,1);plot(x);
subplot(3,1,2);plot(abs(fftshift(fx)));  %fftshift函数—调整fft函数的输出顺序，将零频位置移到频谱的中心
xlabel('Time');
ylabel('Amplitude');
title('The Wave form of signal');
grid on; 
subplot(3,1,3);plot(x0);