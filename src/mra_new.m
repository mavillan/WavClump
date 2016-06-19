function [approx] = mra(data, wavelet, levels)
%%% It performs mra through the 3D DWT

%Reconstruct from coefficients the approximations for each level
approx = cell(1,levels+1);
approx{1} = data;
for k = 2:levels+1
    WT = dwt3(approx{k-1},wavelet); 
    % Compute reconstructed approximation, i.e. the low-pass component.
    approx{k} = idwt3(WT,'aaa');
    clear('WT');
end
end

