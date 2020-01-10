function [n] = Bin2Dec_SGD(BitStream)
%===========================Function Description==============================
% Author: Shivani Dhok
% Date of Creation: January 10, 2019
% Digital Image Processing
% Function for: Convert a binary number to decimal
% 
% The function Bin2Dec_SGD() converts a binary number to decimal pattern.
% 
% Input: 
%     BitStream: Input Binary Stream for the conversion to decimal. 
% Output:
%     n: Equivalent decimal number
n = 0;
x1 = fliplr(BitStream);
for ii = 1:length(x1)
    n = n+x1(ii)*2^(ii-1);
end