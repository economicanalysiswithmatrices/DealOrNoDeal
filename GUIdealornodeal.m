function varargout = GUIdealornodeal(varargin)
% GUIDEALORNODEAL MATLAB code for GUIdealornodeal.fig
%      GUIDEALORNODEAL, by itself, creates a new GUIDEALORNODEAL or raises the existing
%      singleton*.
%
%      H = GUIDEALORNODEAL returns the handle to a new GUIDEALORNODEAL or the handle to
%      the existing singleton*.
%
%      GUIDEALORNODEAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIDEALORNODEAL.M with the given input arguments.
%
%      GUIDEALORNODEAL('Property','Value',...) creates a new GUIDEALORNODEAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUIdealornodeal_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUIdealornodeal_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUIdealornodeal

% Last Modified by GUIDE v2.5 12-Jan-2017 22:26:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUIdealornodeal_OpeningFcn, ...
                   'gui_OutputFcn',  @GUIdealornodeal_OutputFcn, ...
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


% --- Executes just before GUIdealornodeal is made visible.
function GUIdealornodeal_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUIdealornodeal (see VARARGIN)

% Choose default command line output for GUIdealornodeal

%%displays image background
ha = axes('units','normalized', ...
            'position',[0 0 1 1]);
uistack(ha,'bottom');
I=imread('background.jpeg');
hi = imagesc(I)
colormap gray
set(ha,'handlevisibility','off', ...
            'visible','off')

handles.output = hObject;
handles.boxesleft=22;
set(handles.dealtext, 'enable', 'off')
set(handles.dealtext, 'visible', 'off')
randbox;
handles.boxes=ans;
handles.yourbox=[];
handles.offer=0;

   
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUIdealornodeal wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUIdealornodeal_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in box1.
function box1_Callback(hObject, eventdata, handles)
% hObject    handle to box1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.boxesleft==22
    handles.yourbox=handles.boxes(1);
    set(handles.yourboxtext, 'string', 'Your Box: 1');
end
set(handles.box1, 'visible', 'off');
handles.boxesleft=handles.boxesleft -1;
openboxp(handles, 1);
handles.boxes(1)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);

    
% --- Executes on button press in box21.
function box21_Callback(hObject, eventdata, handles)
% hObject    handle to box21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.boxesleft==22
    handles.yourbox=handles.boxes(21);
    set(handles.yourboxtext, 'string', 'Your Box: 21');
end
set(handles.box21, 'visible', 'off');
handles.boxesleft=handles.boxesleft - 1;
openboxp(handles, 21);
handles.boxes(21)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);

% --- Executes on button press in box3.
function box3_Callback(hObject, eventdata, handles)
% hObject    handle to box3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.boxesleft==22
    handles.yourbox=handles.boxes(3);
    set(handles.yourboxtext, 'string', 'Your Box: 3');
end
set(handles.box3, 'visible', 'off');
handles.boxesleft=handles.boxesleft - 1;
openboxp(handles, 3);
handles.boxes(3)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);


% --- Executes on button press in box4.
function box4_Callback(hObject, eventdata, handles)
% hObject    handle to box4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.boxesleft==22
    handles.yourbox=handles.boxes(4);
    set(handles.yourboxtext, 'string', 'Your Box: 4');
end
set(handles.box4, 'visible', 'off');
handles.boxesleft=handles.boxesleft - 1;
openboxp(handles, 4);
handles.boxes(4)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);


% --- Executes on button press in box11.
function box11_Callback(hObject, eventdata, handles)
% hObject    handle to box11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.boxesleft==22
    handles.yourbox=handles.boxes(11);
    set(handles.yourboxtext, 'string', 'Your Box: 11');
end
set(handles.box11, 'visible', 'off');
handles.boxesleft=handles.boxesleft - 1;
openboxp(handles, 11);
handles.boxes(11)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);


% --- Executes on button press in box16.
function box16_Callback(hObject, eventdata, handles)
% hObject    handle to box16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.boxesleft==22
    handles.yourbox=handles.boxes(16);
    set(handles.yourboxtext, 'string', 'Your Box: 16');
