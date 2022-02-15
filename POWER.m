clc
clear all
ap = [3:0.175:20];
ae = [5:-0.045:0.5];
[Ap,Ae] = meshgrid(ap,ae)

P1 = [(495.5*2200)*(Ap.*Ae)]/(60000);
P2 = [(650*2200)*(Ap.*Ae)]/(60000);
P3 = [(750*2200)*(Ap.*Ae)]/(60000);
P4 = [(1000*2200)*(Ap.*Ae)]/(60000);

figure (4)
subplot(2,2,1)
contourf(Ap,Ae,P1,10)
axis xy
xlabel('ADOC')
ylabel('RDOC')
zlabel('POWER')
title('POWER CONSUMPTION at Feed= 495.5 mm/min')
zlim([0 4])
colormap jet,shading interp
colorbar


subplot(2,2,2)
contourf(Ap,Ae,P2,10)
xlabel('ADOC')
ylabel('RDOC')
zlabel('POWER')
title('POWER CONSUMPTION at Feed= 650 mm/min')
zlim([0 4])
colormap jet,shading interp
colorbar

subplot(2,2,3)
contourf(Ap,Ae,P3,10)
xlabel('ADOC')
ylabel('RDOC')
zlabel('POWER')
title('POWER CONSUMPTION at Feed= 750mm/min')
zlim([0 4])
colormap jet,shading interp
colorbar

subplot(2,2,4)
contourf(Ap,Ae,P4,10)
xlabel('ADOC')
ylabel('RDOC')
zlabel('POWER')
title('POWER CONSUMPTION at Feed= 1000 mm/min')
zlim([0 4])
colormap jet,shading interp
colorbar





