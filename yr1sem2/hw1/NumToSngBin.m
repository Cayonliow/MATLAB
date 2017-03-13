function NumToSngBin(num)
  %x=(-1).^(s)(2.^(c-127))*(1+f)
    fprintf('The binary representation of %.4f is ',num);
    if num<0
        num=num*-1;
        fprintf('1 ');
    %end
    
    else
        fprintf('0 ');
    end
  
    count=0;
    %the part of doing c
    while (1)
      if (num>=1)&&(num<2)
          break;
         
      end
      
      num=num/2;
      count=count+1;

    end
    
    c=127+count;
    
    for i=1:8
        a(i)=rem(c,2);
        c=(c-a(i))/2;
    end
    
    %the part of doing f
    if num>=1
    num=num-1;
    end
    for i=1:23
        if num>=2.^(-i)
            a(9+i)=1;
            num=num-(2.^(-i));

        
        else %num<2.^(-i)
            a(9+i)=0;
        end
      
    end
    
    for j=1:8
        fprintf('%d ',a(j));
        
    
    end
    
    for j=9:32
        fprintf('%d ',a(j));
        if j==32
            fprintf('\n');
        end
    end
     
    
    
    
    
    
    
    
  
    
    
    
