function varargout = GraphPlotter(varargin)
% GRAPHPLOTTER MATLAB code for GraphPlotter.fig
%      GRAPHPLOTTER, by itself, creates a new GRAPHPLOTTER or raises the existing
%      singleton*.
%
%      H = GRAPHPLOTTER returns the handle to a new GRAPHPLOTTER or the handle to
%      the existing singleton*.
%
%      GRAPHPLOTTER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAPHPLOTTER.M with the given input arguments.
%
%      GRAPHPLOTTER('Property','Value',...) creates a new GRAPHPLOTTER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GraphPlotter_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GraphPlotter_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GraphPlotter

% Last Modified by GUIDE v2.5 09-Apr-2020 11:37:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GraphPlotter_OpeningFcn, ...
                   'gui_OutputFcn',  @GraphPlotter_OutputFcn, ...
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


% --- Executes just before GraphPlotter is made visible.
function GraphPlotter_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GraphPlotter (see VARARGIN)

% Choose default command line output for GraphPlotter
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GraphPlotter wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GraphPlotter_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function amplitude_Callback(hObject, eventdata, handles)
% hObject    handle to amplitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function amplitude_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amplitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function frequency_Callback(hObject, eventdata, handles)
% hObject    handle to frequency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function frequency_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frequency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function amp_Callback(hObject, eventdata, handles)
% hObject    handle to amp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

global a
a = get(handles.amp, 'Value');
set(handles.text_amp, 'String',a);

% --- Executes during object creation, after setting all properties.
function amp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function freq_Callback(hObject, eventdata, handles)
% hObject    handle to freq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global b
b = get(handles.freq, 'Value');
set(handles.text_freq, 'String',b);

% --- Executes during object creation, after setting all properties.
function freq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to freq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes during object creation, after setting all properties.
function uipanel3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function button_group_CreateFcn(hObject, eventdata, handles)
% hObject    handle to button_group (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



% --- Executes when selected object is changed in button_group.
function button_group_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in button_group 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)

global a
p = get(handles.button_group, 'SelectedObject');
q = get(p, 'String');

switch q
    case 'Sine'
        msgbox(q)
    case 'Cosine'
       msgbox(q)
    case 'Tangent'
        msgbox(q)
    case 'Cosecant'
        msgbox(q)
    case 'Secant'
        msgbox(q)
    case 'Cotangent'
        msgbox(q)
    case 'X'
        msgbox(q)
    case 'X^2'
        msgbox(q)
    case 'X^3'
        msgbox(q)
    case 'log(x)'
        msgbox(q)
    case 'exp(x)'
        msgbox(q)
    case '1/X'
        msgbox(q)
end


% --- Executes on button press in plot.
function plot_Callback(hObject, eventdata, handles)
% hObject    handle to plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global a
global b
p = get(handles.button_group, 'SelectedObject');
q = get(p, 'String');
c = 0: 0.1: 10; 
fontsize = 10;
switch q
    case 'Sine'
        y = a.*sin(b.*c);
        plot(handles.axes1,c,y);
        set(handles.text7, 'String', q)
        
        axes(handles.axes1);
        xlabel('Frequncy', 'Fontsize', fontsize);
        ylabel('Magnitude', 'Fontsize', fontsize);
        
    case 'Cosine'
        y = a.*cos(b.*c);
        plot(handles.axes1,c,y);
        set(handles.text7, 'String', q)
       
        axes(handles.axes1);
        xlabel('Frequncy', 'Fontsize', fontsize);
        ylabel('Magnitude', 'Fontsize', fontsize);
        
    case 'Tangent'
        y = a.*tan(b.*c);
        plot(handles.axes1,c,y);
        set(handles.text7, 'String', q)
        
        axes(handles.axes1);
        xlabel('Frequncy', 'Fontsize', fontsize);
        ylabel('Magnitude', 'Fontsize', fontsize);
        
     case 'Cosecant'
        y = a.*csc(b.*c);
        plot(handles.axes1,c,y);
        set(handles.text7, 'String', q)
        
        axes(handles.axes1);
        xlabel('Frequncy', 'Fontsize', fontsize);
        ylabel('Magnitude', 'Fontsize', fontsize);
        
    case 'Secant'
        y = a*sec(b.*c);
        plot(handles.axes1,c,y);
        set(handles.text7, 'String', q)
        
        axes(handles.axes1);
        xlabel('Frequncy', 'Fontsize', fontsize);
        ylabel('Magnitude', 'Fontsize', fontsize);
        
        
    case 'Cotangent'
        y = a.*cot(b.*c);
        plot(handles.axes1,c,y);
        set(handles.text7, 'String', q)
        
        axes(handles.axes1);
        xlabel('Frequncy', 'Fontsize', fontsize);
        ylabel('Magnitude', 'Fontsize', fontsize);
        
   case 'X'
        y = a.*c;
        plot(handles.axes1,c,y);
        set(handles.text7, 'String', q)
        
        axes(handles.axes1);
        xlabel('Frequncy', 'Fontsize', fontsize);
        ylabel('Magnitude', 'Fontsize', fontsize);
        
    case 'X^2'
        y = a.*c.^2;
        plot(handles.axes1,c,y);
        set(handles.text7, 'String', q)
       
        axes(handles.axes1);
        xlabel('Frequncy', 'Fontsize', fontsize);
        ylabel('Magnitude', 'Fontsize', fontsize);
        
        
    case 'X^3'
        y = a.*c.^3;
        plot(handles.axes1,c,y);
        set(handles.text7, 'String', q)
        
        axes(handles.axes1);
        xlabel('Frequncy', 'Fontsize', fontsize);
        ylabel('Magnitude', 'Fontsize', fontsize);
        
     case 'log(x)'
        y = a.*log(c);
        plot(handles.axes1,c,y);
        set(handles.text7, 'String', q)
        
        axes(handles.axes1);
        xlabel('Frequncy', 'Fontsize', fontsize);
        ylabel('Magnitude', 'Fontsize', fontsize);
        
        if (a == 0)
            msgbox('X should be greater than 0')
        end
        
        
        
    case 'exp(x)'
        y = a.*exp(c);
        plot(handles.axes1,c,y);
        set(handles.text7, 'String', q)
        
        axes(handles.axes1);
        xlabel('Frequncy', 'Fontsize', fontsize);
        ylabel('Magnitude', 'Fontsize', fontsize);
        
    case '1/X'
        y = a.*(1./c);
        plot(handles.axes1,c,y);
        set(handles.text7, 'String', q)
        
        axes(handles.axes1);
        xlabel('Frequncy', 'Fontsize', fontsize);
        ylabel('Magnitude', 'Fontsize', fontsize);
        
        if (a == 0)
            msgbox('X should be greater than 0')
        end
        
end


% --- Executes during object creation, after setting all properties.
function text7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
