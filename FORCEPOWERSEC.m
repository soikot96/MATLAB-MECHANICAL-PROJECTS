clc
clear all
close all

d = 10;
[ae,ft] = meshgrid(0.07*d:0.043:0.5*d, 0.03:0.0004:0.07)
Ff = -202.59 + 4848.57*ft + 26*ae;
Ffn = -66 + 9240*ft + 50*ae + 586.71*(ft-0.108)*(ae-12);
Fa = -58.95 + 5652.38*ft + 15.62*ae + 295.71*(ft-0.108)*(ae-12);
fnet = sqrt(Ff.^2 + Ffn.^2+ Fa.^2);

ae = [5:-0.043:0.7];
ap = [1:0.19:20];
ft = [0.03:0.0004:0.07]
rpm = 2000;
rpm2 = rpm .* (0.7854./(asin(sqrt(ae./d)))) ;
feed = ft.*rpm2.*4;
time = 50000./feed;
POWER = (rpm2.*fnet.*31.4)./6000;
MRR = ap.*ae.*ft.*rpm2.*4; %4 IS NUMBER OF FLUTES
SEC = POWER./MRR;

plot(MRR,SEC(1,:))
xlim([0,20000])
xlabel('MRR in cubic mm / min')
ylabel('SEC in Joule/mm^3 ')

figure(2)
plot(rpm2,POWER([1],:)./1000)
title('POWER')
xlabel('RPM in Rev/min')
ylabel('Power in Watts ')

figure(3)
SEC2 = (614000./MRR)
plot(MRR,SEC2)
xlim([0,20000])
title('SEC FROM RESEARCH PAPER MODEL')
xlabel('MRR')
ylabel('SEC')


figure(4)
plot(feed,time)
title('FEED VS TIME')
xlabel('Feed in mm/min')
ylabel('Time in Min ')

figure(5)
plot(ae, SEC(:,[1]))
title('RDOC Vs SEC')
xlabel('RDOC in mm')
ylabel('SEC in joule/cubic mm ')

figure(6)
plot(POWER([1],:)./1000, SEC(:,[1]))
title('Power Vs SEC')
xlabel('Power in Watts ')
ylabel('SEC in joule/cubic mm ')



