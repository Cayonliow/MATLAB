k=8.987*10^9;
Q=1;
%length of edges is 1m

%(1)
rad=0.5;
z=0.5;  
face=0;


for x=-rad:0.0001:rad
    for y=-rad:0.0001:rad
    
        R=sqrt((x^2)+(y^2)+(z^2));
        cos=z/R;
        face=face+k*Q/(R^2)*(0.0001*0.0001*cos);
    end
end

fprintf('(1) The total flux is %.6e(Volt.m)\n',face*6);


%(2)
rad=1;
z=1;
face=0;
%length of edges is 2m
for x=-rad:0.0001:rad
    for y=-rad:0.0001:rad
    
        R=sqrt((x^2)+(y^2)+(z^2));
        cos=z/R;
        face=face+k*Q/(R^2)*(0.0001*0.0001*cos);
    end
end

fprintf('(2) The total flux is %.6e(Volt.m)\n',face*6);


%(3)
rad=1;
z=1;
face=0;
%the center of the cube is(0.4, 0.4, 0.4)
for x=-rad:0.0001:rad
    for y=-rad:0.0001:rad
    
        R=sqrt(((x-0.4)^2)+(((y-0.4)^2)+((z-0.4)^2)));
        cos=(z-0.4)/R;
        face=face+k*Q/(R^2)*(0.0001*0.0001*cos);
    end
end

for x=-rad:0.0001:rad
    for y=-rad:0.0001:rad
    
        R=sqrt(((x+0.4)^2)+(((y+0.4)^2)+((z+0.4)^2)));
        cos=(z+0.4)/R;
        face=face+k*Q/(R^2)*(0.0001*0.0001*cos);
    end
end


fprintf('(3) The total flux is %.6e(Volt.m)\n',face*3);


