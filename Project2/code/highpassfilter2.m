function [Highpassimage] = highpassfilter2(input_image)

% highpass 
Ihigh_filtered = input_image - lowpassfilter2(input_image); 

Highpassimage = Ihigh_filtered .* input_image;



end
