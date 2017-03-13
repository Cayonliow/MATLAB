%bisection method

%Q3a
a=0;
b=3;
i=2;
c(1)=0;
count=0;
ddd=0;


while ((4*a.^2-exp(a)-exp(-a))*(4*b.^2-exp(b)-exp(-b)))<0 %f(a)*f(b)<0 by theorem, same method is applied to the question below
   
    count=count+1;
    
   if count>100000
       fprintf('no solution'); 
       break;
   end
   
   c(i)=(a+b)/2;
   
   if ((c(i)-c(i-1)).^2)<10.^-32
      ddd=c(i);
       fprintf('The smallest positive root of Prob.3(a)is %.8f\n',ddd);
       break;
   end
   
   if (4*c(i).^2-exp(c(i))-exp(-c(i)))<0 
       a=c(i);
   end
   
   if (4*c(i).^2-exp(c(i))-exp(-c(i)))>0
        b=c(i);
   end
i=i+1;
end

a2=0;
b2=-3;
i2=2;
c2(1)=0;
count2=0;
ddd2=0;

while ((4*a2.^2-exp(a2)-exp(-a2))*((4*b2.^2-exp(b2)-exp(-b2))))<0
   
    count2=count2+1;
    
   if count2>100000
       fprintf('no solution'); 
       break;
   end
   
   c2(i2)=(a2+b2)/2;
   
   if ((c2(i2)-c2(i2-1)).^2)<10.^-32
      ddd2=c2(i2);
       fprintf('The largest negative root of Prob.3(a) is %.8f\n',ddd2);
       break;
   end
   
   if (4*c2(i2).^2-exp(c2(i2))-exp(-c2(i2)))<0 
       a2=c2(i2);
   end
   
   if (4*c2(i2).^2-exp(c2(i2))-exp(-c2(i2)))>0 
        b2=c2(i2);
   end
i2=i2+1;
end

%Q3b
a=-0.5;
b=0.5;
i=2;
c(1)=0;
count=0;
ddd=0;

while ((0.5+((0.25).*a)-(a.*sin(a))-((1/2).*cos(2*a)))*(0.5+((0.25).*b)-(b.*sin(b))-((1/2).*cos(2*b))))<0
   
    count=count+1;
    
   if count>100000
       fprintf('no solution'); 
       break;
   end
   
   c(i)=(a+b)/2;
   
   if ((c(i)-c(i-1)).^2)<10.^-32
      ddd=c(i);
       fprintf('The smallest positive root of Prob.3(b) is %.8f\n',ddd);
       break;
   end
   
   if (0.5+((0.25).*c(i))-(c(i).*sin(c(i)))-((1/2).*cos(2*c(i))))<0 
       a=c(i);
   end
   
   if (0.5+((0.25).*c(i))-(c(i).*sin(c(i)))-((1/2).*cos(2*c(i))))>0 
        b=c(i);
   end
i=i+1;


end

a2=2;
b2=1;
i2=2;
c2(1)=0;
count2=0;
ddd2=0;

while (0.5+((0.25).*a2)-(a2.*sin(a2))-((1/2).*cos(2*a2)))*(0.5+((0.25).*b2)-(b2.*sin(b2))-((1/2).*cos(2*b2)))<0
   
    count2=count2+1;
    
   if count2>100000
       fprintf('no solution'); 
       break;
   end
   
   c2(i2)=(a2+b2)/2;
   
   if ((c2(i2)-c2(i2-1)).^2)<10.^-32
      ddd2=c2(i2);
       fprintf('The largest negative root of Prob.3(b) is %.8f\n',ddd2);
       break;
   end
   
   if (0.5+((0.25).*c2(i2))-(c2(i2).*sin(c2(i2)))-((1/2).*cos(2*c2(i2))))<0  
       a2=c2(i2);
   end
   
   if (0.5+((0.25).*c2(i2))-(c2(i2).*sin(c2(i2)))-((1/2).*cos(2*c2(i2))))>0 
        b2=c2(i2);
   end
i2=i2+1;
end

%Q3c
a=1;
b=0.2;
i=2;
c(1)=0;
count=0;
ddd=0;

while (exp(3*a)-(27*a.^6)+(27*(a.^4)*exp(a))-(9*(a.^2)*exp(2*a)))*(exp(3*b)-(27*b.^6)+(27*(b.^4)*exp(b))-(9*(b.^2)*exp(2*b)))<0
   
    count=count+1;
    
   if count>100000
       fprintf('no solution'); 
       break;
   end
   
   c(i)=(a+b)/2;
   
   if ((c(i)-c(i-1)).^2)<10.^-32
      ddd=c(i);
       fprintf('The smallest positive root of Prob.3(c) is %.8f\n',ddd);
       break;
   end
   
   if (exp(3*c(i))-(27*c(i).^6)+(27*(c(i).^4)*exp(c(i)))-(9*(c(i).^2)*exp(2*c(i))))<0 
       a=c(i);
   end
   
   if (exp(3*c(i))-(27*c(i).^6)+(27*(c(i).^4)*exp(c(i)))-(9*(c(i).^2)*exp(2*c(i))))>0
        b=c(i);
   end
i=i+1;
end

a2=-0.5;
b2=0;
i2=2;
c2(1)=0;
count2=0;
ddd2=0;

while (exp(3*a2)-(27*a2.^6)+(27*(a2.^4)*exp(a2))-(9*(a2.^2)*exp(2*a2)))*(exp(3*b2)-(27*b2.^6)+(27*(b2.^4)*exp(b2))-(9*(b2.^2)*exp(2*b2)))<0
   
    count2=count2+1;
    
   if count2>100000
       fprintf('no solution'); 
       break;
   end
   
   c2(i2)=(a2+b2)/2;
   
   if ((c2(i2)-c2(i2-1)).^2)<10.^-32
      ddd2=c2(i2);
       fprintf('The largest negative root of Prob.3(c) is %.8f\n',ddd2);
       break;
   end
   
   if (exp(3*c2(i2))-(27*c2(i2).^6)+(27*(c2(i2).^4)*exp(c2(i2)))-(9*(c2(i2).^2)*exp(2*c2(i2))))<0 
       a2=c2(i2);
   end
   
   if (exp(3*c2(i2))-(27*c2(i2).^6)+(27*(c2(i2).^4)*exp(c2(i2)))-(9*(c2(i2).^2)*exp(2*c2(i2))))>0
        b2=c2(i2);
   end
i2=i2+1;
end
