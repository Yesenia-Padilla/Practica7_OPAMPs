%-----Función ode45 que resuslve el sistema------%
[t,x]=ode45(@OPAMPs, [0 10], [0 0]);
%Grafica de voltaje
%FIGURA 1
figure(1)
plot(t,x(:,1),'c');% x y t son parametros que retorna la función que creamos
grid on
title("Voltaje de salida");
xlabel("Tiempo");
ylabel("Voltaje");
