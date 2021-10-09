close all
clear all 
clc
bits = [1 0 1 0 0 0 1 1 0];  %sequence binaire 
e = 1; % Nbr de bits par seconds
Tb=0.1;
fc=0.8; %frequence de la porteuse 
V=1;
[t,x] = rz(bits,e);  %gerenaration d'un code RZ

%*******Modulation : ***********
Ac1=2; % Amplitude pour le bit 1
Ac2=1; % Amplitude pour le  bit 0
c1=Ac1*cos(2*pi*fc*t);% la porteur d'amplitude Ac1
c2=Ac2*cos(2*pi*fc*t);% % la porteur d'amplitude Ac2
for i=0:length(x)-1 %Creation du signal modulé
    if x(i+1)==0
        mm(i+1)=c2(i+1);
        else
        mm(i+1)=c1(i+1);
    end
end
%*******Demodulation : ********
BASK_signal_demo = mm.*x ;
for i=0:length(BASK_signal_demo)-1 %Reconstruction du siganl 
    if BASK_signal_demo(i+1)<=0    %Comparaison au seuil (zeros) et regeneration
        m(i+1)=0;                          %du siganl
        else
        m(i+1)=1;
    end
end

figure;
subplot(5,1,1);
plot(t,x);
xlabel('t'); 
ylabel('Amplitude');
title('Siganl non modulé')
subplot(5,1,2);
plot(t,c1);
xlabel('t'); 
ylabel('Amplitude');
title('La porteuse  d amplitude Ac1 ')
subplot(5,1,3);
plot(t,c2);
xlabel('t'); 
ylabel('Amplitude  ');
title('La porteuse  d amplitude Ac2')
subplot(5,1,4);
plot(t,mm);
xlabel('t'); 
ylabel('Amplitude');
title('Signal modulé');
subplot(5,1,5);
plot(t,m);
xlabel('t'); 
ylabel('Amplitude');
title('Signal Demodulé');



