function [ConvertImage, threshold]=imBinarization(GrayImageData, threshold)
% gray image to binarization (balck and white) image
 [len_x len_y]=size(GrayImageData);
% �N��matrix�Ԧ� arrary
temp=[];
for i=1:len_x
    temp=[temp,GrayImageData(i,:)];
end
if nargin<2
    [NCount]= HistEstimation(temp,8);
     threshold = otsu(NCount',len_x*len_y);
end
ConvertImage=zeros(len_x,len_y);
ConvertImage(find(GrayImageData>=threshold))=255;
% 
% for i=1:1:len_x
%     for j=1:1:len_y
%           if (GrayImageData(i,j)>=Th_Gaussian)%�p�G�j��threshold �ন255 ��
%              ConvertImage(i,j)=255;
%           else
%              ConvertImage(i,j)=0;%�p��h��
%           end
%     end
% end
