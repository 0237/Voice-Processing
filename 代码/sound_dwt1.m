[a,fs]=audioread('tada.wav'); 
[ca1,cd1]=dwt(a(:,1),'db4');%db4小波一级分解,取原音频的一个声道
a0=idwt(ca1,cd1,'db4',length(a(:,1)));%db4小波一级重构
figure('name','小波一级分解与重构');
ax(1)=subplot(4,1,1);plot(a(:,1));grid on; 
ax(2)=subplot(4,1,2);plot(cd1);grid on; 
ax(3)=subplot(4,1,3);plot(ca1);grid on; 
ax(4)=subplot(4,1,4);plot(a0);grid on; 
linkaxes(ax,'x');