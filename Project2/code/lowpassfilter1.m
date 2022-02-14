function [Blurimage] = lowpassfilter1(input_image)
% input_image : input mage that we want to extract lowpass 
% BlurFilter is the 3X3 Box Blur kernel
% Blurimage : the function output

%lowpass filter // Box Blur kernel:
BlurFilter =  [[1 / 9, 1 / 9, 1 / 9],
              [1 / 9, 1 / 9, 1 / 9],
              [1 / 9, 1 / 9, 1 / 9]];

Blurimage = imfilter(input_image,BlurFilter);


end