end
set(handles.box16, 'visible', 'off');
handles.boxesleft=handles.boxesleft - 1;
openboxp(handles, 16);
handles.boxes(16)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);


% --- Executes on button press in box19.
function box19_Callback(hObject, eventdata, handles)
% hObject    handle to box19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.boxesleft==22
    handles.yourbox=handles.boxes(19);
    set(handles.yourboxtext, 'string', 'Your Box: 19');
end
set(handles.box19, 'visible', 'off');
handles.boxesleft=handles.boxesleft - 1;
openboxp(handles, 19);
handles.boxes(19)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);


% --- Executes on button press in box9.
function box9_Callback(hObject, eventdata, handles)
% hObject    handle to box9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.boxesleft==22
    handles.yourbox=handles.boxes(9);
    set(handles.yourboxtext, 'string', 'Your Box: 9');
end
set(handles.box9, 'visible', 'off');
handles.boxesleft=handles.boxesleft - 1;
openboxp(handles, 9);
handles.boxes(9)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);


% --- Executes on button press in box8.
function box8_Callback(hObject, eventdata, handles)
% hObject    handle to box8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.boxesleft==22
    handles.yourbox=handles.boxes(8);
    set(handles.yourboxtext, 'string', 'Your Box: 8');
end
set(handles.box8, 'visible', 'off');
handles.boxesleft=handles.boxesleft - 1;
openboxp(handles, 8);
handles.boxes(8)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);


% --- Executes on button press in box20.
function box20_Callback(hObject, eventdata, handles)
% hObject    handle to box20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.boxesleft==22
    handles.yourbox=handles.boxes(20);
    set(handles.yourboxtext, 'string', 'Your Box: 20');
end
set(handles.box20, 'visible', 'off');
handles.boxesleft=handles.boxesleft - 1;
openboxp(handles, 20);
handles.boxes(20)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);


% --- Executes on button press in box14.
function box14_Callback(hObject, eventdata, handles)
% hObject    handle to box14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.boxesleft==22
    handles.yourbox=handles.boxes(14);
    set(handles.yourboxtext, 'string', 'Your Box: 14');
end
set(handles.box14, 'visible', 'off');
handles.boxesleft=handles.boxesleft - 1;
openboxp(handles, 14);
handles.boxes(14)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);


% --- Executes on button press in box10.
function box10_Callback(hObject, eventdata, handles)
% hObject    handle to box10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.boxesleft==22
    handles.yourbox=handles.boxes(10);
    set(handles.yourboxtext, 'string', 'Your Box: 10');
end
set(handles.box10, 'visible', 'off');
handles.boxesleft=handles.boxesleft - 1;
openboxp(handles, 10);
handles.boxes(10)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);


% --- Executes on button press in box15.
function box15_Callback(hObject, eventdata, handles)
% hObject    handle to box15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.boxesleft==22
    handles.yourbox=handles.boxes(15);
    set(handles.yourboxtext, 'string', 'Your Box: 15');
end
set(handles.box15, 'visible', 'off');
handles.boxesleft=handles.boxesleft - 1;
openboxp(handles, 15);
handles.boxes(15)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);


% --- Executes on button press in box13.
function box13_Callback(hObject, eventdata, handles)
% hObject    handle to box13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.boxesleft==22
    handles.yourbox=handles.boxes(13);
    set(handles.yourboxtext, 'string', 'Your Box: 13');
end
set(handles.box13, 'visible', 'off');
handles.boxesleft=handles.boxesleft - 1;
openboxp(handles, 13);
handles.boxes(13)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);


% --- Executes on button press in box6.
function box6_Callback(hObject, eventdata, handles)
% hObject    handle to box6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.boxesleft==22
    handles.yourbox=handles.boxes(6);
    set(handles.yourboxtext, 'string', 'Your Box: 6');
end
set(handles.box6, 'visible', 'off');
handles.boxesleft=handles.boxesleft - 1;
openboxp(handles, 6);
handles.boxes(6)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);


% --- Executes on button press in box18.
function box18_Callback(hObject, eventdata, handles)
% hObject    handle to box18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.boxesleft==22
    handles.yourbox=handles.boxes(18);
    set(handles.yourboxtext, 'string', 'Your Box: 18');
