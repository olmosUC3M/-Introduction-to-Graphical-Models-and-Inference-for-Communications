close all;
clear all;

sigma2=[1e-03:1e-03:100];

Csoft=0.5*log2(1+sigma2.^(-1));



psigma=0.5*erfc(1./sqrt(2*sigma2));

H=-psigma.*log2(psigma)-(1-psigma).*log2((1-psigma));

Chard=1-H;

loglog(sigma2,Csoft);
hold on;
loglog(sigma2,Chard,'r');

