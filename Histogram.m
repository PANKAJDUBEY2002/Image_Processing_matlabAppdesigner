function [histogram_img] = Histogram(image)

  [H, W] = size(image);
    histogram_img = zeros(256, 1);
    
    for i=1:H
        for j=1:W
            histogram_img(image(i, j) + 1) = histogram_img(image(i, j) + 1) + 1;
        end
    end
    
   % figure, bar(histogram_img);

end


 