end
set(handles.box18, 'visible', 'off');
handles.boxesleft=handles.boxesleft - 1;
openboxp(handles, 18);
handles.boxes(18)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);


% --- Executes on button press in box22.
function box22_Callback(hObject, eventdata, handles)
% hObject    handle to box22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.boxesleft==22
    handles.yourbox=handles.boxes(22);
    set(handles.yourboxtext, 'string', 'Your Box: 22');
end
set(handles.box22, 'visible', 'off');
handles.boxesleft=handles.boxesleft - 1;
openboxp(handles, 22);
handles.boxes(22)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);


% --- Executes on button press in box12.
function box12_Callback(hObject, eventdata, handles)
% hObject    handle to box12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.boxesleft==22
    handles.yourbox=handles.boxes(12);
    set(handles.yourboxtext, 'string', 'Your Box: 12');
end
set(handles.box12, 'visible', 'off');
handles.boxesleft=handles.boxesleft - 1;
openboxp(handles, 12);
handles.boxes(12)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);


% --- Executes on button press in box5.
function box5_Callback(hObject, eventdata, handles)
% hObject    handle to box5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.boxesleft==22
    handles.yourbox=handles.boxes(5);
    set(handles.yourboxtext, 'string', 'Your Box: 5');
end
set(handles.box5, 'visible', 'off');
handles.boxesleft=handles.boxesleft - 1;
openboxp(handles, 5);
handles.boxes(5)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);


% --- Executes on button press in box2.
function box2_Callback(hObject, eventdata, handles)
% hObject    handle to box2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.boxesleft==22
    handles.yourbox=handles.boxes(2);
    set(handles.yourboxtext, 'string', 'Your Box: 2');
end
set(handles.box2, 'visible', 'off');
handles.boxesleft=handles.boxesleft - 1;
openboxp(handles, 2);
handles.boxes(2)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);


% --- Executes on button press in box7.
function box7_Callback(hObject, eventdata, handles)
% hObject    handle to box7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.boxesleft==22
    handles.yourbox=handles.boxes(7);
    set(handles.yourboxtext, 'string', 'Your Box: 7');
end
set(handles.box7, 'visible', 'off');
handles.boxesleft=handles.boxesleft - 1;
openboxp(handles, 7);
handles.boxes(7)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);


% --- Executes on button press in box17.
function box17_Callback(hObject, eventdata, handles)
% hObject    handle to box17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.boxesleft==22
    handles.yourbox=handles.boxes(17);
    set(handles.yourboxtext, 'string', 'Your Box: 17');
end
set(handles.box17, 'visible', 'off');
handles.boxesleft=handles.boxesleft - 1;
openboxp(handles, 17);
handles.boxes(17)=0;
guidata(hObject, handles);
handles = bankoffergui(handles);
guidata(hObject, handles);


% --- Executes on button press in deal.
function deal_Callback(hObject, eventdata, handles)
% hObject    handle to deal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(findall(GUIdealornodeal, '-property', 'enable'),'enable','off');
set(handles.nodeal,'visible','off');
set(handles.deal,'visible','off');
set(handles.deal,'enable','off');
set(handles.offertext, 'visible','off')
set(handles.textboxshow, 'visible','off')
set(handles.dealtext, 'visible', 'on')
set(handles.dealtext, 'enable', 'on')
set(handles.dealtext, 'string', ['Congratulations! You have won £' num2str(handles.offer)]);
set(handles.couldhave, 'enable', 'on')
set(handles.couldhave, 'visible', 'on')

set(handles.couldhave, 'string', 'But you could have won.')
    pause(0.6)
[y,fs]=audioread('drumroll.wav');
sound(y,fs)
set(handles.couldhave, 'string', 'But you could have won..')
    pause(0.6)
    set(handles.couldhave, 'string', 'But you could have won...')
    pause(0.6)
    for i = 1:2
    set(handles.couldhave, 'string', 'But you could have won.')
    pause(0.6)
    set(handles.couldhave, 'string', 'But you could have won..')
    pause(0.6)
    set(handles.couldhave, 'string', 'But you could have won...')
    pause(0.6)
