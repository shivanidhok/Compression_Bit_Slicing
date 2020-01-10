clc;clear;close all;
% Shivani Dhok
% Date: January 10, 2019
% Digital Image Processing
% Program for: Read an Image and perform compression by Bit Slicing by
%              using CompressBitSlicing_SGD();

I = imread('lena2.png');
DispAll = 1;                % Want to display the images
% DispAll = 0;              % No Image Display

% Compression By Bit Slicing
[ICompressed I_bit_Compressed] = CompressBitSlicing_SGD(I,DispAll);

% Plot
figure;
subplot(1,2,1)
imshow(rgb2gray(I))
title('Original')
subplot(1,2,2)
imshow(ICompressed)
title('Compressed By Bit Slicing.')