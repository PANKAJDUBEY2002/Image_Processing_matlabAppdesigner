function newImage = Log(image, const)   
    image = im2double(image);
    newImage = const.*log2(1 + image);
    newImage= im2uint8(newImage);
end
