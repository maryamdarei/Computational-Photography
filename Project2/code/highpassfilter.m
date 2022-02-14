function [Hdilteredimage] = highpassfilter(input_image, hsize, sigma)
% input_image : input mage that we want to extract its highpass features 
% Sigma: standard deviation 
% Hdilteredimage : the function output

% built-in low pass filter, imgaussfilt( A, sigma ) 
GBlurimage = imgaussfilt(input_image, sigma);
I_filtered = input_image - imfilter( input_image, fspecial('Gaussian', hsize, sigma ) ); 

Hdilteredimage = I_filtered .* input_image;

end
