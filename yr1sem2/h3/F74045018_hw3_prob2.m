%(b)

R=10*10^3;
C=100*10^-6;
dt=0.0001;
dVc(1)=0;

%differentiation of Vc
for t=1:1:5000

    E(t)=5.*sin(20.*pi.*t*dt);
    dVc(t+1)=(E(t)-dVc(t))/(R*C)*dt+dVc(t);

end

tt=0:0.0001:0.5;
figure(1);
plot(tt,dVc);
hold on;


%(c)
clear all;
R=10*10^3;
C=100*10^-6;
dt=0.0001;
dVc(1)=0;
%E(1)=5;
E=5;
for t=1:1:5000
    
    %every 100times epilson will change according to to the graph given
    if rem(t,100)==0
    
        E=E*-1;
    end
    dVc(t+1)=(E-dVc(t))/(R*C)*dt+dVc(t);

    
end

tt=0:0.0001:0.5;
figure(2);
plot(tt,dVc);
hold on;


%(d)
clear all;

R=100;
C=10^-6;
dt=0.0001;
Vc(1)=0;
Vr(1)=0;
E(1)=0;
for t=1:1:5000
    
    %thr restriction of the graph //gradient
    if rem(t,400)>100 && rem(t,400)<300
        %xx=x-x1;<300
        xx=(-5000*dt);
        
    else
        xx=(5000*dt);
        
    end
    
    E(t+1)=E(t)+xx*((t)-(t-1))*dt;
    Vc(t+1)=Vc(t)+(E(t)-Vc(t))/(R*C)*dt;
    Vr(t+1)=E(t+1)-Vc(t+1);
    
    
    
end

tt=0:0.0001:0.5;
figure(3);
plot(tt,Vr);
hold on;
