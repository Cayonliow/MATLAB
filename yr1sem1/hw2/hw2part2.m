%The sub-question of giving the information of friction is 0.1N
k1=1;    %spring constant
L01=10;  %original length of spring
m1=0.1;  %mass of block
Vo1=0;   %initial velocity of block
X1=2;    %extension of spring 
Ep1=0.5*k1*X1.^2;  %elastic potential energy   
Ek1=0;   %kinetic energy
dt1=0.002;   %the fixed time interval 
Ff1=0.1; %the friction given by the question
af1=Ff1/m1;%the acceleration caused by friction 

for t1=0:dt1:10;
    a1=-k1*X1/m1;   
    if Vo1<0     %when the block moves to left, there are decceleration
        af1=-Ff1/m1;
    end
    
    if Vo1>0     %when the block moves to right, there are acceleration
        af1=Ff1/m1;
    end
    Vo1= Vo1+(a1-af1)*dt1%velocity changes in every 'dt's with respect to 2acceleration(Elastic&Friction)
    X1= X1+Vo1*dt1;     %displacement changes with corresponding to velocity
    L1=L01+X1;         %length changes with corresponding to displacement
    Ep1=0.5*k1*X1.^2;  %elastic potential energy changes with corresponding to displacement 
    Ek1=0.5*m1*Vo1.^2; %kinetic energy changes with corresponding to velocity
    Et1=Ep1+Ek1;       %total energy is equal to the addition of elastic potential energy and kinetic energy
  
  subplot(4,2,1);   %draw the extension-time graph
  plot(t1,X1,'g:*');    
  xlabel('Time(s)');
  ylabel('Extension(m)');
  title('Extension-Time graph(f=0.1N)')
  hold on;
  grid on;
  
  
  subplot(4,2,2);   %draw the length-velocity graph
  plot(Vo1,L1,'k:diamond');
  xlabel('Velocity(m/s)');
  ylabel('Length(m)');
  title('Length-Velocity graph(f=0.1N)')
  hold on;
  grid on;
  
  subplot(4,2,3);   %draw the length-elastic potential energy graph
  plot(Ep1,L1,'r:X');
  xlabel('Elastic potential energy(J)');
  ylabel('Length(m)');
  title('Length-Elastic potential energy graph(f=0.1N)')
  hold on;
  grid on;
    
  subplot(4,2,4);   %draw the total energy-length graph
  plot(L1,Et1,'m:O');
  xlabel('Length(m)');
  ylabel('Total Energy(J)');
  title('Total energy-Length graph(f=0.1N)')
  axis([0,15,0,5]);
  hold on;
  grid on;
end;

%The sub-question of giving the information of friction is 0.5N
k2=1;    %spring constant
L02=10;  %original length of spring
m2=0.1;  %mass of block
Vo2=0;   %initial velocity of block
X2=2;    %extension of spring 
Ep2=0.5*k2*X2.^2;  %elastic potential energy   
Ek2=0;   %kinetic energy
dt2=0.002;   %the fixed time interval 
Ff2=0.5;    %the friction given by the question
af2=Ff1/m2;   %the acceleration caused by friction 

for t2=0:dt2:10;
    a2=-k2*X2/m2;   
    if Vo2<0     %when the block moves to left, there are decceleration
        af2=-Ff2/m2;
    end
    
    if Vo2>0     %when the block moves to right, there are acceleration
        af2=Ff2/m2;
    end
    Vo2= Vo2+(a2-af2)*dt2%velocity changes in every 'dt's with respect to 2acceleration(Elastic&Friction)
    X2= X2+Vo2*dt2;     %displacement changes with corresponding to velocity
    L2=L02+X2;         %length changes with corresponding to displacement
    Ep2=0.5*k2*X2.^2;  %elastic potential energy changes with corresponding to displacement 
    Ek2=0.5*m2*Vo2.^2; %kinetic energy changes with corresponding to velocity
    Et2=Ep2+Ek2;       %total energy is equal to the addition of elastic potential energy and kinetic energy
  
  subplot(4,2,5);   %draw the extension-time graph
  plot(t2,X2,'g:*');    
  xlabel('Time(s)');
  ylabel('Extension(m)');
  title('Extension-Time graph(f=0.5N)')
  hold on;
  grid on;
  
  
  subplot(4,2,6);   %draw the length-velocity graph
  plot(Vo2,L2,'k:diamond');
  xlabel('Velocity(m/s)');
  ylabel('Length(m)');
  title('Length-Velocity graph(f=0.5N)')
  hold on;
  grid on;
  
  subplot(4,2,7);   %draw the length-elastic potential energy graph
  plot(Ep2,L2,'r:X');
  xlabel('Elastic potential energy(J)');
  ylabel('Length(m)');
  title('Length-Elastic potential energy graph(f=0.5N)')
  hold on;
  grid on;
    
  subplot(4,2,8);   %draw the total energy-length graph
  plot(L2,Et2,'m:O');
  xlabel('Length(m)');
  ylabel('Total Energy(J)');
  title('Total energy-Length graph(f=0.5N)')
  axis([0,15,0,5]);
  hold on;
  grid on;
end;
