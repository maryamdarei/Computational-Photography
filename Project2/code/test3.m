%Test3

% read image
   I1 = imread('/Users/azadehbaghdadi/Desktop/3rd Semester/Computational photography/Project2/Data/cat8.jpg');
   I2 = imread('/Users/azadehbaghdadi/Desktop/3rd Semester/Computational photography/Project2/Data/Dog3.jpeg');
   
   %%

   [Low_image , IL] = lowpassfilter3(I1, 20);
   [High_image , IH] = highpassfilter3(I2, 20);

   for colorI = 1:3
      HF(:,:,colorI) = IL(:,:,colorI) + IH(:,:,colorI);
   end

  Hybrid_image = uint8(real(ifft2(ifftshift(HF))));
   
   subplot(3, 1, 1), imshow(Low_image);
   subplot(3, 1, 2), imshow(High_image);
   subplot(3, 1, 3), imshow(Hybrid_image);  
