%Gaussian filter using MATLAB built_in function
%Read an Image
Img = imread('einstein.jpg');
A = imnoise(Img,'Gaussian',0.04,0.003);
%Image with noise
figure,imshow(A);

H = fspecial('Gaussian',[9 9],1.76);
GaussF = imfilter(A,H);
figure,imshow(GaussF);
