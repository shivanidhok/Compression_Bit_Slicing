function [ICompressed I_bit_Compressed] = CompressBitSlicing_SGD(I,DispAll)
%===========================Function Description==============================
% Author: Shivani Dhok
% Date of Creation: January 10, 2019
% Digital Image Processing
% Function for: Compression of an Image by Bit Slicing Technique
% 
% The function CompressBitSlicing_SGD(I) compresses an 8 bin format
% image into a 7 bit by making the LSB as 0. This method is known as
% Bit Slicing.
% 
% Input: 
%     I: Input image to be compressed.
%     DispAll: Parameter that specifies if images are to be displayed or
%               Not:
%                     If DispAll = 1: Display
%                     If DispAll = 0: No Display
%                     If Any other value: No display of images and mention 
%                                         of error message.
% Output:
%     ICompressed: Compressed image (8 bit format [uint8])
%     I_bit_Compressed: Binary planes after Bit Slicing

% Converting to a gray image if required
[a b c] = size(I);
if(c == 3)
    I_gray = rgb2gray(I);
else 
    I_gray  = I;
end

% Image size
[row col] = size(I_gray);
% Number of bits  = 9
numOfBits = 8;
% Matrix of all zeros for stroing equivalent 8 bits
I_bit_planes = zeros(row,col,numOfBits);

% Converting to 8 bits 
for ii = 1:row
    for jj = 1:col
        I_bit_planes(ii,jj,:) = Dec2Bin_SGD(double(I_gray(ii,jj)),numOfBits);
    end
end

% Copying 8 bits into another matrix
I_bit_Compressed = I_bit_planes;

% Making LSB as zero (Bit Slicing)
I_bit_Compressed(:,:,8) = 0;

% Matrix of all zeros for storing the decimal value
ICompressed = zeros(row,col);

% Converting back to decimal equivalent
for ii = 1:row
    for jj = 1:col
        ICompressed(ii,jj) = Bin2Dec_SGD(reshape(I_bit_Compressed(ii,jj,:),[1 8]));
    end
end

% Plotting the original image if DispAll is set to one
if DispAll == 1 
    figure;
    subplot(3,3,1)
    imshow(I_gray);
    title('Original Image');
    Titles = {'MSB',' ',' ',' ',' ',' ',' ','LSB'};
    for k = 1:8
        subplot(3,3,k+1)
        imshow(I_bit_planes(:,:,k))
        title(Titles{k})
    end
    suptitle('Bit Slicing')
elseif DispAll == 0
else
    disp('Invalid value of DispAll inserted...Not Displaying Images.')
end

% Converting to uint8
ICompressed = uint8(ICompressed);