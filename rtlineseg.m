img=imread('sample1.jpg');

img=rgb2gray(img);
imshow(img);
img=imcomplement(img);
img=imadjust(img);
imshow(img);
hor=sum(img,2);
plot(hor);
asa=[ 1 2 3];
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
lines(pos)=start;
pos=pos+1;
lines(pos)=stop;
pos=pos+1;
end
end
end

lines

rstart=1; rend=0; 
i=1; pos=pos-1;
while(i<=pos-1)
    new=img(lines(i):lines(i+1),:,:);
    imshow(new);
    i=i+2;
    
    [r,c]=size(new);
    
    %calc first pixel
    flag=0;
for(j=1:c)
for(k=r:-1:1)
if(new(k,j)>200)
flag=1;
break;
end
end
if(flag==1)
break;
end
end

x1=k;
y1=j;
    
    %calc last pixel%

    flag=0;
for(j=c:-1:1)
for(k=r:-1:1)
if(new(k,j)>200)
flag=1;
break;
end
end
if(flag==1)
break;
end
end

x2=k;
y2=j;
    

if(x1>x2)
    %negative skew
    t=x1;
    x1=y1;
    y1=t;
    
    t=x2;
    x2=y2;
    y2=t;
    
    y2=y1+y1-y2;
    
    slope=(y2-y1)/(x2-x1);
    angle=atand(slope);
    
    rot=imrotate(new,-angle);
    imshow(rot);
    [rr,cc]=size(rot);
    rend=rstart+rr-1;
    rotated(rstart:rend,1:cc,:)=rot;
    rstart=rend+1; 
else
    %positive skew
    display(asa);
    t=x1;
    x1=y1;
    y1=t;
    
    t=x2;
    x2=y2;
    y2=t;
    
    y2=y1+y1-y2;
    
    slope=(y2-y1)/(x2-x1);
    angle=atand(slope);
    
    rot=imrotate(new,angle);
    
    [rr,cc]=size(rot);
    rend=rstart+rr-1;
    rotated(rstart:rend,1:cc,:)=rot;
    rstart=rend+1; 
end

end

imshow(rotated);