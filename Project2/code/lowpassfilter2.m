function [GaussianBlurimage] = lowpassfilter2(input_image)
% input_image : input mage that we want to extract its lowpass 
% BlurFilter is the 5X5 Gaussian kernel
% GaussianBlurimage : the function output

%lowpass filter //Gaussian Blur:
GaussianBlurfilter=[[1 / 256, 4  / 256,  6 / 256,  4 / 256, 1 / 256],
                   [4 / 256, 16 / 256, 24 / 256, 16 / 256, 4 / 256],
                   [6 / 256, 24 / 256, 36 / 256, 24 / 256, 6 / 256],
                   [4 / 256, 16 / 256, 24 / 256, 16 / 256, 4 / 256],
                   [1 / 256, 4  / 256,  6 / 256,  4 / 256, 1 / 256]];

GaussianBlurimage = imfilter(input_image,GaussianBlurfilter);


end
