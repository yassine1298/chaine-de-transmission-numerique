clc 
close all 
clear all 
fc1=2;
fc2=9;
bits=[1 1 0 1 0 0 0 1 1 0] ;
e = 1;
[t,x] = rz(bits,e);
%************Modulation : **********************
c1=sin(2*pi*fc1*t);% la porteur de frequence F1
c2=sin(2*pi*fc2*t);% % la porteur de frequence F2

for i=0:length(x)-1 %Creation du signal modulé
    if x(i+1)==0
        m(i+1)=c2(i+1);
        else
        m(i+1)=c1(i+1);
    end
end
    
%**********Demodulation : *********************





subplot(4,1,1); 
plot(t,c1)
xlabel('Temps')
ylabel('Amplitude')
title('Signal de la porteuse de frequence F1')
subplot(4,1,2) 
plot(t,c2)
xlabel('Temps')
ylabel('Amplitude')
title('Signal de la porteuse de frequence F2')
subplot(4,1,3) 
plot(t,x)
xlabel('Temps')
ylabel('Amplitude')
title('Siganl binaire coder en RZ')
subplot(4,1,4) 
plot(t,receivedData)
xlabel('Temps')
ylabel('Amplitude')
title('Signal modulé')