function [GBlurimage] = GBlure(input_image, Sigma)

GBlurimage = imgaussfilt(input_image,Sigma);

end