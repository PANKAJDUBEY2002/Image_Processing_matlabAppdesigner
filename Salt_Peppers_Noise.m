function [result] = Salt_Peppers_Noise(image,ps,pp)

[H W L]=size(image);

salt = round(ps*H*W);
pepper = round(pp*H*W);

for i = 1:salt
    r=ceil(rand(1,1)*H);
    c=ceil(rand(1,1)*W);
    image(r,c)=255;
end
for i = 1:pepper
    r=ceil(rand(1,1)*H);
    c=ceil(rand(1,1)*W);
    image(r,c)=0;
end
result=image;
result=uint8(result);
%imshow(result);
end
