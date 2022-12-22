function [NI] = Butter_worth_high(Image,D0,n)
[H,W,L]=size(Image);
f=zeros(H,W,L);
for k=1:H
    for j=1:W
        D=sqrt(((k-(H/2)).^2)+((j-(W/2)).^2));
        f(k,j)=(1/(1+(D0/D).^(2*n)));
    end
end 

fi=fft2(Image);
fi=fftshift(fi);
reall=real(fi);
imagin=imag(fi);
nreall=f.*reall;
nimagin=f.*imagin;
NI=nreall(:,:)+i*nimagin(:,:);
figure,imshow(uint8(NI));
NI=fftshift(NI);
NI=ifft2(NI);
NI=mat2gray((abs(NI)));
figure,imshow(NI);
end