load mandrill 
img=imread('digits.png');

img=rgb2gray(img);
imshow(img);
img=imcomplement(img);
img=imadjust(img);
imshow(img);

ver=sum(img,1);
plot(ver);
[r,c]=size(ver);

for (i =1:c)
    if(i==1)
    if(ver(i)>450)
        hashw(i)=1;
        continue;
    else
    hashw(i)=0;
    continue;
    end
    end
if ver(i)>450
hashw(i)=hashw(i-1)+1;
else
hashw(i)=0;
end
end

hashw

start=1;
posc=1;
i=1;
while i<=c
   
    if(hashw(i)~=0)
        chars(posc)=i+start-1;
        posc=posc+1;
        for(k=i:c)
            if(hashw(k)~=0)
                continue;
            else
                chars(posc)=k+start-1;
                posc=posc+1;
                i=k+1;
                break;
            end;
        end;
    else
        i=i+1;
        continue;
    end;
i=k+1;
end;

chars(posc)=i-1;
chars

for(k=1:posc-1)
    imshow(img(:,chars(k):chars(k+1),:));
    k=k+1;
end;


% Digits stored in chars().




