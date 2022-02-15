clc
clear all
close all

%ft =[ 0.03:0.004:0.07]
ap = [5:0.15:20]
ae = [5:-0.045:0.5]
[Ap,Ae] = meshgrid(ap,ae)


MRR1 = 495.5*(Ap.*Ae).*1e-1;
MRR2 = 1000*(Ap.*Ae).*1e-1;
MRR3 = 1500*(Ap.*Ae).*1e-1;

figure(3)

plot3(ap,ae,MRR1)
xlabel('AXIAL DEPTH OF CUT in mm')
ylabel('RADIAL DEPTH OF CUT in mm')
zlabel('MRR in mm3/min')
colormap jet,shading interp
colorbar

##hold on
##surf(ap,ae,MRR2)
##colormap jet,shading interp
##
##hold on
##surf(ap,ae,MRR3)
##legend({'FEED1 = 495.5 mm/min', 'FEED2 = 2500 mm/min', 'FEED3 = 4902 mm/min'});
##colormap jet,shading interp







