function [] = visualize_slices(cube,dslc,title_str)
%Function to visualize an spectroscopic data cube at 9 slices
minf = 1+dslc;
maxf = size(cube,3)-dslc;
idxImages = floor(minf:(maxf-minf)/9:maxf);
figure('DefaultAxesXTick',[],'DefaultAxesYTick',[],...
    'DefaultAxesFontSize',8,'Color','w');
for k = 1:9
    j = idxImages(k);
    subplot(3,3,k);
    imshow(cube(:,:,j));
    colormap(parula);
    xlabel(['Freq = ' int2str(j)]);
    if k==2
        title(title_str)
    end
end

