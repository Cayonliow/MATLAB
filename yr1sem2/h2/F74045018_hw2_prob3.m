%Q3
x=0;
y=0;
z=0;
f=(x.^2)/4+(y.^2)/1+(z.^2)/9;
count=0;
%Monte Carlo Integration
for i=1:1000000
    
    %the range of the random number is set between 
    x=(4*rand)-2;   %-2 to 2
    y=(2*rand)-1;   %-1 to 1
    z=(6*rand)-3;   %-3 to 3
    
    if (x.^2)/4+(y^2)/1+(z.^2)/9<=1
        count=count+1;
    end

end

fprintf('A total of 1000000 random points are used and the volume of the ellipsoid is %8f.\n',2*6*4*(count/1000000));