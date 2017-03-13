%bisection method
function ddd=L2(a,b)
%a=-10;
%b=10;
i=2;
c(1)=0;
count=0;
ddd=0;
Ms=1.98892*(10^30);
Me=5.97219*(10^24);


while (((Ms*(1-2*a+(a^2)-(a^3)+2*(a^4)-(a^5)))/(Me*(a^2)))+1)*(((Ms*(1-2*b+(b^2)-(b^3)+2*(b^4)-(b^5)))/(Me*(b^2)))+1)<0 %f(a)*f(b)<0 by theorem, same method is applied to the question below
   
    count=count+1;
    %fprintf('count=%d',count);
   if count>100000
       fprintf('no solution'); 
       break;
   end
   
   c(i)=(a+b)/2;
   
   if ((c(i)-c(i-1)).^2)<10.^-32
      ddd=c(i);
       break;
   end
   
   if (((Ms*(1-2*c(i)+(c(i)^2)-(c(i)^3)+2*(c(i)^4)-(c(i)^5)))/(Me*(c(i)^2)))+1)*(((Ms*(1-2*b+(b^2)-(b^3)+2*(b^4)-(b^5)))/(Me*(b^2)))+1)<0
       a=c(i);
   end
   
   if (((Ms*(1-2*a+(a^2)-(a^3)+2*(a^4)-(a^5)))/(Me*(a^2)))+1)*(((Ms*(1-2*c(i)+(c(i)^2)-(c(i)^3)+2*(c(i)^4)-(c(i)^5)))/(Me*(c(i)^2)))+1)<0
        b=c(i);
   end
i=i+1;
end

return 