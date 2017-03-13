hold on;

for i=-5:5
    for j=-5:5
        %define scalar and vector
        vecR=sqrt(i.^2+j.^2);
        distR=i.^2+j.^2;
        %length of the electric field 
        x=(0-i)/vecR/distR;
        y=(0-j)/vecR/distR;
       %update
        x=i+x;
        y=j+y;
        a(1)=i;
        a(2)=j;
        b(1)=x;
        b(2)=y;
        plot([a(1),b(1)],[a(2),b(2)]);
        PlotArrow(a,b);
        
    end
end
plot(0,0);
grid on;
axis([-5,5,-5,5]);