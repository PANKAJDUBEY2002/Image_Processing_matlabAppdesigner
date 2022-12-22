function [Binary_Image] = RGB2BINARY(RGB_Image)
Gray_Image=rgb2gray(RGB_Image);
[H , W]=size(Gray_Image);
Binary_Image=zeros(H,W);
for i=1:H
    for j=1:W
        if Gray_Image(i,j)>=128
            Binary_Image(i,j)=1;
        else
            Binary_Image(i,j)=0;
        end
    end
end
Binary_Image=logical(Binary_Image);
end


