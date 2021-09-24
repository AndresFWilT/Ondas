%%Grafico solucion Ecuacion de onda y(x,t)
clc
clear
close all

syms n x t

%%Definicion de variables
T = 2*pi;
L = 1;
bn = ((-4*L*(-1)^(n+1))/(5*(pi^2)*(n^2)))*cos(n*pi*sqrt(10)*t/L);
an = ((-2*sqrt(2)*L^2*(-1)^(n+1))/(5*pi^3*n^3))*sin(n*pi*sqrt(10)*t/L);
m = 1;
Arm = 8; %%Variable de cuantas sumas quieres hacer

%%Calculo sumatoria

t = 0.0;

for n=1:Arm
     f1(n,:)= sum(((-4*L*(-1)^((n-1)/2))/(5*(pi^2)*(n^2)))*cos(n*pi*sqrt(10)*t/L)*sin(n*pi*x/L));
end

t = 0.1;

for n=1:Arm
     f2(n,:)= sum(((-4*L*(-1)^((n-1)/2))/(5*(pi^2)*(n^2)))*cos(n*pi*sqrt(10)*t/L)*sin(n*pi*x/L));
end
       
t = 0.15;

for n=1:Arm
     f3(n,:)= sum(((-4*L*(-1)^((n-1)/2))/(5*(pi^2)*(n^2)))*cos(n*pi*sqrt(10)*t/L)*sin(n*pi*x/L));    
end

t = 0.2;

for n=1:Arm
     f4(n,:)= sum(((-4*L*(-1)^((n-1)/2))/(5*(pi^2)*(n^2)))*cos(n*pi*sqrt(10)*t/L)*sin(n*pi*x/L));   
end
t = 0.3;

for n=1:Arm
     f5(n,:)= sum(((-4*L*(-1)^((n-1)/2))/(5*(pi^2)*(n^2)))*cos(n*pi*sqrt(10)*t/L)*sin(n*pi*x/L)); 
end

hold on %%Graficos

x=linspace(0,5*T,1000);

f1=subs(f1,'x',x);
f1(n+1,:)=zeros(1,1000);
plot(x,sum(f1),'Linewidth',1,'color','b'); grid on

f2=subs(f2,'x',x);
f2(n+1,:)=zeros(1,1000);
plot(x,sum(f2),'Linewidth',1); grid on

f3=subs(f3,'x',x);
f3(n+1,:)=zeros(1,1000);
plot(x,sum(f3),'Linewidth',1); grid on

f4=subs(f4,'x',x);
f4(n+1,:)=zeros(1,1000);
plot(x,sum(f4),'Linewidth',1); grid on

f5=subs(f5,'x',x);
f5(n+1,:)=zeros(1,1000);
plot(x,sum(f5),'Linewidth',1); grid on

xlim([0 ,1]) 
ylim([-0.5 ,0.5])
legend('t = 0','t = 0.1','t = 0.15','t= 0.2','t = 0.3');
xlabel('\bf Posicion'); ylabel('\bf y(x,t)');
title('\bf Grafico solucion y(x,t) para distintos valores de tiempo ');