function Process_Recognition(handles,NumberData)

flag_import=NumberData.flag_import; 
CNN_net=NumberData.CNN_net;
flag_video=NumberData.flag_video;
flag_image=NumberData.flag_image;
if (flag_import==1)
    if flag_video==1 && flag_image==0
        videodata=NumberData.videodata;
        numFrames = videodata.NumberOfFrames;
        i=0;
        while (1)
            i=i+1;
            if i>numFrames
                break
            end
     
            imdata =  read(videodata,i);
            garyimage=Process_Preprocessing(imdata);
            [garyimage]=imBinarization(garyimage);
            
            test_data(:,:,1)=garyimage;
            test_data(:,:,2)=garyimage;
            [OutputLabel ] = CNN_test(CNN_net, test_data);
            Result=OutputLabel-1;
            Pop_showResult(handles,imdata,Result);
            pause(0.5)
            drawnow()
            global true;
            if true==1
                break
            end
              
            cla(handles.axes1,'reset')
            cla(handles.axes2,'reset')
        end  
    elseif flag_video==0 && flag_image==1   
        imdata=NumberData.imdata;
        garyimage=Process_Preprocessing(imdata);
        [garyimage]=imBinarization(garyimage);
        
        test_data(:,:,1)=garyimage;
        test_data(:,:,2)=garyimage;

        
        [OutputLabel Pred ] = CNN_test(CNN_net, test_data);
        Result=OutputLabel-1;
        Pop_showResult(handles,imdata,Result);
    end
elseif (flag_import==0)
    msgbox('沒有匯入任何影像或是影片','File Open Error','error');
end