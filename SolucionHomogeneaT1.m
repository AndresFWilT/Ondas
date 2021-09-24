clc
clear
close all

t = 0:pi/100:5*pi;
y1 = ((12+5*sqrt(2))/(4))*cos(t) + 4*cos(t) + ((12-5*sqrt(2))/(4))*cos(t);
y2 = ((12+5*sqrt(2))/(4))*sqrt(2)*cos(t) - ((12-5*sqrt(2))/(4))*sqrt(2)*cos(t);
y3 = ((12+5*sqrt(2))/(4))*cos(t) - 4*cos(t);

hold on

plot(t,y1,'Linewidth',2,'color','R'); grid on

plot(t,y2,'Linewidth',2,'color','B'); grid on

plot(t,y3,'Linewidth',2,'color','g'); grid on


legend('X(1)','X(2)','X(3)');
xlabel('\bf TIEMPO'); ylabel('\bf POSICION');
title('Grafico ecuaciones comportamiento de masas en resortes acoplados')