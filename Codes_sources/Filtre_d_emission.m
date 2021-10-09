clear all
clc
Tb=0.1; 
f= -1/Tb:0.01:1/Tb; %génération de vecteur de fréquence
%cosinus surélevé : 
Cos_slv=cosinus_surelve(0.5);
%l'inverse de fonction sinc :  (fonction de mise en forme de filtre du
%codeur en ligne)
Sin_inv=(pi*f)./sin(pi*f*Tb);
% filtre d'émission
demi_Nyq=sqrt(cosinus_surelve(1));
%filtre blachissant : 
F_blan=Sin_inv.*Cos_slv; %filtre de blanchissant
%Filtre d'émission : 
F_emis=F_blan.*demi_Nyq; %le trace à la sortie de filtre d'émission
figure
plot(f,F_emis,'LineWidth',2)
title('filtre d emission:');
xlabel('Frequence(Hz)');
ylabel('Amplitude');
