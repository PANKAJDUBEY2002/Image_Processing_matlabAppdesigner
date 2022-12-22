function [Binary_Image] = GRAY2BINARY(GRAY_Image)
[row , col , depth] = size(GRAY_Image);

if depth ==3
    GRAY_Image = rgb2gray(GRAY_Image);
    Binary_Image = zeros(row , col);
    for r = 1:row
        for c = 1:col
            if GRAY_Image(r,c)>=128
                Binary_Image(r,c) = 1;
            else 
                Binary_Image(r,c) = 0;
            end
        end
    end
Binary_Image = logical(Binary_Image);
else
     Binary_Image = zeros(row , col);
    for r = 1:row
        for c = 1:col
            if GRAY_Image(r,c)>=128
                Binary_Image(r,c) = 1;
            else
                Binary_Image(r,c) = 0;
            end
        end
    end
Binary_Image = logical(Binary_Image);
end

