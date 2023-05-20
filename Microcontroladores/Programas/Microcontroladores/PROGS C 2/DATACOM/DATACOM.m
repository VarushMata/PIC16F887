function varargout = DATACOM(varargin)
% DATACOM MATLAB code for DATACOM.fig
%      DATACOM, by itself, creates a new DATACOM or raises the existing
%      singleton*.
%
%      H = DATACOM returns the handle to a new DATACOM or the handle to
%      the existing singleton*.
%
%      DATACOM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DATACOM.M with the given input arguments.
%
%      DATACOM('Property','Value',...) creates a new DATACOM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DATACOM_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DATACOM_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DATACOM

% Last Modified by GUIDE v2.5 10-May-2022 18:37:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DATACOM_OpeningFcn, ...
                   'gui_OutputFcn',  @DATACOM_OutputFcn, ...
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


% --- Executes just before DATACOM is made visible.
function DATACOM_OpeningFcn(hObject, eventdata, handles, varargin)

global SerialP;

% Choose default command line output for DATACOM
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DATACOM wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DATACOM_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in escribir1.
function escribir1_Callback(hObject, eventdata, handles)

global SerialP;

fopen(SerialP);

L='2';
fprintf(SerialP,'%c',L);

pause(1);

Erelativo = get(handles.pa,'String');

Eabsoluto =reshape(str2double(regexp(Erelativo,'\d*','match')),3,[])

save("Ea.mat","Eabsoluto");

a=1;
while a<=3
fprintf(SerialP,'%d',Eabsoluto(a));
pause(1);
a=a+1;
end

fclose(SerialP);

% --- Executes on button press in escribir2.
function escribir2_Callback(hObject, eventdata, handles)

global SerialP;

fopen(SerialP);

L='3';
fprintf(SerialP,'%c',L);

pause(1);

Erelativo1 = get(handles.pwm1,'String');

Eabsoluto1 =reshape(str2double(regexp(Erelativo1,'\d*','match')),4,[])

save("Ea1.mat","Eabsoluto1");

Erelativo2 = get(handles.pwm2,'String');

Eabsoluto2 =reshape(str2double(regexp(Erelativo2,'\d*','match')),4,[])

save("Ea2.mat","Eabsoluto2");

a=1;
while a<=4
fprintf(SerialP,'%d',Eabsoluto1(a));
pause(1);
a=a+1;
end

pause(1);

a=1;
while a<=4
fprintf(SerialP,'%d',Eabsoluto2(a));
pause(1);
a=a+1;
end

fclose(SerialP);

% --- Executes on button press in leer.
function leer_Callback(hObject, eventdata, handles)

global SerialP;
fopen(SerialP);

muestras = 30;
contador = 1;

adc1 = [0];
adc2 = [0];
portb = [0];

dt=0.1;

while contador<=muestras

    L='1';
    fprintf(SerialP,'%c',L);

    dato = fscanf(SerialP,'%d%d%d%');

    adc1 = dato(1);
    adc2 = dato(2);
    portb = dato(3);

    save('datos.mat','dato');

    set(handles.pb,'String',num2str(portb));
    set(handles.adc1,'String',num2str(adc1));
    set(handles.adc2,'String',num2str(adc2));

    pause(1);

    contador=contador+1;

end

fclose(SerialP);

% --- Executes on button press in conexion.
function conexion_Callback(hObject, eventdata, handles)
global SerialP;
SerialP = serialport("COM5",9600,"StopBits",1,"DataBits",8,"Parity","none","FlowControl","none","Timeout",1);

% --- Executes on button press in desconectar.
function desconectar_Callback(hObject, eventdata, handles)
global SerialP;
fclose(SerialP);
delete(SerialP);






function pa_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function pa_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pwm1_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function pwm1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pwm2_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function pwm2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
