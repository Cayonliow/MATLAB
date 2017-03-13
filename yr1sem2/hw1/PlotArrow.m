function PlotArrow(a,b)
%vector
vec=[b(1)-a(1);b(2)-a(2)];
angle=pi/15;
%rotation determinant
rot=[[cos(angle) -sin(angle)];
     [sin(angle) cos(angle)]];

 rot90=[[cos(-angle) -sin(-angle)];
        [sin(-angle) cos(-angle)]];
    
%make the line short and rotate
R1=rot*vec/5;
R2=rot90*vec/5;


for i=1:2
turnL(i)=R1(i)+a(i);
turnR(i)=R2(i)+a(i);
end

plot([turnL(1) a(1)],[turnL(2) a(2)]);
plot([turnR(1) a(1)],[turnR(2) a(2)]);