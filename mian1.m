function varargout = main1(varargin)
% MAIN1 MATLAB code for main1.fig
%      MAIN1, by itself, creates a new MAIN1 or raises the existing
%      singleton*.
%
%      H = MAIN1 returns the handle to a new MAIN1 or the handle to
%      the existing singleton*.
%
%      MAIN1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN1.M with the given input arguments.
%
%      MAIN1('Property','Value',...) creates a new MAIN1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main1

% Last Modified by GUIDE v2.5 15-Oct-2020 10:30:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main1_OpeningFcn, ...
                   'gui_OutputFcn',  @main1_OutputFcn, ...
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


% --- Executes just before main1 is made visible.
function main1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main1 (see VARARGIN)

% Choose default command line output for main1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
load('Names_code_N.mat')
time=0;
set(handles.axes1,'visible','off')
set(handles.axes2,'visible','off')
set(handles.axes3,'visible','off')
set(handles.axes4,'visible','off')
set(handles.axes5,'visible','off')
set(handles.axes6,'visible','off')
set(handles.axes7,'visible','off')
set(handles.axes8,'visible','off')
if time == 0
 for a=1:8
  for b=1:8
        for c=1:8
           switch c 
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
                    text(a*0.1,b*0.1,Names_code_N(a,b,c));  
           hold on
        end
  end
 end
end
% --- Outputs from this function are returned to the command line.
function varargout = main1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Names_code_N
global time
global c_1
global b_1
global a_1

if time==0
a_1=1;
time =time+1;
elseif time==1
b_1=1;
time =time + 1;
else 
c_1=1;
time =0;
disp(Names_code_N(c_1,b_1,a_1))
end

% time
% a_1
% b_1
% c_1
if time == 0
    axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8
        for c=1:8
           switch c 
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
                    text(a*0.1,b*0.1,Names_code_N(a,b,c));  
           hold on
        end
  end
 end
end
if time == 1
axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8                 
        for c=1:8
              switch b 
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
            text(a*0.1,c*0.1,Names_code_N(a,b,c));  
            hold on
            hold on
        end
  end
 end
end
if time == 2
axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8                 
        for c=1:8
                  switch a
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
            text(b*0.1,c*0.1,Names_code_N(a,b,c));  
            hold on
        end
  end
 end
end
 
% 
% disp(Names_code_N(a1,b1,c1));

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Names_code_N
global time
global c_1
global b_1
global a_1

if time==0
a_1=2;
time =time+1;
elseif time==1
b_1=2;
time =time + 1;
else 
c_1=2;
time =0;
disp(Names_code_N(c_1,b_1,a_1))
end

% time
% a_1
% b_1
% c_1

if time == 0
    axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8
        for c=1:8
           switch c 
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
                    text(a*0.1,b*0.1,Names_code_N(a,b,c));  
           hold on
        end
  end
 end
end
if time == 1
axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8                 
        for c=1:8
              switch b 
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
            text(a*0.1,c*0.1,Names_code_N(a,b,c));  
            hold on
            hold on
        end
  end
 end
end
if time == 2
axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8                 
        for c=1:8
                  switch a
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
            text(b*0.1,c*0.1,Names_code_N(a,b,c));  
            hold on
        end
  end
 end
end
% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Names_code_N
global time
global c_1
global b_1
global a_1

if time==0
a_1=3;
time =time+1;
elseif time==1
b_1=3;
time =time + 1;
else 
c_1=3;
time =0;
disp(Names_code_N(c_1,b_1,a_1))
end
% 
% time
% a_1
% b_1
% c_1

if time == 0
    axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8
        for c=1:8
           switch c 
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
                    text(a*0.1,b*0.1,Names_code_N(a,b,c));  
           hold on
        end
  end
 end
end
if time == 1
axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8                 
        for c=1:8
              switch b 
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
            text(a*0.1,c*0.1,Names_code_N(a,b,c));  
            hold on
            hold on
        end
  end
 end
end
if time == 2
axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8                 
        for c=1:8
                  switch a
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
            text(b*0.1,c*0.1,Names_code_N(a,b,c));  
            hold on
        end
  end
 end
end

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Names_code_N
global time
global c_1
global b_1
global a_1

if time == 0
    axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8
        for c=1:8
           switch c 
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
                    text(a*0.1,b*0.1,Names_code_N(a,b,c));  
           hold on
        end
  end
 end
end
if time==0
a_1=4;
time =time+1;
elseif time==1
b_1=4;
time =time + 1;
else 
c_1=4;
time =0;
disp(Names_code_N(c_1,b_1,a_1))
end

% time
% a_1
% b_1
% c_1

if time == 0
    axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8
        for c=1:8
           switch c 
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
                    text(a*0.1,b*0.1,Names_code_N(a,b,c));  
           hold on
        end
  end
 end
