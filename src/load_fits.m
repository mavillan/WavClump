function [data] = load_fits(input_fit)
%Load an input FITS cube and standarize it to [0,1]
data = fitsread(input_fit);
mind = min(data(:));
data = data-mind;
maxd = max(data(:));
data = data/maxd;
end

