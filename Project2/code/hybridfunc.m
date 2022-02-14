function [output_image] = hybridfunc(image1, image2)

for colorI = 1:3
      output_image(:,:,colorI) = image1(:,:,colorI) + image2(:,:,colorI);
end

end
