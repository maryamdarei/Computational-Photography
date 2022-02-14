%Read data
input_image1 = imread('/Users/azadehbaghdadi/Desktop/3rd Semester/Computational photography/Project2/Data/cat8.jpg');
input_image2 = imread('/Users/azadehbaghdadi/Desktop/3rd Semester/Computational photography/Project2/Data/dog3.jpeg');


%lowpass filter:

Blurimage = lowpassfilter1(input_image1);
GBlurimage = lowpassfilter2(input_image1);

%highpass filter

Highpassimage1 = highpassfilter1(input_image2);
Highpassimage2 = highpassfilter2(input_image2);


%%
%hybrid

hibrid_image1 = hybridfunc(Blurimage,Highpassimage1);
hibrid_image2 = hybridfunc(GBlurimage,Highpassimage1);
hibrid_image3 = hybridfunc(Blurimage,Highpassimage2);
hibrid_image4 = hybridfunc(GBlurimage,Highpassimage2);



subplot(4, 3, 1), imshow(Blurimage);
fontSize = 10;
title('Box Blur Image', 'FontSize', fontSize)
subplot(4, 3, 2), imshow(Highpassimage1);
title('Laplacian filtered Image', 'FontSize', fontSize)
subplot(4, 3, 3), imshow(hibrid_image1);
title('Hybrid Image', 'FontSize', fontSize)

subplot(4, 3, 4), imshow(GBlurimage);
title('Gaussian Blur Image', 'FontSize', fontSize)
subplot(4, 3, 5), imshow(Highpassimage1);
title('Laplacian filtered Image', 'FontSize', fontSize)
subplot(4, 3, 6), imshow(hibrid_image2);
title('Hybrid Image', 'FontSize', fontSize)

subplot(4, 3, 7), imshow(Blurimage);
title('Box Blur Image', 'FontSize', fontSize)
subplot(4, 3, 8), imshow(Highpassimage2);
title('highfeatures filtered Image', 'FontSize', fontSize)
subplot(4, 3, 9), imshow(hibrid_image3);
title('Hybrid Image', 'FontSize', fontSize)

subplot(4, 3, 10), imshow(GBlurimage);
title('Gaussian Blur Image', 'FontSize', fontSize)
subplot(4, 3, 11), imshow(Highpassimage2);
title('highfeatures filtered Image', 'FontSize', fontSize)
subplot(4, 3, 12), imshow(hibrid_image4);
title('Hybrid Image', 'FontSize', fontSize)
