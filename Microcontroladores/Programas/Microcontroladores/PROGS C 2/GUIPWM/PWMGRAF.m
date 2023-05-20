function varargout = PWMGRAF(varargin)
% PWMGRAF MATLAB code for PWMGRAF.fig
%      PWMGRAF, by itself, creates a new PWMGRAF or raises the existing
%      singleton*.
%
%      H = PWMGRAF returns the handle to a new PWMGRAF or the handle to
%      the existing singleton*.
%
%      PWMGRAF('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PWMGRAF.M with the given input arguments.
%
%      PWMGRAF('Property','Value',...) creates a new PWMGRAF or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PWMGRAF_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PWMGRAF_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PWMGRAF

% Last Modified by GUIDE v2.5 11-May-2022 16:21:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PWMGRAF_OpeningFcn, ...
                   'gui_OutputFcn',  @PWMGRAF_OutputFcn, ...
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


% --- Executes just before PWMGRAF is made visible.
function PWMGRAF_OpeningFcn(hObject, eventdata, handles, varargin)
global SerialP;

xlabel('X');
ylabel('Y');
ylim([-8 8]);
xlim([0 5]);
grid on;
hold on;

% Choose default command line output for PWMGRAF
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PWMGRAF wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PWMGRAF_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in encender.
function encender_Callback(hObject, eventdata, handles)
global SerialP;

SerialP = serialport("COM3",9600,"StopBits",1,"DataBits",8,"Parity","none","FlowControl","none","Timeout",1);



% --- Executes on button press in lectura.
function lectura_Callback(hObject, eventdata, handles)
global SerialP;
global Parar;

fopen(SerialP);

Parar = 1;

muestras = 50;
contador=1;

while contador<=muestras && Parar==1

    L='P';
    fprintf(SerialP,'%c',L);

    dato = fscanf(SerialP,'%d%d');

    Dc1=(dato(1)/1030)*100;
    Dc2=(dato(2)/1030)*100;
    
    Fs = 500000;
    f = 1000;
    T=5*(1/f);
    t=0:1/Fs:T-1/Fs;

    save('t.mat',"t");
    
    t1=[t(1) t(2500)];

    set(handles.axes1,'xlim',t1);

    val1= 2.5*square(2*pi*f*t,Dc1)+3;
    val2= 2.5*square(2*pi*f*t,Dc2)-3;

    h1=line(t,val1,'Color','Blue','LineWidth',1.5);
    h2=line(t,val2,'Color','Red','LineWidth',1.5);

    pause(1);

    delete(h1);
    delete(h2);

    contador=contador+1;

end

fclose(SerialP);


% --- Executes on button press in apagar.
function apagar_Callback(hObject, eventdata, handles)
global SerialP;
global Parar;

fopen(SerialP);
Parar = 0;
fclose(SerialP);
delete(SerialP);
