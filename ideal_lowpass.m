function [NI] = ideal_lowpass(Image,D0)
[H,W,L]=size(Image);
filter=zeros(H,W,L);
for j=1:H
    for k=1:W
        dis=sqrt((j-(H/2)).^2+(k-(W/2)).^2);
        if(dis<=D0)
            filter(j,k)=1;
        else
            filter(j,k)=0;
        end
    end
end 

fi=fft2(Image);
fi=fftshift(fi);
reall=real(fi);
imagin=imag(fi);
nreall=filter.*reall;
nimagin=filter.*imagin;
NI=nreall(:,:)+i*nimagin(:,:);
figure,imshow(NI);
NI=fftshift(NI);
NI=ifft2(NI);
NI=mat2gray((abs(NI)));
%figure,imshow(NI);
end