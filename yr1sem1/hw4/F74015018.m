clear all;
v=1:30:3500; 
N=10000; 
k=1.38*10^(-23);
T=400;
m=6.6*10^(-27);  
e=2.71;
Aaaaa=4*pi*N*((m/(2*pi*k*T))^(1.5)); 
dv=30;

%Q(a)random speed distribution
Tt=0;
bins=117;
W=0;
for bin=1:117
    
    BigV(bin)=(bin-1).*dv;
    Ener(bin)=exp((-m.*( BigV(bin).^2))./(2.*k.*T));
    f_4(bin)=Aaaaa.*Ener(bin).*( BigV(bin).*BigV(bin));
    Number(bin)=f_4(bin).*30;
    Tt=Number(bin);
    
    for c=1:Tt
         
         A(c)=dv.*(bin-1)+((dv.*bin)-(dv.*(bin-1))).*rand(1); 
            
    
         histogram(A,bins);
         title('Q(a):random speed distribution ');
         subplot(3,2,1);
   
        W=W+A(c);
    end
    end


%Q(a):speed distribution
for t=1:117   %117~=3500./30
  
    F(t)=((Aaaaa*((t*30)^2)*e^((-m*(((t*30)^2)))/(2*k*T))))*30;
    %multiple by 30 is because of the interva
    %dn=30 

end

subplot(3,2,2);
bar(v,F,'m');
title('Q(a):speed distribution ');
axis([0 4000 0 200]);

%Q(d):speed distribution at 400K,600K,1000K
T2=400;
place=3;
for time=1:3

    Aaaaa=4*pi*N*((m/(2*pi*k*T2))^(1.5)); 
    for t1=1:1:117   
  
        F_four(t1)=((Aaaaa*((t1*30)^2)*e^((-m*(((t1*30)^2)))/(2*k*T2))))*30;
    
    end

    subplot(3,2,place);
    bar(v,F_four,'g');
    axis([0 4000 0 200]);

    T2=T2+time*200;
    place=place+1;

end

subplot(3,2,3);title('Q(d):speed distribution at 400K ');
subplot(3,2,4);title('Q(d):speed distribution at 600K ');
subplot(3,2,5);title('Q(d):speed distribution at 1000K ');

%Q(e):speed distribution of H2 and N2
M_N2=46.5*10^(-27);
M_H2=6.6*10^(-27); 
for t2=1:117
 
   A_N2=4*pi*N*((M_N2/(2*pi*k*T))^(3/2));
   A_H2=4*pi*N*((M_H2/(2*pi*k*T))^(3/2));
   function_final_1(t2)=((A_N2*((t2*30)^2)*e^((-M_N2*(((t2*30)^2)))/(2*k*T2))))*30;
   function_final_2(t2)=((A_H2*((t2*30)^2)*e^((-M_H2*(((t2*30)^2)))/(2*k*T2))))*30;
    
end
subplot(3,2,6);
plot(v,function_final_1,v,function_final_2);
subplot(3,2,6);title('Q(e):speed distribution of H2 and N2');
axis([0 4000 0 4000]);




%Q(b)
V_Average=W/10000;
ROOT=((V_Average)^2)^0.5;
PRO=sqrt ((2*k*T)/m);

fprintf('The Most Probable Speed is : %d\n',PRO);
fprintf('The Average Speed is : %d\n',V-Average);
fprintf('The Root-mean-square Speed is : %d\n',ROOT);

%Q(c)
V_Average1=W/10000;
ROOT1=((V_Average)^2)^0.5;
PRO1=sqrt ((2*k*T)/m);

fprintf('The Most Probable Speed with particle number to 10,000 is : %d\n',PRO1);
fprintf('The Average Speed with particle number to 10,000  is : %d\n',V-Average1);
fprintf('The Root-mean-square Speed with particle number to 10,000 is : %d\n',ROOT1);

V_Average2=W/50000;
ROOT2=((V_Average)^2)^0.5;
PRO2=sqrt ((2*k*T)/m);

fprintf('The Most Probable Speed with particle number to 50,000 is : %d\n',PRO2);
fprintf('The Average Speed with particle number to 50,000  is : %d\n',V-Average2);
fprintf('The Root-mean-square Speed with particle number to 50,000 is : %d\n',ROOT2);

V_Average3=W/100000;
ROOT3=((V_Average)^2)^0.5;
PRO3=sqrt ((2*k*T)/m);

fprintf('The Most Probable Speed with particle number to 10,0000 is : %d\n',PRO3);
fprintf('The Average Speed with particle number to 10,0000  is : %d\n',V-Average3);
fprintf('The Root-mean-square Speed with particle number to 10,0000 is : %d\n',ROOT3);


