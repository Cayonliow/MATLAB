a=10;
y=100;
Vy=0;
Tmax= sqrt((2*y)/a)
t=0:0.1:Tmax
x1=100-0*t
y1=100-0.5*a*t.^2
plot(x1,y1,'*')
axis([0, 110, 0, 110]);
grid on

