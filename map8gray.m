%8-PAM Mapper function - Gray Encoding
%it takes a vector of bits as an arguement and "maps" it to a symbol
%8-Pam means M=8 , so k=log2(M) bits
%We have 8 symbols and we map 3 bit per symbol(log2(8) = 3)
%000 = -7 , 001 = -5 , 011 = -3 , 010 = -1 , 110 = 1 , 111 = 3 , 101 = 5 ,
%100 = 7

function symvec = map8gray(inputvec)
sizevec = length(inputvec);
m = 1;
rem = mod(sizevec , 3);
if(rem == 0)
for k=1:3:sizevec
    if(inputvec(k)==0 & inputvec(k+1)==0 & inputvec(k+2)==0)
        symvec(m) = -7;
        m = m+1;
    elseif(inputvec(k)==0 & inputvec(k+1)==0 & inputvec(k+2)==1)
        symvec(m) = -5;
         m = m+1;
    elseif(inputvec(k)==0 & inputvec(k+1)==1 & inputvec(k+2)==1)
        symvec(m) = -3;
         m = m+1;
    elseif(inputvec(k)==0 & inputvec(k+1)==1 & inputvec(k+2)==0)
        symvec(m) = -1;
         m = m+1;
    elseif(inputvec(k)==1 & inputvec(k+1)==1 & inputvec(k+2)==0)
        symvec(m) = 1;
         m = m+1;
    elseif(inputvec(k)==1 & inputvec(k+1)==1 & inputvec(k+2)==1)
        symvec(m) = 3;
         m = m+1;
    elseif(inputvec(k)==1 & inputvec(k+1)==0 & inputvec(k+2)==1)
        symvec(m) = 5;
         m = m+1;
    elseif(inputvec(k)==1 & inputvec(k+1)==0 & inputvec(k+2)==0)
        symvec(m) = 7;
         m = m+1;
    end
end
else
   for k=1:3:(sizevec-rem)
    if(inputvec(k)==0 & inputvec(k+1)==0 & inputvec(k+2)==0)
        symvec(m) = -7;
        m = m+1;
    elseif(inputvec(k)==0 & inputvec(k+1)==0 & inputvec(k+2)==1)
        symvec(m) = -5;
         m = m+1;
    elseif(inputvec(k)==0 & inputvec(k+1)==1 & inputvec(k+2)==1)
        symvec(m) = -3;
         m = m+1;
    elseif(inputvec(k)==0 & inputvec(k+1)==1 & inputvec(k+2)==0)
        symvec(m) = -1;
         m = m+1;
    elseif(inputvec(k)==1 & inputvec(k+1)==1 & inputvec(k+2)==0)
        symvec(m) = 1;
         m = m+1;
    elseif(inputvec(k)==1 & inputvec(k+1)==1 & inputvec(k+2)==1)
        symvec(m) = 3;
         m = m+1;
    elseif(inputvec(k)==1 & inputvec(k+1)==0 & inputvec(k+2)==1)
        symvec(m) = 5;
         m = m+1;
    elseif(inputvec(k)==1 & inputvec(k+1)==0 & inputvec(k+2)==0)
        symvec(m) = 7;
         m = m+1;
    end
    end
end 
end
