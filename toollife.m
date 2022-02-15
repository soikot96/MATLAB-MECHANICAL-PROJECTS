clc
clear all 
d = 20;
x3 = 100;
X4 = [2:0.08:10];
X2 = [500:5:1000];
rpm = 2000
x1 = pi.*d.*rpm;
[x2,x4] = meshgrid((X2./rpm),X4);

ae = (X4.*100)./d
vc = x1./1000
TL3 = e.^(25.9887 - log(ae) -4 .* log(vc))
 
figure 1
plot3(X2,X4, TL3,'-r')
xlabel('Feed Rate')
ylabel('RDOC')
zlabel('Tool Life in Minutes')
grid on

##colormap (flipud(jet))
##shading interp
##colorbar

##TL1 = (47.76 -0.12.*x1 -141.03 .* x2.*2 + 4.43.*x3 -1.83.*x4)  ;
##TL2 = 18.79 + 0.66 .*x1 - 92.484 .* x2 + 41.24 .* x3 -1.75 .* x4 -0.001 .* x1.^2 + 22.89 .* x2.^2 -5.40 .* x3.^2 + 1.38 .* x4.^2 -1.13 .* x1.*x2 -0.05 .* x1 .* x3 - 0.068 .*x1.*x4 -43.9 .*x2.*x3 + 61.4 .*x2.*x4 -5.73 .* x3.*x4 ; 
 %x1 = cutting speed, 
  %x2 = Feed rate in mm/rev,
  %x3 = Axial depth 
  %x4 = Radial depth
 








