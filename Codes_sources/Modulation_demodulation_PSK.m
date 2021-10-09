clear all 
clc
bits = [1 0 1 0 0 0 1 1 0];  %sequence binaire 
e = 1; % Nbr de bits par seconds
Tb=0.1;
fc=0.8; %frequence de la porteuse 
V=1;
[t,s] = nrz(bits,e);  %gerenaration d'un code NRZ
A=1;  
%************ %Modulation  : **************
x=A.*cos(2*pi*fc*t);  %la porteuse 
BPSK_signal=x.*s; % traçage du signal modulé 

%************ Demodulation : **************

BPSK_signal_demo = BPSK_signal.*x ;
for i=0:length(BPSK_signal_demo)-1 %Reconstruction du siganl 
    if BPSK_signal_demo(i+1)<=0    %Comparaison au seuil (zeros) et regeneration
        mm(i+1)=-1;                          %du siganl
        else
        mm(i+1)=1;
    end
end


figure;
subplot(4,1,1);
plot(t,s);
xlabel('t'); 
ylabel('Amplitude');
title('Siganl non modulé')

subplot(4,1,2);
plot(t,x);
xlabel('t'); 
ylabel('Amplitude');
title('La porteuse')

subplot(4,1,3);
plot(t,BPSK_signal);
xlabel('t'); 
ylabel('Amplitude');
title('BPSK');

subplot(4,1,4);
plot(t,mm);
xlabel('t'); 
ylabel('Amplitude');
title('Signal demodulé');



