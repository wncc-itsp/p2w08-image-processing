function varargout = factorial(varargin)
% FACTORIAL M-file for factorial.fig
%      FACTORIAL, by itself, creates a new FACTORIAL or raises the existing
%      singleton*.
%
%      H = FACTORIAL returns the handle to a new FACTORIAL or the handle to
%      the existing singleton*.
%
%      FACTORIAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FACTORIAL.M with the given input arguments.
%
%      FACTORIAL('Property','Value',...) creates a new FACTORIAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before factorial_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to factorial_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help factorial

% Last Modified by GUIDE v2.5 25-May-2013 17:13:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @factorial_OpeningFcn, ...
                   'gui_OutputFcn',  @factorial_OutputFcn, ...
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


% --- Executes just before factorial is made visible.
function factorial_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to factorial (see VARARGIN)

% Choose default command line output for factorial
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes factorial wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = factorial_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function number_Callback(hObject, eventdata, handles)
% hObject    handle to number (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of number as text
%        str2double(get(hObject,'String')) returns contents of number as a double


% --- Executes during object creation, after setting all properties.
function number_CreateFcn(hObject, eventdata, handles)
% hObject    handle to number (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in factorial7.
function factorial7_Callback(hObject, eventdata, handles)
% hObject    handle to factorial7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n= str2num(get(handles.number,'string'));
f=1;
for i=1:n
    f=i*f;
end
ff=num2str(f);
set(handles.answer7,'string',ff)
