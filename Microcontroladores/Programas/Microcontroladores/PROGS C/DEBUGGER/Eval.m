function varargout = Eval(varargin)
% EVAL MATLAB code for Eval.fig
%      EVAL, by itself, creates a new EVAL or raises the existing
%      singleton*.
%
%      H = EVAL returns the handle to a new EVAL or the handle to
%      the existing singleton*.
%
%      EVAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EVAL.M with the given input arguments.
%
%      EVAL('Property','Value',...) creates a new EVAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Eval_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Eval_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Eval

% Last Modified by GUIDE v2.5 02-Apr-2020 18:52:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Eval_OpeningFcn, ...
                   'gui_OutputFcn',  @Eval_OutputFcn, ...
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


% --- Executes just before Eval is made visible.
function Eval_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Eval (see VARARGIN)
handles.a1=0;
handles.a2=0;
handles.a3=0;
handles.a4=0;
handles.output=hObject;

handles.matriz(1,1:4)=[0 0 0 0];
handles.selector=2;
stringmatriz=num2str(handles.matriz);
selector={stringmatriz};
set(handles.Almacenamiento,'String',selector);

axis([-50 50 -50 50 -50 50]);
rotate3d(handles.axes2,'on');
plot3(0,0,0);
% Choose default command line output for Eval
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Eval wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Eval_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function Eje1_Callback(hObject, eventdata, handles)
% hObject    handle to Eje1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.a1=hObject.Value;
guidata(hObject, handles);
axis([-50 50 -50 50 -50 50]);
cla;
T00=Trans(25.8,'Tz');
[T04,T01,T12,T23,T34] = RobotScara(handles.a1,handles.a2,handles.a3,handles.a4);
DrawRobots(T00,T01,T12,T23,T34);

n=sqrt(((T04(1,4))*(T04(1,4)))+((T04(2,4))*(T04(2,4))));
set(handles.PosX,'String',num2str(T04(1,4)));
set(handles.PosY,'String',num2str(T04(2,4)));
set(handles.PosZ,'String',num2str(T04(3,4)));
set(handles.PosO,'String',num2str(atand((T04(1,4))/n)));

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% --- Executes during object creation, after setting all properties.
function Eje1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Eje1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function Eje2_Callback(hObject, eventdata, handles)
% hObject    handle to Eje2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.a2=hObject.Value;
guidata(hObject, handles);
axis([-50 50 -50 50 -50 50]);
cla;
T00=Trans(25.8,'Tz');
[T04,T01,T12,T23,T34] = RobotScara(handles.a1,handles.a2,handles.a3,handles.a4);
DrawRobots(T00,T01,T12,T23,T34);

n=sqrt(((T04(1,4))*(T04(1,4)))+((T04(2,4))*(T04(2,4))));
set(handles.PosX,'String',num2str(T04(1,4)));
set(handles.PosY,'String',num2str(T04(2,4)));
set(handles.PosZ,'String',num2str(T04(3,4)));
set(handles.PosO,'String',num2str(atand((T04(1,4))/n)));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function Eje2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Eje2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function Eje3_Callback(hObject, eventdata, handles)
% hObject    handle to Eje3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.a3=hObject.Value;
guidata(hObject, handles);
axis([-50 50 -50 50 -50 50]);

cla;
T00=Trans(25.8,'Tz');
T00=Trans(25.8,'Tz');
[T04,T01,T12,T23,T34] = RobotScara(handles.a1,handles.a2,handles.a3,handles.a4);
DrawRobots(T00,T01,T12,T23,T34);

n=sqrt(((T04(1,4))*(T04(1,4)))+((T04(2,4))*(T04(2,4))));
set(handles.PosX,'String',num2str(T04(1,4)));
set(handles.PosY,'String',num2str(T04(2,4)));
set(handles.PosZ,'String',num2str(T04(3,4)));
set(handles.PosO,'String',num2str(atand((T04(1,4))/n)));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function Eje3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Eje3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function Eje4_Callback(hObject, eventdata, handles)
% hObject    handle to Eje4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.a4=hObject.Value;
guidata(hObject, handles);
axis([-50 50 -50 50 -50 50]);
cla;
T00=Trans(25.8,'Tz');
[T04,T01,T12,T23,T34] = RobotScara(handles.a1,handles.a2,handles.a3,handles.a4);
DrawRobots(T00,T01,T12,T23,T34);

n=sqrt(((T04(1,4))*(T04(1,4)))+((T04(2,4))*(T04(2,4))));
set(handles.PosX,'String',num2str(T04(1,4)));
set(handles.PosY,'String',num2str(T04(2,4)));
set(handles.PosZ,'String',num2str(T04(3,4)));
set(handles.PosO,'String',num2str(atand((T04(1,4))/n)));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function Eje4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Eje4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in establecer.
function establecer_Callback(hObject, eventdata, handles)
% hObject    handle to establecer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a1=handles.a1;
a2=handles.a2;
a3=handles.a3;
a4=handles.a4;
selector=handles.selector;
handles.matriz(selector,1:4)=[a1,a2,a3,a4];
handles.selector=handles.selector+1;
stringmatriz=num2str(handles.matriz);
matriz={stringmatriz};
set(handles.Almacenamiento,'String',matriz);
guidata(hObject,handles);

