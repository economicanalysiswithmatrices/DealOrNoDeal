function varargout = instructionscreen(varargin)
% INSTRUCTIONSCREEN MATLAB code for instructionscreen.fig
%      INSTRUCTIONSCREEN, by itself, creates a new INSTRUCTIONSCREEN or raises the existing
%      singleton*.
%
%      H = INSTRUCTIONSCREEN returns the handle to a new INSTRUCTIONSCREEN or the handle to
%      the existing singleton*.
%
%      INSTRUCTIONSCREEN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INSTRUCTIONSCREEN.M with the given input arguments.
%
%      INSTRUCTIONSCREEN('Property','Value',...) creates a new INSTRUCTIONSCREEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before instructionscreen_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to instructionscreen_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help instructionscreen

% Last Modified by GUIDE v2.5 11-Jan-2017 00:11:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @instructionscreen_OpeningFcn, ...
                   'gui_OutputFcn',  @instructionscreen_OutputFcn, ...
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


% --- Executes just before instructionscreen is made visible.
function instructionscreen_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to instructionscreen (see VARARGIN)

% Choose default command line output for instructionscreen
handles.output = hObject;
handles.output = hObject;
ha = axes('units','normalized', ...
            'position',[0 0 1 1]);
uistack(ha,'bottom');
I=imread('instructions.jpeg');
hi = imagesc(I)
colormap gray
set(ha,'handlevisibility','off', ...
            'visible','off')


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes instructionscreen wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = instructionscreen_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in playgame2.
function playgame2_Callback(hObject, eventdata, handles)
% hObject    handle to playgame2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run GUIdealornodeal.m

% --- Executes on button press in returnhome.
function returnhome_Callback(hObject, eventdata, handles)
% hObject    handle to returnhome (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run HomeScreen.m