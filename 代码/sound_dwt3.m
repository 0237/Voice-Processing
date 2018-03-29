[a,fs]=audioread('tada.wav'); 
[c,l]=wavedec(a(:,2),3,'db4');%db4小波三级分解,取原音频的另一个声道
ca3=appcoef(c,l,'db4',3);%第三级近似分量，低频
cd3=detcoef(c,l,3);%第三级细节分量，高频
cd2=detcoef(c,l,2);%第二级细节分量，高频
cd1=detcoef(c,l,1);%第一级细节分量，高频
a0=waverec(c,l,'db4');%db4小波三级重构
figure('name','小波三级分解与重构');
ax(1)=subplot(6,1,1);plot(a(:,2));grid on;
ax(2)=subplot(6,1,2);plot(cd1);grid on; 
ax(3)=subplot(6,1,3);plot(cd2);grid on; 
ax(4)=subplot(6,1,4);plot(cd3);grid on; 
ax(5)=subplot(6,1,5);plot(ca3);grid on; 
ax(6)=subplot(6,1,6);plot(a0);grid on; 
linkaxes(ax,'x');