function varargout = GRAFPWM(varargin)
% GRAFPWM MATLAB code for GRAFPWM.fig
%      GRAFPWM, by itself, creates a new GRAFPWM or raises the existing
%      singleton*.
%
%      H = GRAFPWM returns the handle to a new GRAFPWM or the handle to
%      the existing singleton*.
%
%      GRAFPWM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAFPWM.M with the given input arguments.
%
%      GRAFPWM('Property','Value',...) creates a new GRAFPWM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GRAFPWM_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GRAFPWM_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GRAFPWM

% Last Modified by GUIDE v2.5 09-May-2022 17:12:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GRAFPWM_OpeningFcn, ...
                   'gui_OutputFcn',  @GRAFPWM_OutputFcn, ...
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


% --- Executes just before GRAFPWM is made visible.
function GRAFPWM_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GRAFPWM (see VARARGIN)

global SerialP;

xlabel('PULSOS(x)');
ylabel('VALOR(PWM)');
ylim([0 5.5]);
xlim([0 50]);
grid on;
hold on;

% Choose default command line output for GRAFPWM
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GRAFPWM wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GRAFPWM_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global SerialP;
global Parar;

fopen(SerialP);
Parar = 0;
fclose(SerialP);
delete(SerialP);


% --- Executes on button press in Inicio.
function Inicio_Callback(hObject, eventdata, handles)
% hObject    handle to Inicio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global SerialP;
SerialP = serialport("COM3",9600,"StopBits",1,"DataBits",8,"Parity","none","FlowControl","none","Timeout",1);

% --- Executes on button press in Data.
function Data_Callback(hObject, eventdata, handles)
% hObject    handle to Data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global SerialP;
global Parar;

fopen(SerialP);

Parar = 1;

muestras = 50;
contador = 1;

tiempo=[0];
salida1 = [0];
salida2 = [0];

dt=0.1;

limx = [0 50];
set(handles.GRAF,'xlim',limx);

while contador<=muestras && Parar==1

    
    L='P';
    fprintf(SerialP,'%c',L);

    dato = fscanf(SerialP,'%d%d');

    val1(contador) = dato(1)*5/1024;
    val2(contador) = dato(2)*5/1024;
    
%{
    save('datos.mat','dato');

    save('valor1.mat','val1');
    save('valor2.mat','val2');
%}
    salida1 = [salida1 val1(contador)];
    salida2 = [salida2 val2(contador)];

    tiempo = [tiempo tiempo(end)+1];

    line(tiempo,salida1,'Color','Blue','LineWidth',2.5);
    pause(dt);
    line(tiempo,salida2,'Color','Red','LineWidth',2.5);
    pause(dt);

    contador=contador+1;

end

fclose(SerialP);