function [GBlurimage] = GBlure(input_image, sigma)
% input_image : input mage that we want to extract its highpass features 
% Sigma: standard deviation 
% GBlurimage : the function output

% built-in low pass filter, imgaussfilt( A, sigma ) 
GBlurimage = imgaussfilt(input_image, sigma);

end