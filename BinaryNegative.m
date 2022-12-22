function [Image] = BinaryNegative(oldImage)
[row , col]=size(oldImage);
Image = zeros(row ,col);
Image = double(Image);
for r= 1:row
    for c=1:col
        Image(r,c) = (1 - oldImage(r,c));
    end
end
Image = logical(Image);
end

