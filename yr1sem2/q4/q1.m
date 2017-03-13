clear all;

%Q1
a=0.5;
b=0.25;
dx=0.00000001;
f=0;

for x=b:dx:a 
    f=f+pi*cos(pi*x)*dx;
end

fprintf('answer using the box counting is %8e\n',f);
  
a2=0.5;
b2=0.25;
f2=sin(pi*a2)-sin(pi*b2);  

fprintf('answer using the exact mathod is %8e\n',f2);

fprintf('error is %8e',abs(f2-f));

a=0.5;
b=0.25;
f3=0;
for dxx=0.000000001:0.000000001:0.00000002;
    for xx=b:dxx:a 
        f3=f3+pi*cos(pi*xx)*dxx;
    end
    
    f4=sin(pi*a)-sin(pi*b);
    loglog(dxx,abs(f4-f3),'.');
    hold on;
end
