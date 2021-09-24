%%Grafico solucion Ecuacion de onda y(h,t) x cte
clc
clear
close all

syms n t

%%Definicion de variables
T = 2*pi;
L = 1;
bn = ((-4*L*(-1)^(n+1))/(5*(pi^2)*(n^2)))*cos(n*pi*sqrt(10)*t/L);
an = ((-2*sqrt(2)*L^2*(-1)^(n+1))/(5*pi^3*n^3))*sin(n*pi*sqrt(10)*t/L);
m = 1;
Arm = 8; %%Variable de cuantas sumas quieres hacer
x = 1/2;
%%Calculo sumatoria

for n=1:Arm
     f(n,:)= sum(((-4*L*(-1)^((n-1)/2))/(5*(pi^2)*(n^2)))*cos(n*pi*sqrt(10)*t/L)*sin(n*pi*x/L));
end

hold on %%Graficos

t=linspace(0,5*T,1000);

f=subs(f,'t',t);
f(n+1,:)=zeros(1,1000);
plot(t,sum(f),'Linewidth',1,'color','b'); grid on

xlim([0 ,1]) 
ylim([-0.5 ,0.5])
xlabel('\bf tiempo'); ylabel('\bf y(x=L/2,t)');
title('\bf Grafico de y(h,t)');