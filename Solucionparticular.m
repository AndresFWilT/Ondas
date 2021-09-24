%%Grafico solucion particular
clc
clear
close all

syms n t

%%Definicion de variables
T = 2*pi;
Wf = 2*pi/T;
c0 = (exp(2*pi)-1)/((2*pi)*exp(pi));
an = (((-1)^n))/(pi*((n^2)+1))*((exp(pi))-exp(-pi));
bn = (((-1)^n)*n)/(pi*((n^2)+1))*((exp(-pi))-exp(pi));
m = 1;
Lambda = 1/100;
Beta = atan((Lambda*n)/(-n^2));
Alpha = atan((-(exp(2*pi)+1)*n)/(exp(2*pi)-1));
Cn = sqrt(((-exp(2*pi)*((-1)^n)-((-1)^n)*n)^2+(exp(2*pi)*((-1)^n)-((-1)^n))^2)/((pi^2)*exp(2*pi)*((n^2)+1)^2));
Amplitud = (sqrt(((-exp(2*pi)*((-1)^n)-((-1)^n)*n)^2+(exp(2*pi)*((-1)^n)-((-1)^n))^2)/((pi^2)*exp(2*pi)*((n^2)+1)^2)))/(sqrt((1-(n^2))^2+((n^2)*(Lambda)^2)));

Arm = 50;

%%Calculo sum



for n=1:Arm
    f(n,:)= sum(((sqrt(((-exp(2*pi)*((-1)^n)-((-1)^n)*n)^2+(exp(2*pi)*((-1)^n)-((-1)^n))^2)/((pi^2)*exp(2*pi)*((n^2)+1)^2)))/(sqrt((1-(n^2))^2+((n^2)*(Lambda)^2))))*cos(n*t-(atan((-(exp(2*pi)+1)*n)/(exp(2*pi)-1)))-(atan((Lambda*n)/(-n^2)))));
end

for n=2:Arm
    f2(n,:)= sum((-1)*((sqrt(((-exp(2*pi)*((-1)^n)-((-1)^n)*n)^2+(exp(2*pi)*((-1)^n)-((-1)^n))^2)/((pi^2)*exp(2*pi)*((n^2)+1)^2)))/(sqrt((1-(n^2))^2+((n^2)*(Lambda)^2))))*n*sin(n*t-(atan((-(exp(2*pi)+1)*n)/(exp(2*pi)-1)))-(atan((Lambda*n)/(-n^2)))));
end

for n=3:Arm
    f3(n,:)= sum((-1)*((sqrt(((-exp(2*pi)*((-1)^n)-((-1)^n)*n)^2+(exp(2*pi)*((-1)^n)-((-1)^n))^2)/((pi^2)*exp(2*pi)*((n^2)+1)^2)))/(sqrt((1-(n^2))^2+((n^2)*(Lambda)^2))))*(n^2)*cos(n*t-(atan((-(exp(2*pi)+1)*n)/(exp(2*pi)-1)))-(atan((Lambda*n)/(-n^2)))));
end

for n=1:Arm
    fh(n,:)= sum((sqrt(((-exp(2*pi)*((-1)^n)-((-1)^n)*n)^2+(exp(2*pi)*((-1)^n)-((-1)^n))^2)/((pi^2)*exp(2*pi)*((n^2)+1)^2)))*cos(n*t-atan((-(exp(2*pi)+1)*n)/(exp(2*pi)-1))));
end

hold on

t=linspace(0,5*T,1000);

f=subs(f,'t',t);
f(n+1,:)=zeros(1,1000);
plot(t,c0+sum(f),'Linewidth',2,'color','b'); grid on

f2=subs(f2,'t',t);
f2(n+1,:)=zeros(1,1000);
plot(t,sum(f2),'Linewidth',2,'color','r'); grid on

f3=subs(f3,'t',t);
f3(n+1,:)=zeros(1,1000);
plot(t,sum(f3),'Linewidth',2,'color',[0.98, 0.64, 0.1]); grid on

fh=subs(fh,'t',t);
fh(n+1,:)=zeros(1,1000);
plot(t,c0+sum(fh),'Linewidth',2,'color','g'); grid on

plot (t,sum(f)+sum(fh)+2*c0,'Linewidth',2,'color','m'); grid on


legend('Posicion (Xp)','Velocidad (X´p)','Aceleracion (X´´p)','Solucion Homogenea','Solucion total');
xlabel('\bf TIEMPO'); ylabel('\bf ');
title('\bf Grafico solucion particular, homogenea y total serie de FOURIER de e^t + ');