function Pop_showResult(handles,imdata,OutputLabel)


axes(handles.axes1);
imshow(imdata);
axes(handles.axes2);
for i=0:9
    if OutputLabel(1)==i         
        text(0.5, 0.5, num2str(i))
    end
end