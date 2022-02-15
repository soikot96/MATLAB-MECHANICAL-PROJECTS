clc
clear all
close all

d = 16 ;
AE = [0.5:7.5./100:8];
ap = 10;
HM = [0.03:0.07./100:0.1];
rpm = 2000;
z=4;
[ae,hm]= meshgrid(AE,HM);

%INITIAL CONDITION

wb = 0.051 + 0.456.*hm - 0.256.*ae - 0.039.*ap - 0.004.*rpm.*hm + 5.778.*hm.*ae-4.36.*hm.*ap+0.136.*ae.*ap-8.333.*hm.*hm+0.16.*ap;
contourf(ae,hm,wb)
colorbar
xlabel('RDOC')
ylabel('Feed per tooth')
zlabel('Flank Wear')
colormap jet
shading interp
grid on

