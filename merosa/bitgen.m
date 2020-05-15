%bitgenerator(size) is a function tha creates a vector of 0s and 1s with the
%same probability of appearance
function  inputstream = bitgen(size)
    inputstream = randsrc(size,1,[0 1;0.5 0.5]);
end