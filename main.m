function varargout = main(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_OpeningFcn, ...
                   'gui_OutputFcn',  @main_OutputFcn, ...
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


function main_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

guidata(hObject, handles);


function varargout = main_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

function Ellipsoid_Callback(hObject, eventdata, handles)
ellipsoid();
figure(2);
ezmesh('4*sin(u)*cos(v)', '2*sin(u)*sin(v)', '3*cos(u)');

% --- Executes on button press in EliptParabaloid.
function EliptParabaloid_Callback(hObject, eventdata, handles)
eliptparabaloid();
figure(4);
a=4;
b=2;
u = (0:0.05:2)';
v = [0:0.05*pi:2*pi];
X = a*u*cos(v);
Y = b*u*sin(v);
Z = 0.5*u.^2*ones(size(v));
mesh(X,Y,Z);
xlabel('x'); ylabel('y'); zlabel('z')

% --- Executes on button press in GiperParabaloid.
function GiperParabaloid_Callback(hObject, eventdata, handles)
giperparabaloid();
figure(6)
a=4;
b=4;
u = (-2:0.05:2)';
v = -2:0.05*pi:2;
X = a*u*cosh(v);
Y = b*u*sinh(v);
Z = 0.5*u.^2*ones(size(v));
mesh(X,Y,Z);
xlabel('x'); ylabel('y'); zlabel('z')

% --- Executes on button press in OdnopGiperboloid.
function OdnopGiperboloid_Callback(hObject, eventdata, handles)
odnopgiperboloid();
figure(8)
a=4;
b=2;
c=3;
u = (-1:0.05:1)';
v = [0:0.05*pi:2*pi];
X = a*cosh(u)*cos(v);
Y = b*cosh(u)*sin(v);
Z = c*sinh(u)*ones(size(v));
mesh(X,Y,Z);
xlabel('x'); ylabel('y'); zlabel('z')

% --- Executes on button press in DvupGiperboloid.
function DvupGiperboloid_Callback(hObject, eventdata, handles)
dvupgiperboloid();
figure(8);
a=4;
b=2;
c=3;
u = (0:0.05:2)';
v = [0:0.05*pi:2*pi];
X = a*cosh(u)*ones(size(v));
Y = b*sinh(u)*sin(v);
Z = c*sinh(u)*cos(v);
mesh(X,Y,Z);
hold on
X=-X;
mesh(X,Y,Z);
xlabel('x'); ylabel('y'); zlabel('z');

% --- Executes on button press in KonPoverhnost.
function KonPoverhnost_Callback(hObject, eventdata, handles)
konpoverh();
figure(10);
ezmesh('4*u*cos(v)', '2*u*sin(v)', '3*u');

% --- Executes on button press in ElipCilindr.
function ElipCilindr_Callback(hObject, eventdata, handles)
elipcilindr();
figure(12);
ezmesh('4*cos(v)', '2*sin(v)', 'u');

% --- Executes on button press in GiperCilindr.
function GiperCilindr_Callback(hObject, eventdata, handles)
gipercilindr();
figure(14);
a = 2;
b = 4;
phi = 0:pi/20:2*pi;
z = -8:0.5:8;
[PHI,Z] = meshgrid(phi,z);
X1 = a*sqrt(1+sin(PHI).^2);
X2 = -a*sqrt(1+sin(PHI).^2);
Y = b*sin(PHI);
mesh(X1,Y,Z);
hold on;
mesh(X2,Y,Z);
xlabel('x'); ylabel('y'); zlabel('z');

% --- Executes on button press in ParabCilindr.
function ParabCilindr_Callback(hObject, eventdata, handles)
parabcilindr();
figure(16);
ezmesh('u^2/2*2', 'u', '4*v');

% --- Executes on button press in SovpPloskosti.
function SovpPloskosti_Callback(hObject, eventdata, handles)
sovplosk();


function a11_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function a11_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function a22_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function a22_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function a33_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function a33_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a12_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function a12_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function a13_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function a13_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function a23_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function a23_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function a1_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function a1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function a2_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function a2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a3_Callback(hObject, eventdata, handles)



% --- Executes during object creation, after setting all properties.
function a3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function a0_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function a0_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Vid.
function Vid_Callback(hObject, eventdata, handles)
a11=str2num(get(handles.a11, 'String'));
a22=str2num(get(handles.a22, 'String'));
a33=str2num(get(handles.a33, 'String'));
a12=str2num(get(handles.a12, 'String'))/2;
a13=str2num(get(handles.a13, 'String'))/2;
a23=str2num(get(handles.a23, 'String'))/2;
a1=str2num(get(handles.a1, 'String'))/2;
a2=str2num(get(handles.a2, 'String'))/2;
a3=str2num(get(handles.a3, 'String'))/2;
a0=str2num(get(handles.a0, 'String'));
V=vid( a11, a22, a33, a12, a13, a23, a1, a2, a3, a0 );
 switch V                   
     case   1
         set(handles.VidText,'string','Эллипсоид')
     case   2
         set(handles.VidText,'string','Мнимый эллипс')
     case   3
         set(handles.VidText,'string','Однополостный гиперболоид')
     case   4
         set(handles.VidText,'string','Двуполостный гиперболоид')
     case   5
         set(handles.VidText,'string','Коническая поверхность')
     case   6
         set(handles.VidText,'string','Мнимая коническая поверхность')
     case   7
         set(handles.VidText,'string','Эллиптический параболоид')
     case   8
         set(handles.VidText,'string','Гиперболический параболоид')
     case   9
         set(handles.VidText,'string','Эллиптический цилиндр')
     case   10
         set(handles.VidText,'string','Мнимый эллиптический цилиндр')
     case   11
         set(handles.VidText,'string','Гипреболический цилиндр')
     case   12
         set(handles.VidText,'string','Пересекающиеся плоскости')
     case   13
         set(handles.VidText,'string','Мнимые пересекающиеся плоскости')
     case   14
         set(handles.VidText,'string','Параболический цилиндр')
     case   15
         set(handles.VidText,'string','Параллельные плоскости')
     case   16
         set(handles.VidText,'string','Мнимые параллельные плоскости')
     case   17
         set(handles.VidText,'string','Совпадающие плоскости')
     otherwise 
         set(handles.VidText,'string','Что то не то')                     
 end 


% --- Executes on button press in Graph.
function Graph_Callback(hObject, eventdata, handles)
set(handles.Error,'string',' '); 
a11=str2num(get(handles.a11, 'String'));
a22=str2num(get(handles.a22, 'String'));
a33=str2num(get(handles.a33, 'String'));
a12=str2num(get(handles.a12, 'String'))/2;
a13=str2num(get(handles.a13, 'String'))/2;
a23=str2num(get(handles.a23, 'String'))/2;
a1=str2num(get(handles.a1, 'String'))/2;
a2=str2num(get(handles.a2, 'String'))/2;
a3=str2num(get(handles.a3, 'String'))/2;
a0=str2num(get(handles.a0, 'String'));
[x,y,z] = meshgrid(-10:0.1:10);  
F=(x.^2)*a11 + (y.^2)*a22 + (z.^2)*a33 + ((x.*y)*2)*a12 + ((x.*z)*2)*a13 + ((z.*y)*2)*a23 + (x.*2)*a1 + (y.*2)*a2 + (z.*2)*a3 +a0;  
figure(100);
isosurface(x,y,z,F,0);
xlabel('x'); ylabel('y'); zlabel('z');


% --- Executes on button press in Otobr.
function Otobr_Callback(hObject, eventdata, handles)
a11=str2num(get(handles.a11, 'String'));
a22=str2num(get(handles.a22, 'String'));
a33=str2num(get(handles.a33, 'String'));
a12=str2num(get(handles.a12, 'String'))/2;
a13=str2num(get(handles.a13, 'String'))/2;
a23=str2num(get(handles.a23, 'String'))/2;
a1=str2num(get(handles.a1, 'String'))/2;
a2=str2num(get(handles.a2, 'String'))/2;
a3=str2num(get(handles.a3, 'String'))/2;
a0=str2num(get(handles.a0, 'String'));
set(handles.Error,'string',' ');
V=vid( a11, a22, a33, a12, a13, a23, a1, a2, a3, a0 );
switch V                   
     case   1
         ellipsoid ();        
     case   2
         set(handles.Error,'string','Мнимая поверхность')
     case   3
         odnopgiperboloid();
     case   4
         dvupgiperboloid();
     case   5
         konpoverh();
     case   6
         set(handles.Error,'string','Мнимая поверхность')
     case   7
         eliptparabaloid();
     case   8
         giperparabaloid();
     case   9
         elipcilindr();
     case   10
         set(handles.Error,'string','Мнимая поверхность')
     case   11
         gipercilindr();
     case   12
         set(handles.VidText,'string','Пересекающиеся плоскости')
     case   13
         set(handles.Error,'string','Мнимая поверхность')
     case   14
         parabcilindr();
     case   15
         set(handles.VidText,'string','Параллельные плоскости')
     case   16
         set(handles.Error,'string','Мнимая поверхность')
     case   17
         parabcilindr();
     otherwise 
         set(handles.Error,'string','Что то не то')                     
 end 


% --- Executes on button press in Clear.
function Clear_Callback(hObject, eventdata, handles)

set(handles.a11,'String','0');
set(handles.a22,'String','0');
set(handles.a33,'String','0');
set(handles.a12,'string','0');
set(handles.a13,'string','0');
set(handles.a23,'string','0');
set(handles.a1,'string','0');
set(handles.a2,'string','0');
set(handles.a3,'string','0');
set(handles.a0,'string','0');
set(handles.VidText,'string',' ');
set(handles.Error,'string',' ');