end
if time == 1
axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8                 
        for c=1:8
              switch b 
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
            text(a*0.1,c*0.1,Names_code_N(a,b,c));  
            hold on
            hold on
        end
  end
 end
end
if time == 2
axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8                 
        for c=1:8
                  switch a
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
            text(b*0.1,c*0.1,Names_code_N(a,b,c));  
            hold on
        end
  end
 end
end

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Names_code_N
global time
global c_1
global b_1
global a_1

if time==0
a_1=5;
time =time+1;
elseif time==1
b_1=5;
time =time + 1;
else 
c_1=5;
time =0;
disp(Names_code_N(c_1,b_1,a_1))
end
% 
% time
% a_1
% b_1
% c_1

if time == 0
    axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8
        for c=1:8
           switch c 
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
                    text(a*0.1,b*0.1,Names_code_N(a,b,c));  
           hold on
        end
  end
 end
end
if time == 1
axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8                 
        for c=1:8
              switch b 
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
            text(a*0.1,c*0.1,Names_code_N(a,b,c));  
            hold on
            hold on
        end
  end
 end
end
if time == 2
axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8                 
        for c=1:8
                  switch a
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
            text(b*0.1,c*0.1,Names_code_N(a,b,c));  
            hold on
        end
  end
 end
end

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Names_code_N
global time
global c_1
global b_1
global a_1

if time==0
a_1=6;
time =time+1;
elseif time==1
b_1=6;
time =time + 1;
else 
c_1=6;
time =0;
disp(Names_code_N(c_1,b_1,a_1))
end

% time
% a_1
% b_1
% c_1

if time == 0
    axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8
        for c=1:8
           switch c 
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
                    text(a*0.1,b*0.1,Names_code_N(a,b,c));  
           hold on
        end
  end
 end
end
if time == 1
axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8                 
        for c=1:8
              switch b 
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
            text(a*0.1,c*0.1,Names_code_N(a,b,c));  
            hold on
            hold on
        end
  end
 end
end
if time == 2
axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8                 
        for c=1:8
                  switch a
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
            text(b*0.1,c*0.1,Names_code_N(a,b,c));  
            hold on
        end
  end
 end
end

% --- Executes on button press in pushbutton6.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Names_code_N
global time
global c_1
global b_1
global a_1

if time==0
a_1=7;
time =time+1;
elseif time==1
b_1=7;
time =time + 1;
else 
c_1=7;
time =0;
disp(Names_code_N(c_1,b_1,a_1))
end

% time
% a_1
% b_1
% c_1

if time == 0
    axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8
        for c=1:8
           switch c 
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
                    text(a*0.1,b*0.1,Names_code_N(a,b,c));  
           hold on
        end
  end
 end
end
if time == 1
axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8                 
        for c=1:8
              switch b 
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
            text(a*0.1,c*0.1,Names_code_N(a,b,c));  
            hold on
            hold on
        end
  end
 end
end
if time == 2
axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8                 
        for c=1:8
                  switch a
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
            text(b*0.1,c*0.1,Names_code_N(a,b,c));  
            hold on
        end
  end
 end
end

% --- Executes on button press in pushbutton5.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Names_code_N
global time
global c_1
global b_1
global a_1

if time==0
a_1=8;
time =time+1;
elseif time==1
b_1=8;
time =time + 1;
else 
c_1=8;
time =0;
disp(Names_code_N(c_1,b_1,a_1))
end

% time
% a_1
% b_1
% c_1

if time == 0
    axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8
        for c=1:8
           switch c 
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
                    text(a*0.1,b*0.1,Names_code_N(a,b,c));  
           hold on
        end
  end
 end
end
if time == 1
axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8                 
        for c=1:8
              switch b 
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
            text(a*0.1,c*0.1,Names_code_N(a,b,c));  
            hold on
            hold on
        end
  end
 end
end
if time == 2
axes(handles.axes8);
    cla;
axes(handles.axes7);
    cla;
axes(handles.axes6);
    cla;
axes(handles.axes5);
    cla;
axes(handles.axes4);
    cla;
axes(handles.axes3);
    cla;
axes(handles.axes2);
    cla;
axes(handles.axes1);
    cla;
 for a=1:8
  for b=1:8                 
        for c=1:8
                  switch a
                    case 1
                        axes(handles.axes1);
                    case 2
                        axes(handles.axes2);
                    case 3
                        axes(handles.axes3);
                    case 4
                        axes(handles.axes4);
                    case 5 
                        axes(handles.axes5);
                    case 6 
                        axes(handles.axes6);
                    case 7 
                        axes(handles.axes7);
                    case 8 
                        axes(handles.axes8);
              end
            text(b*0.1,c*0.1,Names_code_N(a,b,c));  
            hold on
        end
  end
 end
end
