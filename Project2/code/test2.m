%Test2

input_image1 = imread('/Users/azadehbaghdadi/Desktop/3rd Semester/Computational photography/Project2/Data/Cat8.jpg');
input_image2 = imread('/Users/azadehbaghdadi/Desktop/3rd Semester/Computational photography/Project2/Data/dog3.jpeg');

GBlurimage = GBlure(input_image1, 2);
Highpassimage1 = highpassfilter(input_image2, 8 , 64);
Highpassimage2 = highpassfilter1(input_image2);
HighpassimageBW1 = (rgb2gray(Highpassimage1));
HighpassimageBW2 = (rgb2gray(Highpassimage2));

%H = imfuse(output_image_LPS,Hdilteredimage);

 for colorI = 1:3
      H1(:,:,colorI) = GBlurimage(:,:,colorI) + Highpassimage1(:,:,colorI);
 end

 for colorI = 1:3
      H2(:,:,colorI) = GBlurimage(:,:,colorI) + HighpassimageBW1 ;
 end

 for colorI = 1:3
      H3(:,:,colorI) = GBlurimage(:,:,colorI) + Highpassimage2(:,:,colorI);
 end

 for colorI = 1:3
      H4(:,:,colorI) = GBlurimage(:,:,colorI) + HighpassimageBW2 ;
 end

subplot(4, 3, 1), imshow(GBlurimage);
subplot(4, 3, 2), imshow(Highpassimage1);
subplot(4, 3, 3), imshow(H1);

subplot(4, 3, 4), imshow(GBlurimage);
subplot(4, 3, 5), imshow(HighpassimageBW1);
subplot(4, 3, 6), imshow(H2);

subplot(4, 3, 7), imshow(GBlurimage);
subplot(4, 3, 8), imshow(Highpassimage2);
subplot(4, 3, 9), imshow(H3);

subplot(4, 3, 10), imshow(GBlurimage);
subplot(4, 3, 11), imshow(HighpassimageBW2);
subplot(4, 3, 12), imshow(H4);
