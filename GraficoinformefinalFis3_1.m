clc
clear
close all

t = 0:pi/1000:5*pi;
y1 = 8.1359*cos(0.84*t)+ 1.8641*cos(0.1014*t);
f = (-17.29)*cos(((21)/(25))*t) + (-129.04)*cos(0.1014*t);


hold on

plot(t,y1,'Linewidth',2,'color','R'); grid on
plot(t,f,'Linewidth',2,'color','B'); grid on

legend('X(1)','X(2)');
xlabel('\bf TIEMPO'); ylabel('\bf POSICION');
title('Grafico ecuaciones comportamiento de masas en resortes acoplados')