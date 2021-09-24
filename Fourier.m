%%Serie de Fourier
clc
clear
close all

syms n t

T = 2*pi;
Wf = 2*pi/T;
c0 = (exp(2*pi)-1)/((2*pi)*exp(pi));
an = (((-1)^n))/(pi*((n^2)+1))*((exp(pi))-exp(-pi));
bn = (((-1)^n)*n)/(pi*((n^2)+1))*((exp(-pi))-exp(pi));


Arm = 100;

for n=1:Arm
    f(n,:)= sum(((((-1)^n))/(pi*((n^2)+1))*((exp(pi))-exp(-pi)))*cos(n*Wf*t)+(((((-1)^n)*n)/(pi*((n^2)+1))*((exp(-pi))-exp(pi)))*sin(n*Wf*t)));
end

t=linspace(0,5*T,1000);
f=subs(f,'t',t);
f(n+1,:)=zeros(1,1000);
plot(t,c0+sum(f),'Linewidth',2); grid on
xlabel('\bf TIEMPO'); ylabel('\bf AMPLITUD');
title('\bf SERIES DE FOURIER de e^t');

