clc
clear all
close all

d = 10 ;
ae = [0.5:4.5./100:5]
ap = [20:-15./100:5]
hm = 0.03;
rpm = 2000;
z=4;
L = 50000; %in mm
F = 2500;

%INITIAL CONDITION

ft_adj = (hm.*(d./2))./(sqrt(d.*ae - (ae.^2)))
rpm_adj = (0.7854./asin(sqrt(ae./d))).*rpm  #1
vc_adj = (pi.*d.*(rpm_adj))
tea = 2.*asind(sqrt(ae./d))
feed_adj = ft_adj.*rpm_adj.*z  #2
mrr_adj = ((ae.*ap.*feed_adj))  #3
Ft = 0.0310 .* (ft_adj.*ae).*((z.*tea)./360); #4

subplot(2,2,1)
plot(ap./ae,mrr_adj)
title('MRR')
xlabel('Ap/Ae Ratio')
ylabel('MRR in mm3/min')
xlim([0.5,5])
grid on

subplot(2,2,2)
plot(ae, feed_adj)
title('FEED')
xlabel('Radial DOC in mm')
ylabel('Feed in mm/min')
xlim([0.5,5])
grid on

subplot(2,2,3)
plot(ae, rpm_adj)
title('RPM')
xlabel('Radial DOC in mm')
ylabel('RPM in rev/min')
xlim([0.5,5])
grid on

subplot(2,2,4)
plot(ae, ft_adj)
xlabel('Radial DOC in mm')
ylabel('Adjusted Feed per tooth in mm/tooth')
title('FPT')
xlim([0.5,5])
grid on

figure(2)
plot(ae, tea)
xlabel('Radial DOC in mm')
ylabel('Tool Engagement Angle in Degrees')
xlim([0.5,5])

figure(3)
t=L./feed_adj;
plot(feed_adj,t)
xlabel('FEED IN mm/min')
ylabel('TIME IN minutes')
grid on




















