function sigma = calcIsohydricity(VOD_AM, VOD_PM)
% This function shows a simple example of how to calculate the isohydricity
% metric sigma based on microwave VOD data. The function is primarily
% intended to illustrate how simple the method is to copy - it is just a
% linear fit! Here, we assume that VOD_AM and VOD_PM are the same size and 
% are matrices or vectors of size number of pixels by number of days. 
% VOD data are assumed to have been pre-processed so that days with
% rainfall are set to NaN.
%
% INPUTS:
% VOD_AM: nPixel by nDays matrix of nighttime or early morning VOD data, 
% assumed to be indicative of root-zone soil water potential
%
% VOD_PM: nPixel by nDays matrix of midday or early evening VOD data, 
% assumed to be indicative of leaf water potential
%
% References: 
% 1) A.G. Konings and P. Gentine (2017): Global variations in
% ecosystem-scale isohydricity. Global Change Biology 23(2): 891-905.
% 2) A.G. Konings, A.P. Williams, and P. Gentine (2017): Sensitivity of 
% grassland productivity to aridity controlled by stomatal and xylem 
% regulation. Nature Geoscience. Accepted.
%
%Written by Alexandra Konings, konings@stanford.edu

%Ensure two timeseries have the same size
if numel(VOD_AM) ~= numel(VOD_PM)
    error('Two inputs must be the same size')
end

for pix = 1:size(VOD_AM, 1)
    rlInd = find( ~isnan(VOD_AM(pix,:)) & ~isnan(VOD_PM(pix,:)) );
    if numel(rlInd)>50 %somewhat arbitrary, not an issue for multi-year data
        coeff = robustfit( VOD_AM(pix, rlInd), VOD_POM(pix, rlInd) );
        sigma(i) = coeff(2);
    else
        sigma(i) = NaN;
    end
end