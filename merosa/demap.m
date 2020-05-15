%M-PAM demapper
%takes an integer as a value and maps it back to binary
%it takes an integer vector , the encoding and M of M-PAM as arguements
%encoding values : 'Binary' , 'Gray'
%M values : 2,8
function demappam = demap(input,M,encoding)
inputlen = length(input);
if M==2
    demappam = zeros(inputlen,1);
    for k=1:inputlen
        if(input(k)==1)
            demappam(k)=1;
        elseif(input(k)==(-1))
            demappam(k)=0;
        end
    end
elseif M==8
    demappam = zeros(3*inputlen,1);
    if encoding == 'Binary'
        for k=1:inputlen
            j = (k*3)-2;
            switch input(k)
                case -7
                    demappam(j) = 0;
                    demappam(j+1) = 0;
                    demappam(j+2) = 0;
                case -5
                    demappam(j) = 0;
                    demappam(j+1) = 0;
                    demappam(j+2) = 1;
                case -3
                    demappam(j) = 0;
                    demappam(j+1) = 1;
                    demappam(j+2) = 0;
                case -1
                    demappam(j) = 0;
                    demappam(j+1) = 1;
                    demappam(j+2) = 1;
                case 1
                    demappam(j) = 1;
                    demappam(j+1) = 0;
                    demappam(j+2) = 0;
                case 3
                    demappam(j) = 1;
                    demappam(j+1) = 0;
                    demappam(j+2) = 1;
                case 5
                    demappam(j) = 1;
                    demappam(j+1) = 1;
                    demappam(j+2) = 0;
                case 7
                    demappam(j) = 1;
                    demappam(j+1) = 1;
                    demappam(j+2) = 1;
            end
        end
    elseif encoding == 'Gray'
         for k=1:inputlen
            j = (k*3)-2;
            switch input(k)
                case -7
                    demappam(j) = 0;
                    demappam(j+1) = 0;
                    demappam(j+2) = 0;
                case -5
                    demappam(j) = 0;
                    demappam(j+1) = 0;
                    demappam(j+2) = 1;
                case -1
                    demappam(j) = 0;
                    demappam(j+1) = 1;
                    demappam(j+2) = 0;
                case -3
                    demappam(j) = 0;
                    demappam(j+1) = 1;
                    demappam(j+2) = 1;
                case 7
                    demappam(j) = 1;
                    demappam(j+1) = 0;
                    demappam(j+2) = 0;
                case 5
                    demappam(j) = 1;
                    demappam(j+1) = 0;
                    demappam(j+2) = 1;
                case 1
                    demappam(j) = 1;
                    demappam(j+1) = 1;
                    demappam(j+2) = 0;
                case 3
                    demappam(j) = 1;
                    demappam(j+1) = 1;
                    demappam(j+2) = 1;
            end
         end
    else
        disp 'Only acceptable Encoding Values 'Binary' , 'Gray''
    end
end
end