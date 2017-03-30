function Pop_showResult(handles,imdata,OutputLabel)

axes(handles.axes1);
imshow(imdata);
axes(handles.axes2);
for i=0:9
    if OutputLabel(1)==i         
        text(0.4, 0.4, num2str(i),'fontsize',50)
    end
end
set(handles.axes2,'Visible','off');
