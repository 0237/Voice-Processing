[x,fs]=audioread('tada.wav'); %wavread�ѱ�����
fx=fft(x);%fft����--������ɢ����Ҷ�任
x0=ifft(fx);%��任
figure('name','���ٸ���Ҷ�任');
subplot(3,1,1);plot(x);
subplot(3,1,2);plot(abs(fftshift(fx)));  %fftshift����������fft���������˳�򣬽���Ƶλ���Ƶ�Ƶ�׵�����
xlabel('Time');
ylabel('Amplitude');
title('The Wave form of signal');
grid on; 
subplot(3,1,3);plot(x0);