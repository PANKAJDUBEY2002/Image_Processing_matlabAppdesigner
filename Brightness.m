function [BrightImage] = Brightness(image ,operand, offset)
[row , col, depth] = size(image);
BrightImage = zeros(row,col,depth);
BrightImage = im2double(BrightImage);

    if operand == '+'
        BrightImage = image + offset;
    elseif operand == '-'
        BrightImage = image - offset;
    elseif operand == '*'
       BrightImage = image * offset;
    elseif operand == '/'
        BrightImage = image / offset;
    end
    
  for r = 1:row
        for c = 1:col
            for dep =1:depth
                if BrightImage(r, c, dep) > 255
                    BrightImage(r, c, dep) = 255;
                elseif BrightImage(r, c, dep) < 0
                    BrightImage(r, c, dep) = 0;
                end
            end
        end
  end
BrightImage = im2uint8(BrightImage);
end

   