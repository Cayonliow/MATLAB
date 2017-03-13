clear all;
v=1:30:3500; 
N=10000; 
k=1.38*10^(-23);
T=400;
m=6.6*10^(-27);  
e=2.71;
Aaaaa=4*pi*N*((m/(2*pi*k*T))^(1.5)); 
a=(k*T/m)^0.5;
%F=1:117;
vMax=3500;
dv=30;
tt=0;
bins=117;

for t=1:117   %117~=3500./30
  
    F(t)=((Aaaaa*((t*30)^2)*e^((-m*(((t*30)^2)))/(2*k*T))))*30;
    %multiple by 30 is because of the interva
    %dn=30 
end

subplot(3,2,2);
bar(v,F,'m');
axis([0 4000 0 200]);