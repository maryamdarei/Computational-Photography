function [Hdilteredimage] = highpassfilter(input_image, hsize, sigma)

I_filtered = input_image - imfilter( input_image, fspecial('Gaussian', hsize, sigma ) ); 

Hdilteredimage = I_filtered .* input_image;

end
