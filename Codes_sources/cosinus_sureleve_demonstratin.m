Tb=1;
f= -1/Tb:0.01:1/Tb;
g=cosinus_surelve(0.1);
g1=cosinus_surelve(0.5);
g2=cosinus_surelve(1);
figure;
plot(g,'LineWidth',2);
hold on 
plot(g1,'LineWidth',3)
plot(g2,'LineWidth',3);
legend('Alpha =0.1','Alpha =0.5','Alpha =1')
title('filtre de Nyquist :');
xlabel('Frequence, Hz')
ylabel('Amplitude, g(f)')
