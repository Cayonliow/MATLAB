clear all;
m=1.2*10^3;%kg
k=58*10^3;%N/m
Dc=4*10^3;%kg/s

displacement(1)=-0.1;
velocity(1)=0;
dt=0.001;

%Euler's method
for t=1:1:5000
    
   velocity(t+1)=velocity(t)+((-Dc./m).*velocity(t)-k./m.*displacement(t)).*dt;
   displacement(t+1)=displacement(t)+velocity(t+1).*dt;
   
end

%tt is used to represent x-axis
%t is only used to put the array
tt=0:dt:5;
plot(tt,displacement);
hold on;