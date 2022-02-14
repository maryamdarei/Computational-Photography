function [output_image, IL] = lowpassfilter3(input_image, sigma)

   IF = fftshift(fft2(double(input_image))); 
   [m,n,z] = size(input_image);
   h = fspecial('gaussian', [m n], sigma);
   h = h./max(max(h));
   IL=IF.*h;
   output_image = uint8(real(ifft2(ifftshift(IL))));
end