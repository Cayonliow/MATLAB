%the part of doing the Q1-1&Q1-2
%finding the square wave and triangle wave with sampling rate of 100Hz
x1=0;
yelement=1;
ytriangle=1;
for t=1:1:1000
   
    if sin(x1*pi*0.01)>=0    %the part of sine wave from 0 to pi
        ysquare=yelement*1;
        ytriangle=ytriangle-0.02;   %0.02 is the gradient
    end
    
    if sin(x1*pi*0.01)<0     %the part of sine wave from pi to 2pi
        ysquare=yelement*-1;
        ytriangle=ytriangle+0.02;
    end
    
   Xarray(t)=x1;
   Y1array(t)=ysquare;  %array to store the data of square wave
   Y2array(t)=ytriangle;    %array to store the data of triangle wave
   x1=x1+1;
end
subplot(2,3,1);
plot(Xarray,Y1array),grid on,hold on
title('??')
axis([0 1000 -2 2]);
subplot(2,3,2);
plot(Xarray,Y2array),grid on,hold on
title('???')
axis([0 1000 -2 2]);

%the part of doing the Q2&Q3
%finding the square wave from first to firth order 
 %the initial definition is used
 Po=1;
syms x2;
syms x3;
 syms n;   

    %the initial definition of fourier series of square wave
    a0=2./Po*int(1*cos(2*pi*0*x2./Po),x2,0,1./2)+2./Po*int(-1*cos(2*pi*0*x2./Po),1./2,1);
    a(n)=2./Po*int(1*cos(2*pi*n*x2./Po),x2,0,1./2)+2./Po*int(-1*cos(2*pi*n*x2./Po),1./2,1);
    b(n)=2./Po*int(1*sin(2*pi*n*x2./Po),x2,0,1./2)+2./Po*int(-1*sin(2*pi*n*x2./Po),1./2,1);
    x2=0:0.01:2; 

    %the initial definition of fourier series of triangle wave
    A0=2./Po*int((-4*x3+1).*cos(2*pi*0*x3./Po),x3,0,1./2)+2./Po.*int((4*x3-3)*cos(2*pi*0*x3./Po),1./2,1);
    A(n)=2./Po*int((-4*x3+1).*cos(2*pi*n*x3./Po),x3,0,1./2)+2./Po.*int((4*x3-3)*cos(2*pi*n*x3./Po),1./2,1);
    B(n)=2./Po*int((-4*x3+1).*sin(2*pi*n*x3./Po),x3,0,1./2)+2./Po.*int((4*x3-3)*sin(2*pi*n*x3./Po),1./2,1);
    x3=0:0.01:2; 
   
    Y2=0;
    Y3=0;
    for  n=1:1:5  	%from first to firth-order			
    if rem(n,2)==1  %since all even harmonies are 0, only the odd numbers will did the work
          Y2=Y2+a(n)*cos(2*pi*n*x2./Po)+b(n)*sin(2*pi*n*x2./Po);   
          Y3=Y3+A(n)*cos(2*pi*n*x3./Po)+B(n)*sin(2*pi*n*x3./Po);  
    end
    Ysquarewave2=a0./2+Y2;
    subplot(2,3,3);
    plot(x2,Ysquarewave2),grid on,hold on;
    title('??1?5?????????')
    subplot(2,3,4);
    Ysquarewave3=A0./2+Y3;
    plot(x3,Ysquarewave3),grid on,hold on;
    title('???1?5?????????')
    
    end

%the part of doing the Q4
%finding the Fourier expansion results by using the basic definition
Po=1;
syms x4;
syms m;
AF0=2./Po*int((-1).*cos(2*pi*0*x4./Po),x4,0,1./2)+2./Po.*int((4.*x4-3)*cos(2*pi*0*x4./Po),1./2,1);
AF(m)=2./Po*int((-1).*cos(2*pi*m*x4./Po),x4,0,1./2)+2./Po.*int((4.*x4-3)*cos(2*pi*m*x4./Po),1./2,1);
BF(m)=2./Po*int((-1).*sin(2*pi*m*x4./Po),x4,0,1./2)+2./Po.*int((4.*x4-3)*sin(2*pi*m*x4./Po),1./2,1);
x4=0:0.01:5;
Y4=0;
    for  m=1:1:5  	%from first to firth-order			 
          Y4=Y4+AF(m)*cos(2*pi*m*x4./Po)+BF(m)*sin(2*pi*m*x4./Po);  
    
    Yexpand=AF0./2+Y4;
    subplot(2,3,5);
    plot(x4,Yexpand),grid on,hold on;
    title('Q4: 1?5?????????')
    end