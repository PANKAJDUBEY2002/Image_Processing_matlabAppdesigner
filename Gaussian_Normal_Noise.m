function [ result ] = Gaussian_Normal_Noise( image,Meu,Segma )
[H W L]=size(image);


for i = 1:255
    pixels=round(exp(-((i-Meu).^2)/(2*(Segma.^2)))/(sqrt(2*3.14)*Segma)*H*W);
    for j = 1 :pixels
        r=ceil(rand(1,1)*H);
        c=ceil(rand(1,1)*W);
        image(r,c)=image(r,c)+i;
    end
end
result=image;
result=uint8(result);
end
