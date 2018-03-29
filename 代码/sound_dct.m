[a,fs]=audioread('tada.wav'); 
da=dct(a);%¿Î…¢”‡œ“±‰ªª
a0=idct(da);%¿Î…¢”‡œ“ƒÊ±‰ªª
figure('name','¿Î…¢”‡œ“±‰ªª');
subplot(3,1,1);plot(a);
subplot(3,1,2);plot(da);
subplot(3,1,3);plot(a0);