[a,fs]=audioread('tada.wav'); 
[c,l]=wavedec(a(:,2),3,'db4');%db4С�������ֽ�,ȡԭ��Ƶ����һ������
ca3=appcoef(c,l,'db4',3);%���������Ʒ�������Ƶ
cd3=detcoef(c,l,3);%������ϸ�ڷ�������Ƶ
cd2=detcoef(c,l,2);%�ڶ���ϸ�ڷ�������Ƶ
cd1=detcoef(c,l,1);%��һ��ϸ�ڷ�������Ƶ
a0=waverec(c,l,'db4');%db4С�������ع�
figure('name','С�������ֽ����ع�');
ax(1)=subplot(6,1,1);plot(a(:,2));grid on;
ax(2)=subplot(6,1,2);plot(cd1);grid on; 
ax(3)=subplot(6,1,3);plot(cd2);grid on; 
ax(4)=subplot(6,1,4);plot(cd3);grid on; 
ax(5)=subplot(6,1,5);plot(ca3);grid on; 
ax(6)=subplot(6,1,6);plot(a0);grid on; 
linkaxes(ax,'x');