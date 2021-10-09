function y=cosinus_surelve(a)
%a est le coefficient de retombé
Ts=0.1; %durée d'un symbole ici on a Tb=Ts
f= -1/Ts:0.01:1/Ts; %génération de vecteur de fréquence

y=zeros(1,length(f));
for i=1:length(f)
    if(( abs(f(i))<= ((1+a)/(2*Ts))) && (abs(f(i))>=((1-a)/(2*Ts)) ))
        y(i)=(Ts/2)*(1-sin((pi*(2*abs(f(i))*Ts-1)/(2*a))));
    elseif (( abs(f(i))>=0 ) && ( abs(f(i))< ((1-a)/(2*Ts))) )
        y(i)=Ts;
    else y(i)=0;
    end
end
end