end

pause(0.1)
set(handles.textyourbox, 'enable', 'on')
set(handles.textyourbox, 'string', ['£' num2str(handles.yourbox)])
set(handles.textyourbox, 'visible', 'on')

if handles.offer>handles.yourbox
    
    set(handles.box1, 'visible', 'off');
    set(handles.box2, 'visible', 'off');
    set(handles.box3, 'visible', 'off');
    set(handles.box4, 'visible', 'off');
    set(handles.box5, 'visible', 'off');
    set(handles.box6, 'visible', 'off');
    set(handles.box7, 'visible', 'off');
    set(handles.box8, 'visible', 'off');
    set(handles.box9, 'visible', 'off');
    set(handles.box10, 'visible', 'off');
    set(handles.box11, 'visible', 'off');
    set(handles.box12, 'visible', 'off');
    set(handles.box13, 'visible', 'off');
    set(handles.box14, 'visible', 'off');
    set(handles.box15, 'visible', 'off');
    set(handles.box16, 'visible', 'off');
    set(handles.box17, 'visible', 'off');
    set(handles.box18, 'visible', 'off');
    set(handles.box19, 'visible', 'off');
    set(handles.box20, 'visible', 'off');
    set(handles.box21, 'visible', 'off');
    set(handles.box22, 'visible', 'off');
    set(handles.endgame, 'enable', 'off')
    set(handles.endgame, 'visible', 'off')
    set(handles.yourboxtext, 'visible', 'off')
    pause(3)
    set(handles.couldhave, 'visible', 'off')
    set(handles.dealtext, 'visible', 'off')
    set(handles.textyourbox, 'enable', 'off')
    set(handles.textyourbox, 'visible', 'off')
    
   
   
    set(handles.beatbanker, 'enable', 'on')
    set(handles.beatbanker, 'visible', 'on')

elseif handles.offer<handles.yourbox
    
    set(handles.box1, 'visible', 'off');
    set(handles.box2, 'visible', 'off');
    set(handles.box3, 'visible', 'off');
    set(handles.box4, 'visible', 'off');
    set(handles.box5, 'visible', 'off');
    set(handles.box6, 'visible', 'off');
    set(handles.box7, 'visible', 'off');
    set(handles.box8, 'visible', 'off');
    set(handles.box9, 'visible', 'off');
    set(handles.box10, 'visible', 'off');
    set(handles.box11, 'visible', 'off');
    set(handles.box12, 'visible', 'off');
    set(handles.box13, 'visible', 'off');
    set(handles.box14, 'visible', 'off');
    set(handles.box15, 'visible', 'off');
    set(handles.box16, 'visible', 'off');
    set(handles.box17, 'visible', 'off');
    set(handles.box18, 'visible', 'off');
    set(handles.box19, 'visible', 'off');
    set(handles.box20, 'visible', 'off');
    set(handles.box21, 'visible', 'off');
    set(handles.box22, 'visible', 'off');
    set(handles.endgame, 'enable', 'off')
    set(handles.endgame, 'visible', 'off')
    set(handles.yourboxtext, 'visible', 'off')
    
    pause(3)
    set(handles.dealtext, 'visible', 'off')
    set(handles.couldhave, 'visible', 'off')
    set(handles.textyourbox, 'enable', 'off')
    set(handles.textyourbox, 'visible', 'off')
  
    
  
 
   
    
   
   
    set(handles.unlucky, 'enable', 'on')
    set(handles.unlucky, 'visible', 'on')
end





guidata(hObject,handles);



% --- Executes on button press in nodeal.
function nodeal_Callback(hObject, eventdata, handles)
% hObject    handle to nodeal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


set(findall(GUIdealornodeal, '-property', 'enable'),'enable','on');

set(handles.nodeal,'visible','off');
set(handles.nodeal,'enable','off');
set(handles.deal,'visible','off');
set(handles.deal,'enable','off');
set(handles.offertext, 'enable','off')
set(handles.offertext, 'visible','off')
set(handles.textboxshow, 'visible','off')
guidata(hObject,handles);
