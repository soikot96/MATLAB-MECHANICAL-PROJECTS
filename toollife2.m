clc
close all
clear all

  %x1 = cutting speed, 
  %x2 = Feed rate in mm/rev,
  %x3 = Axial depth 
  %x4 = Radial depth
  
x1 = 10;
x2 = [0.15:0.0085:1];
x3 = 50;
x4 = [1:0.09:10];


[X2,X4]= meshgrid(x2,x4);
TL1 = 47.76 -0.12.*x1 -141.03 .* X2.*2 + 4.43.*x3 -1.83.*X4  ;
TL2 = 1.879 + 0.66 .*x1 - 9.2484 .* X2 + 41.24 .* x3 -1.75 .* X4 -0.001 .* x1.^2 + 228.9 .* X2.^2 -5.40 .* x3.^2 + 1.38 .* X4.^2 -1.13 .* x1.*X2 -0.05 .* x1 .* x3 - 0.068 .*x1.*X4 -4.39 .*X2.*x3 + 61.4 .*X2.*X4 -5.73 .* x3.*X4 ; 


figure 1
surfc(x2,x4, TL1)

xlabel('Feed Rate in mm/rev')
ylabel('RDOC')
zlabel('Tool Life in Minutes')
zlim([0,250])
grid on
colormap (flipud(jet))
shading interp
colorbar