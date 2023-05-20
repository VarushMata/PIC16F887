function varargout = BTCAR(varargin)
% BTCAR MATLAB code for BTCAR.fig
%      BTCAR, by itself, creates a new BTCAR or raises the existing
%      singleton*.
%
%      H = BTCAR returns the handle to a new BTCAR or the handle to
%      the existing singleton*.
%
%      BTCAR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BTCAR.M with the given input arguments.
%
%      BTCAR('Property','Value',...) creates a new BTCAR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before BTCAR_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to BTCAR_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BTCAR

% Last Modified by GUIDE v2.5 29-May-2022 01:09:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @BTCAR_OpeningFcn, ...
                   'gui_OutputFcn',  @BTCAR_OutputFcn, ...
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


% --- Executes just before BTCAR is made visible.
function BTCAR_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to BTCAR (see VARARGIN)

% Choose default command line output for BTCAR
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes BTCAR wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = BTCAR_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in up.
function up_Callback(hObject, eventdata, handles)

global SerialP;

fopen(SerialP);

L='1';
fprintf(SerialP,'%c',L);

x = get(handles.lento,'Value')
y = get(handles.regular,'Value')
z = get(handles.rapido,'Value')

if (x == 1) && (y == 0) && (z == 0)

    L='1';
    fprintf(SerialP,'%c',L);

elseif (x == 0) && (y == 1) && (z == 0)

    L='2';
    fprintf(SerialP,'%c',L);

elseif (x == 0) && (y == 0) && (z == 1)

    L='3';
    fprintf(SerialP,'%c',L);

end

fclose(SerialP);
% --- Executes on button press in izq.
function izq_Callback(hObject, eventdata, handles)

global SerialP;

fopen(SerialP);

L='4';
fprintf(SerialP,'%c',L);

x = get(handles.lento,'Value')
y = get(handles.regular,'Value')
z = get(handles.rapido,'Value')

if (x == 1) && (y == 0) && (z == 0)

    L='1';
    fprintf(SerialP,'%c',L);

elseif (x == 0) && (y == 1) && (z == 0)

    L='2';
    fprintf(SerialP,'%c',L);

elseif (x == 0) && (y == 0) && (z == 1)

    L='3';
    fprintf(SerialP,'%c',L);

else

    L='1';
    fprintf(SerialP,'%c',L);

end

fclose(SerialP);

% --- Executes on button press in down.
function down_Callback(hObject, eventdata, handles)

global SerialP;

fopen(SerialP);

L='2';
fprintf(SerialP,'%c',L);

x = get(handles.lento,'Value')
y = get(handles.regular,'Value')
z = get(handles.rapido,'Value')

if (x == 1) && (y == 0) && (z == 0)

    L='1';
    fprintf(SerialP,'%c',L);

elseif (x == 0) && (y == 1) && (z == 0)

    L='2';
    fprintf(SerialP,'%c',L);

elseif (x == 0) && (y == 0) && (z == 1)

    L='3';
    fprintf(SerialP,'%c',L);

else

    L='1';
    fprintf(SerialP,'%c',L);

end

fclose(SerialP);

% --- Executes on button press in der.
function der_Callback(hObject, eventdata, handles)

global SerialP;

fopen(SerialP);

L='3';
fprintf(SerialP,'%c',L);

x = get(handles.lento,'Value')
y = get(handles.regular,'Value')
z = get(handles.rapido,'Value')

if (x == 1) && (y == 0) && (z == 0)

    L='1';
    fprintf(SerialP,'%c',L);

elseif (x == 0) && (y == 1) && (z == 0)

    L='2';
    fprintf(SerialP,'%c',L);

elseif (x == 0) && (y == 0) && (z == 1)

    L='3';
    fprintf(SerialP,'%c',L);

else

    L='1';
    fprintf(SerialP,'%c',L);

end

fclose(SerialP);

% --- Executes on button press in cerrar.
function cerrar_Callback(hObject, eventdata, handles)

global SerialP;

fopen(SerialP);

L='0';
fprintf(SerialP,'%c',L);

x = get(handles.lento,'Value')
y = get(handles.regular,'Value')
z = get(handles.rapido,'Value')

if (x == 1) && (y == 0) && (z == 0)

    L='1';
    fprintf(SerialP,'%c',L);

elseif (x == 0) && (y == 1) && (z == 0)

    L='2';
    fprintf(SerialP,'%c',L);

elseif (x == 0) && (y == 0) && (z == 1)

    L='3';
    fprintf(SerialP,'%c',L);

else

    L='1';
    fprintf(SerialP,'%c',L);

end

fclose(SerialP);

% --- Executes on button press in play.
function play_Callback(hObject, eventdata, handles)

global SerialP;

fopen(SerialP);

a = get(handles.demostracion,'Value')
b = get(handles.medicion,'Value')
c = get(handles.sg,'Value')
d = get(handles.control,'Value')

if (a == 1) && (b == 0) && (c == 0) && (d == 0)

    L='2';
    fprintf(SerialP,'%c',L);

elseif (a == 0) && (b == 1) && (c == 0) && (d == 0)

    L='1';
    fprintf(SerialP,'%c',L);

    dato = fscanf(SerialP,'%d');

    set(handles.dist,'String',num2str(dato));

elseif (a == 0) && (b == 0) && (c == 1) && (d == 0)

    L='4';
    fprintf(SerialP,'%c',L);

elseif (a == 0) && (b == 0) && (c == 0) && (d == 1)

    L='3';
    fprintf(SerialP,'%c',L);

else

    L='0';
    fprintf(SerialP,'%c',L);

end

fclose(SerialP);

% --- Executes on button press in lento.
function lento_Callback(hObject, eventdata, handles)
% Hint: get(hObject,'Value') returns toggle state of lento
% --- Executes on button press in regular.
function regular_Callback(hObject, eventdata, handles)
% Hint: get(hObject,'Value') returns toggle state of regular
% --- Executes on button press in rapido.
function rapido_Callback(hObject, eventdata, handles)
% Hint: get(hObject,'Value') returns toggle state of rapido
% --- Executes on button press in demostracion.
function demostracion_Callback(hObject, eventdata, handles)
% Hint: get(hObject,'Value') returns toggle state of demostracion
% --- Executes on button press in medicion.
function medicion_Callback(hObject, eventdata, handles)
% Hint: get(hObject,'Value') returns toggle state of medicion
% --- Executes on button press in sg.
function sg_Callback(hObject, eventdata, handles)
% Hint: get(hObject,'Value') returns toggle state of sg
% --- Executes on button press in control.
function control_Callback(hObject, eventdata, handles)
% Hint: get(hObject,'Value') returns toggle state of control

% --- Executes on button press in conectar.
function conectar_Callback(hObject, eventdata, handles)

global SerialP;
SerialP = serialport("COM3",9600,"StopBits",1,"DataBits",8,"Parity","none","FlowControl","none","Timeout",1);

% --- Executes on button press in desconectar.
function desconectar_Callback(hObject, eventdata, handles)

global SerialP;
fclose(SerialP);
delete(SerialP);