% --- Executes on button press in ejecutar.
function ejecutar_Callback(hObject, eventdata, handles)
% hObject    handle to ejecutar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selector=get(handles.Almacenamiento,'Value');
handles.a1=handles.matriz(selector,1);
handles.a2=handles.matriz(selector,2);
handles.a3=handles.matriz(selector,3);
handles.a4=handles.matriz(selector,4);
axis([-50 50 -50 50 -50 50]);
cla;
T00=Trans(25.8,'Tz');
[T04,T01,T12,T23,T34] = RobotScara(handles.a1,handles.a2,handles.a3,handles.a4);
DrawRobots(T00,T01,T12,T23,T34);
n=sqrt(((T04(1,4))*(T04(1,4)))+((T04(2,4))*(T04(2,4))));
set(handles.PosX,'String',num2str(T04(1,4)));
set(handles.PosY,'String',num2str(T04(2,4)));
set(handles.PosZ,'String',num2str(T04(3,4)));
set(handles.PosO,'String',num2str(atand((T04(1,4))/n)));
guidata(hObject,handles);
% --- Executes on button press in cargar.
function cargar_Callback(hObject, eventdata, handles)
% hObject    handle to cargar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('puntos.mat','x','y');
handles.matriz=x;
handles.contador=y;
stringmatriz=num2str(handles.matriz);
total={stringmatriz};
set(handles.Almacenamiento,'String',total);
guidata(hObject,handles);

% --- Executes on button press in guardar.
function guardar_Callback(hObject, eventdata, handles)
% hObject    handle to guardar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=handles.matriz;
y=handles.selector;
save('puntos.mat','x','y');

% --- Executes on button press in limpiar.
function limpiar_Callback(hObject, eventdata, handles)
% hObject    handle to limpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.matriz=[0 0 0 0];
handles.selector=2;
stringmatriz=num2str(handles.matriz);
selector={stringmatriz};
set(handles.Almacenamiento,'String',selector);
guidata(hObject,handles);

% --- Executes on selection change in Almacenamiento.
function Almacenamiento_Callback(hObject, eventdata, handles)
% hObject    handle to Almacenamiento (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selector=get(hObject,'Value');
ax1=handles.a1;
ax2=handles.a2;
ax3=handles.a3;
ax4=handles.a4;
if ax1>handles.matriz(selector,1)
    for ax1=ax1:-1:handles.matriz(selector,1)
        handles.a1=ax1;
        handles.a2=ax2;
        handles.a3=ax3;
        handles.a4=ax4;
        cla;
        T00=Trans(25.8,'Tz');
[T04,T01,T12,T23,T34] = RobotScara(handles.a1,handles.a2,handles.a3,handles.a4);
DrawRobots(T00,T01,T12,T23,T34);
    end
end
 if ax1<handles.matriz(selector,1)
    for ax1=ax1:+1:handles.matriz(selector,1)
        handles.a1=ax1;
        handles.a2=ax2;
        handles.a3=ax3;
        handles.a4=ax4;
    end
 end       

if ax2>handles.matriz(selector,2)
    for ax2=ax2:-1:handles.matriz(selector,2)
        handles.a1=ax1;
        handles.a2=ax2;
        handles.a3=ax3;
        handles.a4=ax4;
    end
end
 if ax2<handles.matriz(selector,2)
    for ax2=ax2:+1:handles.matriz(selector,2)
        handles.a1=ax1;
        handles.a2=ax2;
        handles.a3=ax3;
        handles.a4=ax4;
       
    end
 end       

 if ax3>handles.matriz(selector,3)
    for ax3=ax3:-1:handles.matriz(selector,3)
        handles.a1=ax1;
        handles.a2=ax2;
        handles.a3=ax3;
        handles.a4=ax4;
       
    end
end
 if ax3<handles.matriz(selector,3)
    for ax3=ax3:+1:handles.matriz(selector,3)
        handles.a1=ax1;
        handles.a2=ax2;
        handles.a3=ax3;
        handles.a4=ax4;
        
    end
 end       

 if ax4>handles.matriz(selector,4)
    for ax4=ax4:-1:handles.matriz(selector,4)
        handles.a1=ax1;
        handles.a2=ax2;
        handles.a3=ax3;
        handles.a4=ax4;
        
    end
end
 if ax4<handles.matriz(selector,4)
    for ax4=ax4:+1:handles.matriz(selector,4)
        handles.a1=ax1;
        handles.a2=ax2;
        handles.a3=ax3;
        handles.a4=ax4;
       
    end
end       
% Hints: contents = cellstr(get(hObject,'String')) returns Almacenamiento contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Almacenamiento

% --- Executes during object creation, after setting all properties.
function Almacenamiento_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Almacenamiento (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
