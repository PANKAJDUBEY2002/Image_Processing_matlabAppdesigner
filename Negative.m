function [Image] = Negative(oldImage)
[row ,col] =size(oldImage);
for r = 1:row
    for c =1:col
            oldImage(r,c)= 255 - oldImage(r,c);
    end
end

Image = oldImage;
end



