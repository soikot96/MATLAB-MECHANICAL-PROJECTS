clc
clear all
close all

d = 10;
[ae,ft] = meshgrid(0.1*d:0.04:0.5*d, 0.03:0.0004:0.07)
Ff = -202.59 + 4848.57*ft + 26*ae;
Ffn = -66 + 9240*ft + 50*ae + 586.71*(ft-0.108)*(ae-12);
Fa = -58.95 + 5652.38*ft + 15.62*ae + 295.71*(ft-0.108)*(ae-12);
fnet = sqrt(Ff.^2 + Ffn.^2+ Fa.^2);

ae = [1:0.04:5];
ap = [1:0.19:20];
ft = [0.03:0.0004:0.07]
rpm = 2000;
rpm2 = rpm .* (0.7854./(asin(sqrt(ae./d)))) ;
POWER = (rpm2.*fnet)./600000;
MRR = ap.*ae.*ft.*rpm2.*4;
SEC = POWER./MRR;
figure(1)
plot(MRR,SEC(:,1)*800)
title('SEC')
figure(2)
plot(rpm2,POWER(1,:))
title('POWER')
##shading interp
##colorbar
##xlabel('RDOC')
##ylabel('MRR')

