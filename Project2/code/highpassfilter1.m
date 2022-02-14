function [Highpassimage] = highpassfilter1(input_image)

%highpass filter

IHigh_filtered = [-1 -1 -1 ,-1 8 -1, -1 -1 -1]; 
Highpassimage1 = imfilter(input_image,IHigh_filtered);
for colorI = 1:3
      Highpassimage(:,:,colorI) = 2*Highpassimage1(:,:,colorI) + 2*Highpassimage1(:,:,colorI);
end

end
