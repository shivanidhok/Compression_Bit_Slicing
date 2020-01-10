function [BitStream] = Dec2Bin_SGD(n,numOfBits)
%===========================Function Description==============================
% Author: Shivani Dhok
% Date of Creation: January 10, 2019
% Digital Image Processing
% Function for: Convert a decimal number to binary
% 
% The function Dec2Bin_SGD() converts a decimal number to binary pattern.
% 
% Input: 
%     n: The decimal imput that is to be converted
%     numOfBits: The number of bits that need to be considered for conversion.
% 
% Output:
%     BitStream: The converted equivalent binary pattern.

BitStream = zeros(1,numOfBits);

for ii = 1:numOfBits
    BitStream(ii) = rem(n,2);
    n = floor(n/2);
end
BitStream = fliplr(BitStream);