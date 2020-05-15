%SER - Symbol Error Rate function
%Compares the symbol input in the system to the side of the transmitter 
%with the symbol output of the system to the side of the receiver
function ser = ser(input,output)
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
ser = diffcounter/length(input);
end
