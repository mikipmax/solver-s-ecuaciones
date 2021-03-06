function varargout = gui_dif(varargin)
% GUI_DIF MATLAB code for gui_dif.fig
%      GUI_DIF, by itself, creates a new GUI_DIF or raises the existing
%      singleton*.
%
%      H = GUI_DIF returns the handle to a new GUI_DIF or the handle to
%      the existing singleton*.
%
%      GUI_DIF('CALLBACK',hObject-,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_DIF.M with the given input arguments.
%
%      GUI_DIF('Property','Value',...) creates a new GUI_DIF or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_dif_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_dif_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_dif

% Last Modified by GUIDE v2.5 08-Apr-2019 00:39:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @gui_dif_OpeningFcn, ...
    'gui_OutputFcn',  @gui_dif_OutputFcn, ...
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


% --- Executes just before gui_dif is made visible.
function gui_dif_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_dif (see VARARGIN)

% Choose default command line output for gui_dif
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_dif wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(handles.tab1,'Data',repmat({[]},0,0))
set(handles.rb1,'value',1)
% --- Outputs from this function are returned to the command line.
function varargout = gui_dif_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in rb1.
function rb1_Callback(hObject, eventdata, handles)
% hObject    handle to rb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb1

set(handles.rb1,'value',1)
set(handles.rb2,'value',0)



% --- Executes on button press in rb2.
function rb2_Callback(hObject, eventdata, handles)
% hObject    handle to rb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb2
set(handles.rb1,'value',0)
set(handles.rb2,'value',1)



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in rb1.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to rb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb1


% --- Executes on button press in rb2.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to rb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb2


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)


axes(handles.axes1);
cla('reset');
syms x
M1=[];

b=[];

n=str2num(get(handles.edit6,'string'))
m=str2num(get(handles.edit7,'string'))
resultado=0

Ma=get(handles.tab1,'Data')
if sum(sum(cellfun(@isempty,Ma)))~=0
    errordlg('Por favor introduzca datos faltantes','Mensaje')
else
    for i=1: n
        
        for j=1: m
            
            M1(i,j)=[str2num(char(Ma(i,j)))]
            
            
        end
        
        b(i)=[str2num(char(Ma(i,m+1)))]
        
    end
    M1
end


