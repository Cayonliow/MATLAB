
k=1;
DIS(1)=-0.5;
SPEED(1)=0;
m=1;
dt=0.01;
dd=-k/m*dt;
 
for i=2:1000
    
    SPEED(i)=SPEED(i-1)+dd*DIS(i-1);  
    DIS(i)=DIS(i-1)+dt*SPEED(i-1);
    

end

t=dt:dt:10;
subplot(2,1,1);
plot(t,DIS);    
    
t=dt:dt:10;
subplot(2,1,2);
plot(t,DIS);
    
fprintf('y(4) = %.8f\n',DIS(400));
fprintf('y''(4) = %.8f\n',DIS(400));