function varargout = COMADC(varargin)
% COMADC MATLAB code for COMADC.fig
%      COMADC, by itself, creates a new COMADC or raises the existing
%      singleton*.
%
%      H = COMADC returns the handle to a new COMADC or the handle to
%      the existing singleton*.
%
%      COMADC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COMADC.M with the given input arguments.
%
%      COMADC('Property','Value',...) creates a new COMADC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before COMADC_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to COMADC_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help COMADC

% Last Modified by GUIDE v2.5 06-Jun-2022 23:53:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @COMADC_OpeningFcn, ...
                   'gui_OutputFcn',  @COMADC_OutputFcn, ...
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


% --- Executes just before COMADC is made visible.
function COMADC_OpeningFcn(hObject, eventdata, handles, varargin)

global SerialP;

% Choose default command line output for COMADC
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes COMADC wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = COMADC_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in leer.
function leer_Callback(hObject, eventdata, handles)

global SerialP;

fopen(SerialP);

muestras = 50;
contador = 1;

while contador<=muestras 

    
    L='P';
    fprintf(SerialP,'%c',L);

    dato = fscanf(SerialP,'%d%d%d');

    val1 = dato(1)*5/1024;
    val2 = dato(2)*5/1024;
    val3 = dato(3)*5/1024;
    
    set(handles.adc1,'string',num2str(val1));
    set(handles.adc2,'string',num2str(val2));
    set(handles.adc3,'string',num2str(val3));

    contador=contador+1;

end

fclose(SerialP);


% --- Executes on button press in conectar.
function conectar_Callback(hObject, eventdata, handles)
global SerialP;
SerialP = serialport("COM3",9600,"StopBits",1,"DataBits",8,"Parity","none","FlowControl","none","Timeout",1);


% --- Executes on button press in desconectar.
function desconectar_Callback(hObject, eventdata, handles)
global SerialP;
fclose(SerialP);
delete(SerialP);