texto=[];
set(handles.lb2,'string','');
Ab=[M1 transpose(b)];
if rank(M1)==  rank(Ab)
    if rank(M1)==m
        
        
        if get(handles.rb1, 'value')==1
            if n==m
                %inicia gauss
                texto=[];
                set(handles.lb2,'string','');
                Ab=[M1 transpose(b)];
                %imprimo la matriz aumentada
                texto1=sprintf('Matriz Aumentada\n');
                texto=sprintf('%s %s',texto,texto1);
                for i=1:n
                    for j=1:m+1
                        texto1= sprintf('%.4f ',Ab(i,j));
                        texto=sprintf('%s %s',texto,texto1);
                    end
                    texto1=sprintf('\n');
                    texto=sprintf('%s %s',texto,texto1);
                end
                %termino de imprimir la matriz aumentada
                %matriz triangular
                for k=1:n-1
                    [mayor,j]=max(abs(Ab(k:n,k)));
                    
                    fila=j+k-1;
                    
                    if fila~=k
                        texto1=sprintf("Intercambio fila"+k+" por fila"+fila+'\n');
                        texto=sprintf('%s %s',texto,texto1);
                        Ab([k,fila],:)=Ab([fila,k],:);%intercambio de filas
                        for i=1:n
                            for j=1:m+1
                                texto1= sprintf('%.4f ',Ab(i,j));
                                texto=sprintf('%s %s',texto,texto1);
                            end
                            texto1=sprintf('\n');
                            texto=sprintf('%s %s',texto,texto1);
                        end
                    end
                    texto1=sprintf('\n');
                    texto=sprintf('%s %s',texto,texto1);
                    for i=k+1:n
                        factor=Ab(i,k)/Ab(k,k);
                        texto1=sprintf("Fila"+i+"-"+Ab(i,k)+"/"+Ab(k,k)+"*Fila"+k+"->"+i+'\n');
                        texto=sprintf('%s %s',texto,texto1);
                        Ab(i,k:n+1)=Ab(i,k:n+1)-factor*Ab(k,k:n+1);
                    end
                    for i=1:n
                        for j=1:m+1
                            texto1= sprintf('%.4f ',Ab(i,j));
                            texto=sprintf('%s %s',texto,texto1);
                        end
                        texto1=sprintf('\n');
                        texto=sprintf('%s %s',texto,texto1);
                    end
                end
                
                %inc�gnitas
                cer=zeros(n,1); %creo un vector de ceros
                texto1=sprintf('\n');
                texto=sprintf('%s %s',texto,texto1);
                cer(n)=Ab(n,n+1)/Ab(n,n); %obtiene el primer resultado de xn
                texto1=sprintf("X"+n+"="+Ab(n,n+1)+"/"+Ab(n,n)+"= "+Ab(n,n+1)/Ab(n,n)+'\n');
                texto=sprintf('%s %s',texto,texto1);
                for i=n-1:-1:1
                    cer(i)=Ab(i,n+1)/Ab(i,i)-Ab(i,i+1:n)*cer(i+1:n)/Ab(i,i);
                    texto1=sprintf("X"+i+"= "+(Ab(i,n+1)/Ab(i,i)-Ab(i,i+1:n)*cer(i+1:n)/Ab(i,i))+'\n');
                    texto=sprintf('%s %s',texto,texto1);
                end
                cer
                set(handles.lb2,'string',texto);
                %termina gauss nxn--------------------------
            else
                texto=[]
                set(handles.lb2,'string','');
                texto1=sprintf('Soluci�n �nica, Sistema compatible determinado\n');
                texto=sprintf('%s %s',texto,texto1);
                set(handles.lb2,'string',texto);
            end
            %Empiezo metodo de la inversa-----------------------
        else
            
            if n==m
                texto=[]
                
                set(handles.lb2,'string','');
                a=M1
                
                %imprimo la matriz al procedimiento
                texto1=sprintf('Matriz A\n');
                texto=sprintf('%s %s',texto,texto1);
                for i=1:n
                    for j=1:m
                        texto1= sprintf('%.4f ',a(i,j));
                        texto=sprintf('%s %s',texto,texto1);
                    end
                    texto1=sprintf('\n');
                    texto=sprintf('%s %s',texto,texto1);
                end
                texto1=sprintf('\n');
                texto=sprintf('%s %s',texto,texto1);
                
                %---------------------------
                texto1=sprintf('Matriz Aumentada\n');
                texto=sprintf('%s %s',texto,texto1);
                Idn=[];
                for i=1:n
                    for j=1:m
                        if i==j
                            Idn(i,j)=1
                            
                        end
                    end
                end
                %imprimo matriz aumentada
                a=[a Idn]
                cop=[];
                cop=a
                for i=1:n
                    for j=1:m*2
                        texto1= sprintf('%.4f ',a(i,j));
                        texto=sprintf('%s %s',texto,texto1);
                    end
                    texto1=sprintf('\n');
                    texto=sprintf('%s %s',texto,texto1);
                end
                
                texto1=sprintf('Sacamos inv(A)\n');
                texto=sprintf('%s %s',texto,texto1);
                %------------------
                
                for k=1:m
                    
                    a(k,:)=a(k,:)/a(k,k);
                    
                    %cop=a
                    
                    for j=k+1:n
                        
                        texto1=sprintf("Fila"+(j)+"-Fila"+k+"*"+a(j,k)+"->Fila"+j+'\n');
                        texto=sprintf('%s %s',texto,texto1);
                        
                        
                        
                        a(j,:)=a(j,:)-a(k,:)*a(j,k);
                        j=j+1;
                        
                        
                    end
                    
                    
                    
                    
                    texto1=sprintf("Fila"+(k)+"*"+ a(k,k)/cop(k,k)+"->Fila"+k+'\n');
                    texto=sprintf('%s %s',texto,texto1);
                    cop=a %guardo una copia en el estado actual de la matriz a en cop
                    
                    %imprimo en prodecimiento
                    for i=1:n
                        for j=1:m*2
                            
                            texto1= sprintf('%.4f ',a(i,j));
                            texto=sprintf('%s %s',texto,texto1);
                        end
                        texto1=sprintf('\n');
                        texto=sprintf('%s %s',texto,texto1);
                    end
                    texto1=sprintf('\n');
                    texto=sprintf('%s %s',texto,texto1);
                    %----------------
                    
                    k=k+1;
                    
                end
                texto1=sprintf("Simplificaci�n"+'\n');
                texto=sprintf('%s %s',texto,texto1);
                for k=n:-1:2
                    for j=k-1:-1:1
                        texto1=sprintf("Fila"+(j)+"-Fila"+(k)+"*"+a(j,k)+"->Fila"+j+'\n');
                        texto=sprintf('%s %s',texto,texto1);
                        a(j,:)=a(j,:)-a(k,:)*a(j,k);
                        j=j-1;
                        %imprimo en prodecimiento
                        for i=1:n
                            for j=1:m*2
                                texto1= sprintf('%.4f ',a(i,j));
                                texto=sprintf('%s %s',texto,texto1);
                            end
                            texto1=sprintf('\n');
                            texto=sprintf('%s %s',texto,texto1);
                        end
                        texto1=sprintf('\n');
                        texto=sprintf('%s %s',texto,texto1);
                        %----------------
                    end
                    k=k-1;
                    
                end
                texto1=sprintf('Inv(A)\n');
                texto=sprintf('%s %s',texto,texto1);
                for i=1:n
                    for j=m+1:m*2
                        texto1= sprintf('%.4f ',a(i,j));
                        texto=sprintf('%s %s',texto,texto1);
                    end
                    texto1=sprintf('\n');
                    texto=sprintf('%s %s',texto,texto1);
                end
                texto1=sprintf('\n');
                texto=sprintf('%s %s',texto,texto1);
                fprintf('calculo la inversa para comprobar directo con matlab\n')
                c=inv(M1);
                c
                texto1=sprintf('Multiplicamos inv(A)*b\n');
                texto=sprintf('%s %s',texto,texto1);
                
                c=inv(M1)*transpose(b)
                
                texto1= sprintf('%.4f ',c);
                texto=sprintf('%s %s',texto,texto1);
                
                set(handles.lb2,'string',texto);
                
            else
                errordlg('El m�todo de la inversa es solo para nxn','Mensaje')
            end %fin del metodo de la inversa
        end
        
        
    end
    if rank(M1)<m
        texto=[]
        set(handles.lb2,'string','');
        texto1=sprintf('Infinitas soluciones, Sistema compatible indeterminado\n');
        texto=sprintf('%s %s',texto,texto1);
        set(handles.lb2,'string',texto);
    end
