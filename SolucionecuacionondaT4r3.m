clear all
 a=0;b=1; %espacio
 h= 0.01;%En x--------Paso espacial=h
 x=a:h:b;
 t=0:0.1:1;
 [Mx,Mt]=meshgrid(x,t);
 u0=zeros(size(x)); %primera función valor inicial
 for i=1:length(x)
     if x(i)<1/2 
      u0(i)=(-0.2*x(i))/1;
     else 
      u0(i)= -0.2 + 0.2*x(i)/1;
     end
 end
u0t=0; %segunda función valor inicial
Q=input('Introduzca el número de autofunciones a tratar: ');
U=0;
for j=1:Q
    
    p=sin((j*pi/1)*x);
    aj=trapz(x,u0.*p)/trapz(x,p.*p);
    bj=1/(j*pi)*trapz(x,u0t.*p)/trapz(x,p.*p);
    U=U+(aj.*cos(j*pi*Mt)).*sin(j*pi*Mx/1);
    
end
mesh(Mx,Mt,U)

xlabel('Longitud (m)'); ylabel('Tiempo (s)'); zlabel('Posición (x)');
%Cadena de texto con las autofunciones tomadas, para el título de la gráfica.
 
title('Grafico solucion y(x,t)');