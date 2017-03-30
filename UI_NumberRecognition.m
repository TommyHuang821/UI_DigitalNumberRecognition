function varargout = UI_NumberRecognition(varargin)
% UI_NUMBERRECOGNITION MATLAB code for UI_NumberRecognition.fig


% Edit the above text to modify the response to help UI_NumberRecognition

% Last Modified by GUIDE v2.5 30-Mar-2017 14:00:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @UI_NumberRecognition_OpeningFcn, ...
                   'gui_OutputFcn',  @UI_NumberRecognition_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before UI_NumberRecognition is made visible.
function UI_NumberRecognition_OpeningFcn(hObject, eventdata, handles, varargin)
% Choose default command line output for UI_NumberRecognition
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes UI_NumberRecognition wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = UI_NumberRecognition_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;



function edit_filepath_Callback(hObject, eventdata, handles)
function edit_filepath_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_Browse.
function pushbutton_Browse_Callback(hObject, eventdata, handles)
global NumberData;
NumberData=Pop_initialization(NumberData);
load('Model_NumberRecognition');
NumberData.CNN_net=CNN_net;
NumberData=Pop_SelectionFile(NumberData,handles);


% --- Executes on button press in pushbutton_process.
function pushbutton_process_Callback(hObject, eventdata, handles)
global NumberData;
NumberData=Pop_IndentifyAndLoadFile(handles,NumberData);
Process_Recognition(handles,NumberData);

% --- Executes on button press in checkbox_Image.
function checkbox_Image_Callback(hObject, eventdata, handles)
function checkbox_video_Callback(hObject, eventdata, handles)


% --- Executes on button press in pushbutton_stop.
function pushbutton_stop_Callback(hObject, eventdata, handles)
global true;
true=1;

