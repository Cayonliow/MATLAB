k=1;    %spring constant
L0=10;  %original length of spring
m=0.1;  %mass of block
Vo=0;   %initial velocity of block
X=2;    %extension of spring 
Ep=0.5*k*X.^2;  %elastic potential energy   
Ek=0;   %kinetic energy
dt=0.002;   %the fixed time interval 
for t=0:dt:2;
    a=-k*X/m;
    Vo= Vo+a*dt;    %velocity changes in every 'dt's
    X= X+Vo*dt;     %displacement changes with corresponding to velocity
    L=L0+X;         %length changes with corresponding to displacement
    Ep=0.5*k*X.^2;  %elastic potential energy changes with corresponding to displacement 
    Ek=0.5*m*Vo.^2; %kinetic energy changes with corresponding to velocity
    Et=Ep+Ek;       %total energy is equal to the addition of elastic potential energy and kinetic energy
    
  subplot(2,2,1);   %draw the extension-time graph
  plot(t,X,'g:*');    
  xlabel('Time(s)');
  ylabel('Extension(m)');
  title('Extension-Time graph')
  hold on;
  grid on;
  
  
  subplot(2,2,2);   %draw the length-velocity graph
  plot(Vo,L,'k:diamond');
  xlabel('Velocity(m/s)');
  ylabel('Length(m)');
  title('Length-Velocity graph')
  hold on;
  grid on;
  
  subplot(2,2,3);   %draw the length-elastic potential energy graph
  plot(Ep,L,'r:X');
  xlabel('Elastic potential energy(J)');
  ylabel('Length(m)');
  title('Length-Elastic potential energy graph')
  hold on;
  grid on;
    
  subplot(2,2,4);   %draw the total energy-length graph
  plot(L,Et,'m:O');
  xlabel('Length(m)');
  ylabel('Total Energy(J)');
  title('Total energy-Length graph')
  axis([0,15,0,5]);
  hold on;
  grid on;
  
end;


   
