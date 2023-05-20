function varargout = GUISensor(varargin)
% GUISENSOR MATLAB code for GUISensor.fig
%      GUISENSOR, by itself, creates a new GUISENSOR or raises the existing
%      singleton*.
%
%      H = GUISENSOR returns the handle to a new GUISENSOR or the handle to
%      the existing singleton*.
%
%      GUISENSOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUISENSOR.M with the given input arguments.
%
%      GUISENSOR('Property','Value',...) creates a new GUISENSOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUISensor_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUISensor_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUISensor

% Last Modified by GUIDE v2.5 18-May-2022 18:10:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUISensor_OpeningFcn, ...
                   'gui_OutputFcn',  @GUISensor_OutputFcn, ...
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


% --- Executes just before GUISensor is made visible.
function GUISensor_OpeningFcn(hObject, eventdata, handles, varargin)

global SerialP;

% Choose default command line output for GUISensor
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = GUISensor_OutputFcn(hObject, eventdata, handles) 
% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in conectar.
function conectar_Callback(hObject, eventdata, handles)

global SerialP;
SerialP = serialport("COM3",9600,"StopBits",1,"DataBits",8,"Parity","none","FlowControl","none","Timeout",1);

% --- Executes on button press in desconectar.
function desconectar_Callback(hObject, eventdata, handles)

global SerialP;
fclose(SerialP);
delete(SerialP);

% --- Executes on button press in leer.
function leer_Callback(hObject, eventdata, handles)


global SerialP;

fopen(SerialP);

muestras = 100;
contador = 1;

dist = [0];

while contador<=muestras

    L='1';
    fprintf(SerialP,'%c',L);

    dato = fscanf(SerialP,'%d');

    clc;

    dist = dato(1);

    save('datos.mat','dato');

    set(handles.dist,'String',num2str(dist));

    pause(1);

    contador=contador+1;

end

fclose(SerialP);
