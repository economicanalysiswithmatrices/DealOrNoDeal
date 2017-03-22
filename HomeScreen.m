function varargout = HomeScreen(varargin)
% HOMESCREEN MATLAB code for HomeScreen.fig
%      HOMESCREEN, by itself, creates a new HOMESCREEN or raises the existing
%      singleton*.
%
%      H = HOMESCREEN returns the handle to a new HOMESCREEN or the handle to
%      the existing singleton*.
%
%      HOMESCREEN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HOMESCREEN.M with the given input arguments.
%
%      HOMESCREEN('Property','Value',...) creates a new HOMESCREEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before HomeScreen_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to HomeScreen_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help HomeScreen

% Last Modified by GUIDE v2.5 15-Jan-2017 21:06:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @HomeScreen_OpeningFcn, ...
                   'gui_OutputFcn',  @HomeScreen_OutputFcn, ...
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


% --- Executes just before HomeScreen is made visible.
function HomeScreen_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to HomeScreen (see VARARGIN)

% Choose default command line output for HomeScreen
handles.output = hObject;
ha = axes('units','normalized', ...
            'position',[0 0 1 1]);
uistack(ha,'bottom');
I=imread('homeimage.jpeg');
hi = imagesc(I);
colormap gray
set(ha,'handlevisibility','off', ...
            'visible','off')


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes HomeScreen wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = HomeScreen_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in playgame.
function playgame_Callback(hObject, eventdata, handles)
% hObject    handle to playgame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.axes1, 'visible', 'on')
axes(handles.axes1)
imshow('noele.jpg')
axes(handles.axes2)
set(handles.axes2, 'visible', 'on')
imshow('speech.png')
[y,fs]=audioread('goodluck.wav');
sound(y,fs);
pause(3)
run GUIdealornodeal.m



% --- Executes on button press in instructions.
function instructions_Callback(hObject, eventdata, handles)
% hObject    handle to instructions (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run instructionscreen.m
