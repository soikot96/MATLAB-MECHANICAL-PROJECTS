clc
clear all
close all

ae = [0.5:0.045:5];
d = 10;
rpm = 1500;
fc = 2000; 

tea = 2.* asind(sqrt(ae/10))
figure(1)
plot(ae, tea)
ylabel('ENGAGEMENT ANGLE IN DEGREES')
xlabel('RADIAL DEPTH OF CUT IN mm')

sd = (d./2).* rpm .* 2 .* (tea.*(pi./180));
figure (2)
plot(ae, sd)
ylabel('SURFACE DISTANCE IN mm')
xlabel('RADIAL DEPTH OF CUT IN mm')

work = fc .* (sd./1000);
figure (3)
plot(ae, work)
ylabel('WORK IN JOULES')
xlabel('RADIAL DEPTH OF CUT IN mm')

rpm2 = ((2.*0.785)./(tea.*(pi./180)));
figure(4)
plot(ae,rpm2)
grid on
ylabel('RPM correction factor')
xlabel('RADIAL DEPTH OF CUT IN mm')



