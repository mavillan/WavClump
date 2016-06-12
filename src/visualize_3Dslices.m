function [] = visualize_3Dslices(cube,nslc,dslc,title_str)
%Function to visualize an spectroscopic data cube 3D slices
figure;
colormap(parula);
minf = 1+dslc;
maxf = size(cube,3)-dslc;
idxImages = floor(minf:(maxf-minf)/nslc:maxf);
contourslice(cube,[],[],idxImages,nslc);
title(title_str);
view(3);
axis tight;
end

