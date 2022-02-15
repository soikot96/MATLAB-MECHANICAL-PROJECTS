clc
clear all

A = [1:-0.1:0];
B = [0:0.1:1];
L = 1
EI = 1e6;
w = 5000;
def = zeros(1,11)

for i = 1:11
d = ((w./B(i))./(24.*EI)).*((3.*(A(i)+B(i)).^4) - (3.*A(i).^4) - (4.*(A(i).^3).*B(i)));
a = A(i)
b = B(i)
d
def(1,i) = d;
end

plot3(A,B,def,'LineWidth',2,'--r')
xlabel('Length of unloaded part in m (a) ')
ylabel('Length of loaded part in m (b)')
zlabel('DEFLECTION in m')
grid on