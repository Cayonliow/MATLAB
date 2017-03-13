%(a)
m=5;
%i discover that the interval of t will cause different graph to be
%represented so i choose h= 0.1 to draw a clear and simple graph without
%missing any infoemation.
for t=0:0.1:50
    v=-20*exp(-0.01*t.^2)*sin(20*pi*t+2*pi/5);
    subplot(2,1,1);
    xlabel('(a)');
    plot(t,v,'.'); 
    hold on;

end

%(b)
h=0.1;
%there is a same situation with (a), different result will be shown with
%setting different and smaller h
for t=0:0.1:50
    
    a=((-20*exp(-0.01*(t+h).^2)*sin(20*pi*(t+h)+2*pi/5))-(-20*exp(-0.01*t.^2)*sin(20*pi*t+2*pi/5)))/h;
    F=m*a;
    subplot(2,1,2);
    xlabel('(b)');
    plot(t,F,'.');
    hold on;

end

%(c)
a=0;
h=0.000001;
m=5;
t=8;
%Differentiation is done by applying the besic definition of differentiation
%h is chosen by trial and error 
a=((-20*exp(-0.01*(t+h).^2)*sin(20*pi*(t+h)+2*pi/5))-(-20*exp(-0.01*t.^2)*sin(20*pi*t+2*pi/5)))/h;
   
F=m*a;
   fprintf('(c) F(8)=%.6fN\n',F);
   
%(d)
a=10;
b=0;
dx=0.0000001;
f=0;
%integrate the equation by accumulating
for x=b:dx:a
    f=f+dx*-20*exp(-0.01*x.^2)*sin(20*pi*x+2*pi/5);
end

fprintf('(d) x(10)=%.8e m\n',f);

%(e)
a=10;
b=0;
dx=0.0000001;
f2=0;
%Modulus is used to make all the result positive and sum it up 
for x=b:dx:a
    f2=f2+0.5*abs((dx*-20*exp(-0.01*x.^2)*sin(20*pi*x+2*pi/5))+(dx*-20*exp(-0.01*(x+dx).^2)*sin(20*pi*(x+dx)+2*pi/5)));
end

fprintf('(e) The total travel length from t=0 to 10 is %.8e m\n',f2);
