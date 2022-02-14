function [Highpassimage] = highpassfilter1(input_image)
% input_image : input mage that we want to extract its highpass features 
% Highpass filter is the 3X3 Laplace edge detector kernel
% Highpassimage : the function output

%highpass filter // Laplacian Filter
IHigh_filtered = [-1 -1 -1 ,-1 8 -1, -1 -1 -1]; 
Highpassimage1 = imfilter(input_image,IHigh_filtered);

% For a better output, I doubled the filtered image and added it to itself
for colorI = 1:3
      Highpassimage(:,:,colorI) = 2*Highpassimage1(:,:,colorI) + 2*Highpassimage1(:,:,colorI);
end

end
