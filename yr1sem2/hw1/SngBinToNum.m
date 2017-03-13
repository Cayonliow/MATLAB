function num=SngBinToNum(bin)
 %[1]s,[8]exp,[23]m
    e=0;
    m=0;
    %part od doing exp
    for i=2:9
       
        e=e+(bin(i))*2.^(9-i);
        
    end
    
    %part of doing m
    for i=1:23
       
        m=m+(bin(9+i))*2^(-i);
        
    end

    %part of doing s
    if bin(1)==0
            num=(1+m)*2.^(e-127);
    end
    
    if bin(1)==1
            num=(-1)*(1+m)*2.^(e-127);
    end


return