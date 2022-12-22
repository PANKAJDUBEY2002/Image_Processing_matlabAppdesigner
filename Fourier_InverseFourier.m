function [new_image] = Fourier_InverseFourier (a)
%imshow(a),
f1=fft2(a);
f2=fftshift(f1);
n=abs(f2);
n=log(1+n);
n=mat2gray(n);
%figure,imshow(n);
f3=fftshift(f2);
f3=ifft2(f3);
f3=abs(f3);
f3=log(f3);
f3=mat2gray(f3);
%imshow(f3)
end

