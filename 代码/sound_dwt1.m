[a,fs]=audioread('tada.wav'); 
[ca1,cd1]=dwt(a(:,1),'db4');%db4С��һ���ֽ�,ȡԭ��Ƶ��һ������
a0=idwt(ca1,cd1,'db4',length(a(:,1)));%db4С��һ���ع�
figure('name','С��һ���ֽ����ع�');
ax(1)=subplot(4,1,1);plot(a(:,1));grid on; 
ax(2)=subplot(4,1,2);plot(cd1);grid on; 
ax(3)=subplot(4,1,3);plot(ca1);grid on; 
ax(4)=subplot(4,1,4);plot(a0);grid on; 
linkaxes(ax,'x');