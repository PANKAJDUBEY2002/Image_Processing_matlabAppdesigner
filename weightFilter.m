function [result] = weightFilter(old_image,filter)
%filter = [1 -2 1;2 0.4 2;1 0 1];
filter=double(filter);

p=1;
old_image = double(padarray(old_image,[p,p]));
[h w l] =size(old_image);
result = zeros(h,w,l);
if l==1
    for i=2:h-1
        for j=2:w-1
            s= old_image(i-1:i+1,j-1:j+1);
            sum1=sum(sum(s.*filter))/16;
            result(i,j)=sum1;
            if result(i,j)>255
                result(i,j)=255;
            elseif result(i,j)<0
                result(i,j)=0;
            end
        end
    end
    
else
    
    for k=1:3
        for i=2:h-1
            for j=2:w-1
                s= old_image(i-1:i+1,j-1:j+1,k);
                sum1=sum(sum(s.*filter))/16;
                result(i,j,k)=sum1;
                if result(i,j,k)>255
                    result(i,j,k)=255;
                elseif result(i,j,k)<0
                    result(i,j,k)=0;
                end
            end
        end
    end
end

result = uint8(result);
%imshow(result);
end

