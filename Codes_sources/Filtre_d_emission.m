clear all
clc
Tb=0.1; 
f= -1/Tb:0.01:1/Tb; %g�n�ration de vecteur de fr�quence
%cosinus sur�lev� : 
Cos_slv=cosinus_surelve(0.5);
%l'inverse de fonction sinc :  (fonction de mise en forme de filtre du
%codeur en ligne)
Sin_inv=(pi*f)./sin(pi*f*Tb);
% filtre d'�mission
demi_Nyq=sqrt(cosinus_surelve(1));
%filtre blachissant : 
F_blan=Sin_inv.*Cos_slv; %filtre de blanchissant
%Filtre d'�mission : 
F_emis=F_blan.*demi_Nyq; %le trace � la sortie de filtre d'�mission
figure
plot(f,F_emis,'LineWidth',2)
title('filtre d emission:');
xlabel('Frequence(Hz)');
ylabel('Amplitude');
