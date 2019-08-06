[r,c]=size(img);
start=-1; posw=1;
for i=1:c
	if(start==-1 && hash(i)>0)
		start=i;
		continue;
	else if(start==-1 && hash(i)==0)
	continue;
        end
	if(hash(i)>0)
	continue;
	else
	endnonzero=i;
	i=i-1;
	count=0;
	for(ending=i:c)
		if(hash(ending)==0)
		count=count+1;
		continue;
		else
		break;
		end
	end
	if((ending-endnonzero)<=30)
	i=ending+1;
	continue;
	else
	display(start);
	display(ending-count);
	display(count);
    words(posw)=start;
    posw=posw+1;
    words(posw)=ending-count;
    posw=posw+1;
	start=-1;
	end
	end
end
end
words


posw=posw-1;
wordcount=wordcount+posw/2;
wstart=1;
while(wstart<=posw)
    if(wstart>1)
        wordspace=wordspace+words(wstart)-words(wstart-1);
    end
    wstart=wstart+2;
end

wstart=1;    
while(wstart<=posw)
    wordhash
    wstart=wstart+2;
end

