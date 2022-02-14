function [output_image] = hybridfunc(image1, image2)
% image1, image2 : input mages that we want to merge with 
% output_image : the function output

% merge two images
 for colorI = 1:3
      output_image(:,:,colorI) = image1(:,:,colorI) + image2(:,:,colorI);
 end

end
