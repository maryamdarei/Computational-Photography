function [Highpassimage] = highpassfilter2(input_image)
% input_image : input mage that we want to extract its highpass features 
% Highpass filter created by subtract the lowpass features form orginal image
% Highpassimage : the function output

%highpass filter 
Ihigh_filtered = input_image - lowpassfilter2(input_image); 

Highpassimage = Ihigh_filtered .* input_image;

end
