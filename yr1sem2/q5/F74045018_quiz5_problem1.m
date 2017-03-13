%Q1
%(a)
clear all;
R=47*10^3;
C=20*10^-6;
V=1;
Vc(1)=1;
dt=0.001;
    
for t=1:1000
    
    Vc(t+1)=Vc(t)+Vc(t)/(-R*C)*dt;    

end

i=0.0:0.001:1.0;
plot(i,Vc);

%(b)
clear all;
R=47*10^3;
C=20*10^-6;
V=1;
Vc(1)=1;
dt=0.001;
%dt(4)={0.1,0.01,0.001,0.0001};  

for t=1:0.31/dt
    
    Vc(t+1)=Vc(t)+Vc(t)/(-R*C)*dt;    
%fprintf('t=%f',t);
end

fprintf('the capacitor’s voltage at t = 0.3 sec is %f\n',Vc(0.3/dt));


%(c)
clear all;
R=47*10^3;
C=20*10^-6;
V=1;
Vc(1)=1;
dt=0.001;
    
for t=1:10000
    
    if Vc(t)-0.1<=10^-6
        fprintf('time=%f\n',t*10^-3);
        break;
    end
    Vc(t+1)=Vc(t)+Vc(t)/(-R*C)*dt;    

end

