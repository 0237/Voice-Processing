[a,fs]=audioread('tada.wav'); 
da=dct(a);%��ɢ���ұ任
a0=idct(da);%��ɢ������任
figure('name','��ɢ���ұ任');
subplot(3,1,1);plot(a);
subplot(3,1,2);plot(da);
subplot(3,1,3);plot(a0);