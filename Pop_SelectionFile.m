function NumberData=Pop_SelectionFile(NumberData,handles)
% This code was coding by Tommy Huang in 03/30/2017. First version.

% initital
set(handles.edit_filepath,'string','');
cla(handles.axes1,'reset')
cla(handles.axes2,'reset')
NumberData.flag_selectionFile=0;% initial set flag_selectionFile=0;
if isempty(NumberData.HistoryLoadPath) | (NumberData.HistoryLoadPath==0)  
    [filename, pathname] = uigetfile({'*.*'},'�}���ɮ�');
else
    pathname=NumberData.HistoryLoadPath;
    [filename, pathname] = uigetfile({'*.*'},'�}���ɮ�',pathname);
end
NumberData.HistoryLoadPath=pathname;
if isequal(filename,0)
    msgbox('�S����������ɮ�','File Open Error','error');
    return;
end




str=[pathname filename];
set(handles.edit_filepath,'string',str);
%
pos=strfind(filename,'.');
filetype = filename(pos+1:end);%�^�����ɦW

NumberData.filetype=filetype;
NumberData.str=str;
