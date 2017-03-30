function [NCount XIndex]= HistEstimation(data,bpp)
MAX=2^bpp-1;
c=0;
for i=0:1:MAX
    c=c+1;
    NCount(c)=length(find(data>=(i-0.5) & data<(i+0.5)));
    XIndex(c)=i;
end
