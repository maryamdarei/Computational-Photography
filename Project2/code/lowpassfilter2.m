function [GaussianBlurimage] = lowpassfilter2(input_image)

%lowpass filter //Gaussian Blur:
GaussianBlurfilter =   [[1 / 256, 4  / 256,  6 / 256,  4 / 256, 1 / 256],
                   [4 / 256, 16 / 256, 24 / 256, 16 / 256, 4 / 256],
                   [6 / 256, 24 / 256, 36 / 256, 24 / 256, 6 / 256],
                   [4 / 256, 16 / 256, 24 / 256, 16 / 256, 4 / 256],
                   [1 / 256, 4  / 256,  6 / 256,  4 / 256, 1 / 256]];
GaussianBlurimage = imfilter(input_image,GaussianBlurfilter);


end
