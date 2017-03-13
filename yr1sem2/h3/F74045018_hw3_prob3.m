%apply the formula proven by thr previous subquestion
%(b)
clear all;
L=2*10^-3;
R=8;
C=5*10^-6;
I(1)=0;
DI(1)=0;
dt=0.00001;
Vs(1)=0;

for t=1:1:1000   
    Vs1(t)=(cos(6000.*(t.*dt+dt))-cos(6000.*t.*dt))./dt;
    
    DI(t+1)=DI(t)+((Vs1(t)-R.*DI(t)-I(t)./C)./L).*dt;
    I(t+1)=I(t)+DI(t+1)*dt;

    Vr(t+1)=R.*I(t+1);
    
    Vs(t+1)=cos(6000.*t*dt);
end

tt=0:dt:0.01;
figure(1);
plot(tt,Vs,tt,Vr);
title('(b) Vs(t)=cos(6000t)');
hold on;

%(c)
clear all;
L=2*10^-3;
R=8;
C=5*10^-6;
I(1)=0;
DI(1)=0;
dt=0.00001;
Vs(1)=0;

for t=1:1:1000   
    Vs1(t)=(cos(10000.*(t.*dt+dt))-cos(10000.*t.*dt))./dt;
    
    DI(t+1)=DI(t)+((Vs1(t)-R.*DI(t)-I(t)./C)./L).*dt;
    I(t+1)=I(t)+DI(t+1)*dt;

    Vr(t+1)=R.*I(t+1);
    
    Vs(t+1)=cos(10000.*t*dt);
end

tt=0:dt:0.01;
figure(2);
plot(tt,Vs,tt,Vr);
title('(c) Vs(t)=cos(10000t)');
hold on;

%(d)
clear all;
L=2*10^-3;
R=8;
C=5*10^-6;
I(1)=0;
DI(1)=0;
dt=0.00001;
Vs(1)=0;

for t=1:1:1000   
    Vs1(t)=(cos(20000.*(t.*dt+dt))-cos(20000.*t.*dt))./dt;
    
    DI(t+1)=DI(t)+((Vs1(t)-R.*DI(t)-I(t)./C)./L).*dt;
    I(t+1)=I(t)+DI(t+1)*dt;

    Vr(t+1)=R.*I(t+1);
    
    Vs(t+1)=cos(20000.*t*dt);
end

tt=0:dt:0.01;
figure(3);
plot(tt,Vs,tt,Vr);
title('(d) Vs(t)=cos(20000t)');
hold on;