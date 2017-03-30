function NumberData=Pop_IndentifyAndLoadFile(handles,NumberData)
value_video = get(handles.checkbox_video, 'Value');
if value_video==1
    NumberData.flag_video=1;
else
    NumberData.flag_video=0;
end

value_image = get(handles.checkbox_Image, 'Value');
if value_image==1
    NumberData.flag_image=1;
else
    NumberData.flag_image=0;
end
str=NumberData.str;
NumberData.flag_import=0;
flag_video=NumberData.flag_video;
flag_image=NumberData.flag_image;

if flag_video==1 && flag_image==1
    error('Please select only one uploadfile type')
elseif flag_video==0 && flag_image==0
    error('Please select one uploadfile type')
elseif flag_video==1 && flag_image==0
    videodata = VideoReader(str);
    NumberData.videodata=videodata;
    NumberData.flag_import=1;
elseif flag_video==0 && flag_image==1
    imdata=imread(str);    
    NumberData.imdata=imdata;
    NumberData.flag_import=1;
end

