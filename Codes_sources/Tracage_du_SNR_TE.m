clear all
clc
SNR=0:10;
M=2 ;
TE=zeros(1,length(SNR));
for k=1:length(SNR)
    EbN0 =SNR(k);
    sim('Comp_err');
    TE(k)= ErrorVec(1);
end

semilogy(SNR,TE,'*-')
    
   