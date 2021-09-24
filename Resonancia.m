%%Grafico Resonancia
clc
clear
close all

syms n t

T = 2*pi;
Wf = 2*pi/T;
c0 = (exp(2*pi)-1)/((2*pi)*exp(pi));
an = (((-1)^n))/(pi*((n^2)+1))*((exp(pi))-exp(-pi));
bn = (((-1)^n)*n)/(pi*((n^2)+1))*((exp(-pi))-exp(pi));
m = 1;
Lambda = 1/50;
Beta = atan((Lambda*n)/(-n^2));
Alpha = atan((-(exp(2*pi)+1)*n)/(exp(2*pi)-1));
Cn = sqrt(((-exp(2*pi)*((-1)^n)-((-1)^n)*n)^2+(exp(2*pi)*((-1)^n)-((-1)^n))^2)/((pi^2)*exp(2*pi)*((n^2)+1)^2));
Amplitud = (sqrt(((-exp(2*pi)*((-1)^n)-((-1)^n)*n)^2+(exp(2*pi)*((-1)^n)-((-1)^n))^2)/((pi^2)*exp(2*pi)*((n^2)+1)^2)))/(sqrt((1-(n^2))^2+((n^2)*(Lambda)^2)));

Arm = 1;

for n=1:Arm
    f(n,:)= sum((sqrt(((-exp(2*pi)*((-1)^n)-((-1)^n)*n)^2+(exp(2*pi)*((-1)^n)-((-1)^n))^2)/((pi^2)*exp(2*pi)*((n^2)+1)^2)))/(sqrt((1-(t^2)*(n^2))^2+((n^2)*(t^2)*((Lambda)^2)))));
end

Arm = 2;

for n=1:Arm
    f2(n,:)= sum((sqrt(((-exp(2*pi)*((-1)^n)-((-1)^n)*n)^2+(exp(2*pi)*((-1)^n)-((-1)^n))^2)/((pi^2)*exp(2*pi)*((n^2)+1)^2)))/(sqrt((1-(t^2)*(n^2))^2+((n^2)*(t^2)*((Lambda)^2)))));
end

Arm = 3;

for n=1:Arm
    f3(n,:)= sum((sqrt(((-exp(2*pi)*((-1)^n)-((-1)^n)*n)^2+(exp(2*pi)*((-1)^n)-((-1)^n))^2)/((pi^2)*exp(2*pi)*((n^2)+1)^2)))/(sqrt((1-(t^2)*(n^2))^2+((n^2)*(t^2)*((Lambda)^2)))));
end

Arm = 4;

for n=1:Arm
    f4(n,:)= sum((sqrt(((-exp(2*pi)*((-1)^n)-((-1)^n)*n)^2+(exp(2*pi)*((-1)^n)-((-1)^n))^2)/((pi^2)*exp(2*pi)*((n^2)+1)^2)))/(sqrt((1-(t^2)*(n^2))^2+((n^2)*(t^2)*((Lambda)^2)))));
end

Arm = 5;

for n=1:Arm
    f5(n,:)= sum((sqrt(((-exp(2*pi)*((-1)^n)-((-1)^n)*n)^2+(exp(2*pi)*((-1)^n)-((-1)^n))^2)/((pi^2)*exp(2*pi)*((n^2)+1)^2)))/(sqrt((1-(t^2)*(n^2))^2+((n^2)*(t^2)*((Lambda)^2)))));
end

hold on

t=linspace(0,5*T,1000);

f=subs(f,'t',t);
f(n+1,:)=zeros(1,1000);
plot(t,sum(f),'Linewidth',1,'color','b'); grid on

f2=subs(f2,'t',t);
f2(n+1,:)=zeros(1,1000);
plot(t,sum(f2),'Linewidth',1,'color','r'); grid on

f3=subs(f3,'t',t);
f3(n+1,:)=zeros(1,1000);
plot(t,sum(f3),'Linewidth',1,'color','y'); grid on

f4=subs(f4,'t',t);
f4(n+1,:)=zeros(1,1000);
plot(t,sum(f4),'Linewidth',1,'color','g'); grid on

f5=subs(f5,'t',t);
f5(n+1,:)=zeros(1,1000);
plot(t,sum(f5),'Linewidth',1,'color','m'); grid on

legend('n=1','n=2','n=3','n=4','n=5')


xlabel('\bf TIEMPO'); ylabel('\bf Posicion');
title('\bf Grafico resonancia serie de fourier e^t');


