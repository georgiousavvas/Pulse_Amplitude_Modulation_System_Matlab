%BER - Bit Error Rate function
%Compares the binary input in the system to the side of the transmitter 
%with the binary output of the system to the side of the receiver
function ber = ber(input,output)
diffcounter = 0;
if length(input)==length(output)
    for k=1:length(input)
        if(input(k)~=output(k))
            diffcounter = diffcounter+1;
        end
    end
else
    for k=1:length(output)
        if(input(k)~=output(k))
            diffcounter = diffcounter+1;
        end
    end
    diffcounter = diffcounter + (length(input)-length(output)); %we count the non send bits because of the mapper as error
end
ber = diffcounter/length(input);
end
