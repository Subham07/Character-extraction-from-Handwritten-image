img=imread('sample1.jpg');

img=rgb2gray(img);
imshow(img);
img=imcomplement(img);
img=imadjust(img);
imshow(img);
hor=sum(img,2);
plot(hor);
charcount=0; charspace=0;
wordcount=0; wordspace=0;
linecount=0; linespace=0;
start=1;
stop=-1;
 pos=1;
t=-1;
[r,c]=size(img);
for(i=1:r)
if(hor(i)<10000)
continue;
else
start=i;
for(k=i:r)
if(hor(k)<10000)
t=stop;
stop=k-1;
i=k;
break;
end
end
if(t~=stop)
display(start);
display(stop);
lines(pos)=start;
pos=pos+1;
lines(pos)=stop;
pos=pos+1;
end
end
end
lines

lstart=1; lend=2;
posl=pos;
posl=posl-1;
linecount=posl/2;

linecount=0;
lstart=1;
while(lstart<=posl)
    
    if((lines(lstart+1)-lines(lstart))>=4)
    linecount=linecount+1;
    end
    
    lstart=lstart+2;
end

lstart=1;


while(lstart<=posl)
    if(lstart>1)
        if((lines(lstart+1)-lines(lstart))>=4)
        linespace=linespace+lines(lstart)-lines(lstart-1);
        end
    end
    lstart=lstart+2;
end


