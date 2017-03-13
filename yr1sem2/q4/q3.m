f=((x.^2)/16)+((y.^2)/4);
count=0;

for i=1:1000000
    
    x=(8*rand)-4;
    y=(4*rand)-2;
    
    if (((x.^2)/16)+((y.^2)/4)<=1)
        count=count+1;
    end

end

fprintf('%8e',8*4*(count/1000000));