%Gaussian filter using MATLAB built_in function
%Read an Image
Img = imread('einstein.jpg');
A = imnoise(Img,'Gaussian',0.04,0.003);
%Image with noise
figure,imshow(A);
H = fspecial('Gaussian',[15 15],0.76);
GaussF = imfilter(A,H);
figure,imshow(GaussF);
ReconstructedImage = GaussF;
n=size(Img);
M=n(1);
N=n(2);
MSE = sum(sum((Img-ReconstructedImage).^2))/(M*N);
SSIMVAL = ssim(Img,ReconstructedImage);
PSNR = 10*log10(256*256/MSE);
fprintf('\nSSIM: %0.4f', SSIMVAL');
fprintf('\nMSE: %7.2f ', MSE);
fprintf('\nPSNR: %9.7f dB', PSNR);
