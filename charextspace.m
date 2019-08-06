i=lstart;k=lstart+1;
p=wstart; q=wstart+1;
lines(i)
lines(k)
words(p)
words(q)
word=img(lines(i):lines(k),words(p):words(q),:);
ver=sum(word,1);
plot(ver);

for i =1:(words(q)-words(p))
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

start=words(p);
posc=1;
i=1;
while i<=(words(q)-words(p))
   
    if(hashw(i)~=0)
        chars(posc)=i+start-1;
        posc=posc+1;
        for(k=i:(words(q)-words(p)))
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
chars(posc)=words(q);
charcount=charcount+posc;
s=0;
for(i=1:posc)
    if(i<=2)
        continue;
    end
    if(mod(i,2)~=0)
        charspace=charspace+chars(i)-chars(i-1);
    end
end

chars



linemean=linespace/linecount
wordmean=wordspace/wordcount
charmean=charspace/charcount