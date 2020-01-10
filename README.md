# Compression_Bit_Slicing
It includes MATLAB function that performs compression of an image by bit slicing method.
Three functions included as follows:

Function: CompressBitSlicing()

===========================Function Description==============================

Author: Shivani Dhok
Date of Creation: January 10, 2019
Digital Image Processing
Function for: Compression of an Image by Bit Slicing Technique
 
The function CompressBitSlicing_SGD() compresses an 8 bin format image into a 7 bit by making the LSB as 0. This method is known as Bit Slicing.
 
Input: 
    I: Input image to be compressed.
    DispAll: Parameter that specifies if images are to be displayed or Not:
                    If DispAll = 1: Display
                    If DispAll = 0: No Display
                    If Any other value: No display of images and mention of error message.
Output:
    ICompressed: Compressed image (8 bit format [uint8])
    I_bit_Compressed: Binary planes after Bit Slicing

-------------------------------------------------------------------------------------
  
Function: Dec2Bin_SGD()

===========================Function Description==============================

Author: Shivani Dhok
Date of Creation: January 10, 2019
Digital Image Processing
Function for: Convert a decimal number to binary

The function Dec2Bin_SGD() converts a decimal number to binary pattern.
 
Input: 
    n: The decimal imput that is to be converted
    numOfBits: The number of bits that need to be considered for conversion.

Output:
    BitStream: The converted equivalent binary pattern.
    
    
-------------------------------------------------------------------------------------

Function: Bin2Dec_SGD()

===========================Function Description==============================

Author: Shivani Dhok
Date of Creation: January 10, 2019
Digital Image Processing
Function for: Convert a binary number to decimal
 
The function Bin2Dec_SGD() converts a binary number to decimal pattern.
 
Input: 
    BitStream: Input Binary Stream for the conversion to decimal. 
Output:
    n: Equivalent decimal number
    
--------------------------------------------------------------------------------------

Test Code: test_bit_slicing_SGD.m
