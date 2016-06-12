function [A,D] = mra(data, wavelet, levels)
%It performs mra through the 3D DWT
n = levels;

%Compute the wavelet decomposition of the 3D data
WT = wavedec3(data,levels,wavelet);

%Reconstruct from coefficients the approximations and details for each
%level
A = cell(1,levels);
D = cell(1,levels);
for k = 1:levels
    A{k} = waverec3(WT,'a',k);   % Approximations (low-pass components)
    D{k} = waverec3(WT,'d',k);   % Details (high-pass components)
end
end

