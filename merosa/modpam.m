%M-PAM MODULATOR
%modpam(input,M)
%input is the symbol array to turn to signals
%M is the type of modulation
%Only accepts M = 2 or M = 8;
function signal = modpam(input,M)
len = length(input);
Rsymbol = 250 * 10^3;  %rate of symbol Transmission symbols/sec
Tsymbol = 1/Rsymbol;   %period of each symbol
Fc = 2.5 * 10^6;       %frequency of the carrier wave
Tc = 1/Fc;             %period of carrier
Tsample = Tc/4;        %sampling period
Es = 1;                 %symbol energy
g = sqrt((2*Es)/Tsymbol);%rectangular pulse function
samples = Tsymbol/Tsample; %how many samples per symbol;
A2pam = 1;
A8pam = 0.2182; %for 8 pam we need the average power to be 1
t = Tsample:Tsample:Tsymbol;
if M==2
    for j = 1:len
        for k = 1:samples
            signal(j,k) = A2pam*input(j)*g* cos(2*pi*Fc*t(k));
        end
    end
elseif M==8
    for j = 1:len
        for k = 1:samples
            signal(j,k) = A8pam*input(j)* g *cos(2*pi*Fc*t(k));
        end
    end
else
    signal = 0;
    disp 'M should be 2 or 8'
end
end

