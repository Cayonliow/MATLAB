a=1000;%gravitational acceleration in cm
%The initial positions of 
Sx1=100;%insect
Sy1=100;
Sx2=0;%droplet
Sy2=0;
Vx1=0;%speed of insect in x-axis,fix
Vy1=0;%speed of insect in y-axis,variable
Vx2=500*sqrt(2);%speed of droplet in x-axis,fix
Vy2=500*sqrt(2);%speed of roplet in y-axis, variable
dt= 0.001; %rate of change of time
min=sqrt(((Sx1-Sx2)^2)+((Sy1-Sy2)^2)); %initially set the mininum distance of they meet
for t=0:dt:0.2;
   %change the speed in every 'dt's
    Vy1= Vy1-a*dt;
    Vy2= Vy2-a*dt;
    %as the speed is changed,the positions is changed correspondingly
    Sy1= Sy1+Vy1*dt;
    Sy2= Sy2+Vy2*dt;
    %Sx1 will not change because of Vx1=0
    Sx2= Sx2+Vx2*dt;%Sx2 will change constantly
    axis([0, 120, 0, 120]);
    plot(Sx1,Sy1,'k:*'); 
    plot(Sx2,Sy2,'b:diamond');
    hold on

    dist=sqrt(((Sx1-Sx2)^2)+((Sy1-Sy2)^2));
    if dist<min %to find the minimum distance of two points
        min=dist;
        fprintf('The minimum distance of they meet is %fcm\n.',min);
        fprintf('The time of they meet is %fth s\n.',t)
    end

    if Sy2>Sy1 %since the droplet will nor over the insect as it hit the insect
        break;
    end
end