function result = Gamma(image,gammaVal)
    [H, W, L]=size(image);
result=zeros(H,W,L);
image=im2double(image);
result=im2double(result);
for i = 1 : H
    for j = 1 : W
        if L==3
         result(i,j,1)=1*image(i,j,1).^gammaVal;
          result(i,j,2)=1*image(i,j,2).^gammaVal;
           result(i,j,3)=1*image(i,j,3).^gammaVal;
        else
            result(i,j)=1*image(i,j).^gammaVal;
        end
           
    end
end
image=im2uint8(image);
result=im2uint8(result);
end


