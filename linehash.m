i=lstart; k=i+1;
new=img(lines(i):lines(k),:,:);
ver=sum(new,1);
plot(ver);
[r,c]=size(img);
for i =1:c
if ver(i)>450
hash(i)=hash(i-1)+1;
else
hash(i)=0;
end
end

hash
wordextract