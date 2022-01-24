function [] = MergetoRGB2(img, B, R, G, d, a )
% img is input image, 
% B, R, G are the divided channels
% d is the cropped image dimension
% a is the search window dimension ([-a,+a])

 b=double(B);
 g=double(G);
 r=double(R);

%% green channel as a refrence

 g1=double(g(146:146+d,225-d:225)); 
 refrencechannel = double(g1);

%% compare to determain the amount of shift between Blue and Green 

 error = inf;
 for i = -a:a
     for j = -a:a
         b1=double(b(146+i:146+d+i,225-d+j:225+j));
         temp1 = sum(sum((double(g1) - double(b1)) .^ 2));
         if temp1 < error
             error = temp1;
             RowShiftRed = i;
             ColShiftRed = j;
         end
     end
 end

%% compare to determain the amount of shift between Red and Green

 error = inf;
 for i = -10:10
     for j = -10:10
         r1=double(r(146+i:146+d+i,225-d+j:225+j));
         temp2 = sum(sum((double(g1) - double(r1)) .^ 2));
         if temp2 < error
             error = temp2;
             RowShiftBlue = i;
             ColShiftBlue = j;
         end
     end
 end

%% Shift Red and Blue channels

 RedShift=circshift(r,[RowShiftRed,ColShiftRed]);
 BlueShift=circshift(b,[RowShiftBlue,ColShiftBlue]);
 RGBimage=cat(3,uint8(RedShift),uint8(g),uint8(BlueShift));

%% plot the results

%   subplot(3, 3, 2);
%   imshow(img);
%   fontSize = 10;
%   title('Original RGB Image', 'FontSize', fontSize)
% 
%   subplot(3, 3, 4);
%   imshow(B);
%   title('Blue channel', 'FontSize', fontSize)
% 
%   subplot(3, 3, 5);
%   imshow(G);
%   title('Green channel', 'FontSize', fontSize)
% 
%   subplot(3, 3, 6);
%   imshow(R);
%   title('Red channel', 'FontSize', fontSize)

  %subplot(3, 3, 8);
  imshow(RGBimage);
  %title('RGB Image', 'FontSize', fontSize)

end