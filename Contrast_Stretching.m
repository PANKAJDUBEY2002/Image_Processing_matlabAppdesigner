function [newImage] = Contrast_Stretching(image,newMax , newMin)

[h,w,l]=size(image);
if l==3
    image = rgb2gray(image);
end
    image = im2double(image);
    old_max = max(image(:));
    old_min =min(image(:));
    
    [h,w]=size(image);
    newImage = zeros(h,w);
    newImage = im2double(newImage);
    for i=1:h
        for j=1:w
            newImage(i,j)= ((image(i,j)-old_min)/(old_max-old_min))*(newMax-newMin)+newMin;
        end
    end
    
    newImage =im2uint8(newImage);
end

