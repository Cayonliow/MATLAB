V=1;
y1(1)=1.5;
yDiff1(1)=20;
dt=0.01;
dV=-9.8 ;

for i=2:400
    
    yDiff1(i)=yDiff1(i-1)+dV*dt;
    y1(i)=y1(i-1)+yDiff1(i)*dt;  

end

t=dt:dt:4;
subplot(2,1,1);
plot(t,y1);    
    
t=dt:dt:4;
subplot(2,1,2);
plot(t,yDiff1);
    
fprintf('y(4) = %.8f\n',y1(400));
fprintf('y''(4) = %.8f\n',yDiff1(400));