%Función que resuelve nuestro sistema
function dx=OPAMPs(t,x)
%-----Definimos nuestro parametros------%
R1=5e6; %Resistencia 1 
R2=5e6; %Resistencia 2 
R3=5e6; %Resistencia 3 
C1=100e-9; %Capacitor 1 
C2=100e-9; %Capacitor 2 
vin=1; %Voltaje de entrada 
%------Creamos nuestra matriz de las variables de estado----%
dx=zeros(2,1);
%-----Representanción de estados-----%
dx(1)=x(2);
dx(2)=(1/(R1*R2*R3*C1*C2))*(R2*vin-R1*R3*C2*x(2));