else
    texto=[]
    set(handles.lb2,'string','');
    texto1=sprintf('No Tiene soluci�n\n');
    texto=sprintf('%s %s',texto,texto1);
    set(handles.lb2,'string',texto);
end






if m==2
    axes(handles.axes1);
    hold on
    grid on
    zoom on
    for i=1:n
        (b(i)-M1(i,1)*x)/M1(i,2)
        ezplot((b(i)-M1(i,1)*x)/M1(i,2))
        
    end
    
end
if m==3
    
    [X,Y] = meshgrid(-5:.5:5);
    
    
    grid on
    zoom on
    for i=1:n
        
        Z = (b(i)-M1(i,1)*X -M1(i,2)*Y)/M1(i,3);
        surf(X,Y,Z)
        
        hold on
        
    end
    
    
end


function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit6,'string','');
set(handles.edit7,'string','');

set(handles.tab1, 'Data', cell(size(get(handles.tab1,'Data'))));
set(handles.lb2,'string','');
axes(handles.axes1);
cla('reset');

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close


% --- Executes on selection change in lb2.
function lb2_Callback(hObject, eventdata, handles)
% hObject    handle to lb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lb2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lb2


% --- Executes during object creation, after setting all properties.
function lb2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
nn=str2num(get(handles.edit6,'string'))
mm=str2num(get(handles.edit7,'string'))

for i=1:mm
    nombre(i)="X"+i
end
% con esta linea agrego una nueva columna para las constantes
nombre(mm+1)="b"
set(handles.tab1,'ColumnName',nombre)
set(handles.tab1,'Data',repmat({[]},nn,mm+1))
set(handles.tab1,'ColumnEditable',true)


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close
% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit6,'string','');
set(handles.edit7,'string','');

set(handles.tab1, 'Data', cell(size(get(handles.tab1,'Data'))));
set(handles.lb2,'string','');
axes(handles.axes1);
cla('reset');

% --------------------------------------------------------------------
function Untitled_5_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
