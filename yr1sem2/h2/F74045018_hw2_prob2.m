%Q2
clear all;

a=4;
b=0;
dx=0.0000001;
f=0;

%Finite Riemman Sum
for x=b:dx:a
    f=f+dx*((1-(x.^2)).^0.5);
end

fprintf('(i)   %.8e\n',f);

a=pi;
b=0;
%dx=0.0000001;
dx=0.000000001;
f=0;
%Finite Riemman Sum
for x=b:dx:a
    f=f+(1/(1+2*sin(x)).^0.5)*dx;
end

fprintf('(ii)  %.8e\n',f);

a=1;
b=0;
dx=0.0000001;
f=0;
%Finite Riemman Sum
for x=b:dx:a
    f=f+(sin(x)/(1+(x).^2))*dx;
end

fprintf('(iii) %.8e\n',f);