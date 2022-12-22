function [result] = HistogramEq(image)
[H, W, L]=size(image);
histo=zeros(256,1);
pdf=zeros(256,1);
pdf=double(pdf);
sk=zeros(256,1);
result=uint8(zeros(H,W));
for i = 1:H
        for j =1:W    
            histo(image(i,j)+1)=histo(image(i,j)+1)+1;
            pdf(image(i,j)+1)=histo(image(i,j)+1)/(H*W);
        end
end
sum=0;
sum=double(sum);
for i = 1:256
       sum=sum+pdf(i);
       sk(i)=255*(sum);
end
for i = 1:H
        for j =1:W    
            result(i,j)=sk(image(i,j)+1);
        end
end
    %bar(result);
end
