function [output]=PointDetection(img,filter)

image=double(img);
%filter = [-1 -1 -1;-1 8 -1;-1 -1 -1];
output = imfilter(image , filter);
output = uint8(output);
image=output+img;
%imshow(image);
end
