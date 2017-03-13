%Q2
a=0;
b=2;
h=0.0000001;
f=0;
y=exp(-x.^2);

for x=a:h:b

    f=f+(exp(-x.^2)+exp(-(x+h).^2))*h/2;
    
end

fprintf('answer using Trapezoid is %8e',f); 

