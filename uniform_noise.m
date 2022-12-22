function [ nimage ] = uniform_noise( img,a,b,perc )
[w,h,l2]=size(img);
nimage=img;
ns=(1/(perc-b))*w*h*a;
ns=uint8(ns);
for k=1:l2
for u=b :perc
for l=1 :ns
    x=randi(w,1,1);
    y=randi(h,1,1);
    nimage(x,y,k)=nimage(x,y,k)+u;
    if(nimage(x,y,k)>255)
       nimage(x,y,k)=255;
    end
end
end
%imshow(nimage);
end