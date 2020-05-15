%2-PAM Mapper function
%it takes a vector of bits as an arguement and "maps" it to a symbol
%2-Pam means M=2 , so k=log2(M) bits
%We have 2 symbols and we map 1 bit per symbol(log2(2) = 1)
%if is 0 we transform it to -1 and if it's 1 it stays 1
function symbolvec = map2bin(inputvec)
sizevec = length(inputvec);
for k=1:1:sizevec
    if(inputvec(k)==0)
        symbolvec(k) = -1;
    elseif(inputvec(k)==1)
        symbolvec(k) = 1;
    end
end
end

