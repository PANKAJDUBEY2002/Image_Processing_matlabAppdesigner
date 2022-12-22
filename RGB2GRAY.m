function Gray_Image = RGB2GRAY(RGB_Image , option)

[row , col , depth]=size(RGB_Image);
Gray_Image = zeros(row,col);
Gray_Image = double(Gray_Image);

for r = 1:row
    for c = 1:col
        if option == 1
             Gray_Image(r,c) = (RGB_Image(r,c,1) + RGB_Image(r,c,2) + RGB_Image(r,c,3))/3;
        end
        if option == 2
            Gray_Image(r,c) = RGB_Image(r,c,1)*.3 + RGB_Image(r,c,2)*.2 + RGB_Image(r,c,3)*.5;
        end
        if option == 3
           Gray_Image(r,c) = RGB_Image(r,c,1);
        end
        if option == 4
           Gray_Image(r,c) = RGB_Image(r,c,2);
        end
        if option == 5
           Gray_Image(r,c) = RGB_Image(r,c,3);
        end
         
    end
end
Gray_Image = uint8(Gray_Image);
end

