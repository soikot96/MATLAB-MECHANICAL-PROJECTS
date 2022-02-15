clc
clear all
ap = [5:0.15:20];
ae = [5:-0.045:0.5];
m = 1.8582e+04;
n = 5.7226e+04;
t = (n-m)/100;
[Ap,Ae] = meshgrid(ap,ae);
F = [m:t:n];
SECF = zeros(11,11);

figure(5)
Fc = 22000;
SEC = Fc./(Ap.*Ae);
plot3(Ap,Ae,SEC)
xlabel('Ap')
ylabel('Ae')
zlabel('SEC')
##colormap jet
####colorbar
##shading interp
title('SPECIFIC ENERGY CONSUMPTION')







