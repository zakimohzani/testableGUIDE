function varargout = genError(varargin)
% GENERROR MATLAB code for genError.fig
%      GENERROR, by itself, creates a new GENERROR or raises the existing
%      singleton*.
%
%      H = GENERROR returns the handle to a new GENERROR or the handle to
%      the existing singleton*.
%
%      GENERROR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GENERROR.M with the given input arguments.
%
%      GENERROR('Property','Value',...) creates a new GENERROR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before genError_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to genError_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help genError

% Last Modified by GUIDE v2.5 05-Jul-2016 15:48:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @genError_OpeningFcn, ...
                   'gui_OutputFcn',  @genError_OutputFcn, ...
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


% --- Executes just before genError is made visible.
function genError_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to genError (see VARARGIN)

% Choose default command line output for genError
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes genError wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = genError_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in OKButton.
function OKButton_Callback(hObject, eventdata, handles)
% hObject    handle to OKButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

error('Here is an error');