
%main
%Read the image
img = imread('/Users/azadehbaghdadi/Desktop/3rd Semester/Computational photography/Project1/image/01047u.jpg');
[n,m] =size(img);

% divide the input image to 3 equal parts:
n1=floor(n/3);
n2=2*n1;
n3=3*n1;

B=img(1:n1,1:m); % Blue channel
G=img(n1+1:n2,1:m); % Green channel
R=img(n2+1:n3,1:m); % Red Channel

[gm,gn] = size(G);
Bluerezie= imresize(B,[gm,gn]);
Redresize = imresize(R,[gm,gn]);


MergetoRGB(img, Bluerezie, Redresize, G, 50)
%MergetoRGB2(img, Bluerezie, Redresize, G, 10, 10)
