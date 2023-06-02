function varargout = input_laptop(varargin)
% INPUT_LAPTOP MATLAB code for input_laptop.fig
%      INPUT_LAPTOP, by itself, creates a new INPUT_LAPTOP or raises the existing
%      singleton*.
%
%      H = INPUT_LAPTOP returns the handle to a new INPUT_LAPTOP or the handle to
%      the existing singleton*.
%
%      INPUT_LAPTOP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INPUT_LAPTOP.M with the given input arguments.
%
%      INPUT_LAPTOP('Property','Value',...) creates a new INPUT_LAPTOP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before input_laptop_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to input_laptop_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help input_laptop

% Last Modified by GUIDE v2.5 21-May-2023 07:58:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @input_laptop_OpeningFcn, ...
                   'gui_OutputFcn',  @input_laptop_OutputFcn, ...
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


% --- Executes just before input_laptop is made visible.
function input_laptop_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to input_laptop (see VARARGIN)

% Choose default command line output for input_laptop
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
getTable(handles);
setSelection(handles);
% UIWAIT makes input_laptop wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = input_laptop_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function kode_model_Callback(hObject, eventdata, handles)
% hObject    handle to kode_model (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kode_model as text
%        str2double(get(hObject,'String')) returns contents of kode_model as a double


% --- Executes during object creation, after setting all properties.
function kode_model_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kode_model (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in processor.
function processor_Callback(hObject, eventdata, handles)
% hObject    handle to processor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns processor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from processor


% --- Executes during object creation, after setting all properties.
function processor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to processor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in ram.
function ram_Callback(hObject, eventdata, handles)
% hObject    handle to ram (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns ram contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ram


% --- Executes during object creation, after setting all properties.
function ram_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ram (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in besar_storage.
function besar_storage_Callback(hObject, eventdata, handles)
% hObject    handle to besar_storage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns besar_storage contents as cell array
%        contents{get(hObject,'Value')} returns selected item from besar_storage


% --- Executes during object creation, after setting all properties.
function besar_storage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to besar_storage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in tipe_storage.
function tipe_storage_Callback(hObject, eventdata, handles)
% hObject    handle to tipe_storage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns tipe_storage contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tipe_storage


% --- Executes during object creation, after setting all properties.
function tipe_storage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tipe_storage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in layar.
function layar_Callback(hObject, eventdata, handles)
% hObject    handle to layar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns layar contents as cell array
%        contents{get(hObject,'Value')} returns selected item from layar


% --- Executes during object creation, after setting all properties.
function layar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to layar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in vga.
function vga_Callback(hObject, eventdata, handles)
% hObject    handle to vga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns vga contents as cell array
%        contents{get(hObject,'Value')} returns selected item from vga


% --- Executes during object creation, after setting all properties.
function vga_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in merk.
function merk_Callback(hObject, eventdata, handles)
% hObject    handle to merk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns merk contents as cell array
%        contents{get(hObject,'Value')} returns selected item from merk


% --- Executes during object creation, after setting all properties.
function merk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to merk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu8.
function popupmenu8_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu8 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu8


% --- Executes during object creation, after setting all properties.
function popupmenu8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function setSelection(handles)
 % Establish the database connection
conn = createDatabaseConnection();

%processor
query = 'SELECT nama_processor FROM processor';
data = fetch(conn, query);
% Extract the display text and values from the retrieved data
nama = data.nama_processor;
disp('data');
disp(data);
disp('nama');
disp(nama);
% Create and populate the uipopupmenu
set(handles.processor, 'String', nama);

%ram
query = 'SELECT besar_ram FROM ram';
data = fetch(conn, query);
% Extract the display text and values from the retrieved data
nama = data.besar_ram;
disp('data');
disp(data);
disp('nama');
disp(nama);
% Create and populate the uipopupmenu
set(handles.ram, 'String', nama);

%besar_storage
query = 'SELECT besar_storage FROM besar_storage';
data = fetch(conn, query);
% Extract the display text and values from the retrieved data
nama = data.besar_storage;
disp('data');
disp(data);
disp('nama');
disp(nama);
% Create and populate the uipopupmenu
set(handles.besar_storage, 'String', nama);

%tipe_storage
query = 'SELECT nama_tipe_storage FROM tipe_storage';
data = fetch(conn, query);
% Extract the display text and values from the retrieved data
nama = data.nama_tipe_storage;
disp('data');
disp(data);
disp('nama');
disp(nama);
% Create and populate the uipopupmenu
set(handles.tipe_storage, 'String', nama);

%tipe_layar
query = 'SELECT nama_layar FROM tipe_layar';
data = fetch(conn, query);
% Extract the display text and values from the retrieved data
nama = data.nama_layar;
disp('data');
disp(data);
disp('nama');
disp(nama);
% Create and populate the uipopupmenu
set(handles.layar, 'String', nama);

%merk
query = 'SELECT nama_merk FROM merk';
data = fetch(conn, query);
% Extract the display text and values from the retrieved data
nama = data.nama_merk;
disp('data');
disp(data);
disp('nama');
disp(nama);
% Create and populate the uipopupmenu
set(handles.merk, 'String', nama);

%vga
query = 'SELECT nama_vga FROM vga';
data = fetch(conn, query);
% Extract the display text and values from the retrieved data
nama = data.nama_vga;
nama = [{'-'};nama];
disp('data');
disp(data);
disp('nama');
disp(nama);
% Create and populate the uipopupmenu
set(handles.vga, 'String', nama);

% Close the database connection when you're done
close(conn);

% --- Executes on button press in inputButton.
function inputButton_Callback(hObject, eventdata, handles)
% hObject    handle to inputButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
kode_model = get(handles.kode_model, 'String');
harga = get(handles.harga, 'String');

if isempty(kode_model) || isempty(harga)
    % Throw an exception and stop the function execution
     errordlg('Tolong isi semua input.', 'Missing Input');
    return;
end


conn = createDatabaseConnection();

harga = get(handles.harga,'string');
disp("harga : " + harga);
harga = str2double(harga);
kode_model = get(handles.kode_model,'string');
disp("kode_model : " + kode_model);


%merk
query = 'SELECT id_merk FROM merk';
data= fetch(conn, query);

id = data.id_merk;
disp(id);
selected_index = get(handles.merk, 'Value');
disp('selected_index');
disp(selected_index);

id_merk = id(selected_index);
disp('id_merk');
disp(id_merk);

%processor
query = 'SELECT id_processor FROM processor';
data = fetch(conn, query);

id = data.id_processor;
disp(id);
selected_index = get(handles.processor, 'Value');
disp('selected_index');
disp(selected_index);

id_processor = id(selected_index);
disp('id_processor');
disp(id_processor);

%ram
query = 'SELECT id_ram FROM ram';
data = fetch(conn, query);

id = data.id_ram;
disp(id);
selected_index = get(handles.ram, 'Value');
disp('selected_index');
disp(selected_index);

id_ram = id(selected_index);
disp('id_ram');
disp(id_ram);

%besar_storage
query = 'SELECT id_besar_storage FROM besar_storage';
data = fetch(conn, query);

id = data.id_besar_storage;
disp(id);
selected_index = get(handles.besar_storage, 'Value');
disp('selected_index');
disp(selected_index);

id_besar_storage = id(selected_index);
disp('id_besar_storage');
disp(id_besar_storage);

%tipe_storage
query = 'SELECT id_tipe_storage FROM tipe_storage';
data = fetch(conn, query);

id = data.id_tipe_storage;
disp(id);
selected_index = get(handles.tipe_storage, 'Value');
disp('selected_index');
disp(selected_index);

id_tipe_storage = id(selected_index);
disp('id_tipe_storage');
disp(id_tipe_storage);

%tipe_layar
query = 'SELECT id_tipe_layar FROM tipe_layar';
data = fetch(conn, query);

id = data.id_tipe_layar;
disp(id);
selected_index = get(handles.layar, 'Value');
disp('selected_index');
disp(selected_index);

id_layar = id(selected_index);
disp('id_layar');
disp(id_layar);

%vga
selected_index = get(handles.vga, 'Value');
if selected_index == 1
     id_vga = NaN;
     disp("null");
else
    disp("not null");
query = 'SELECT id_vga FROM vga';
data= fetch(conn, query);
id = data.id_vga;
disp(id);
selected_index = get(handles.vga, 'Value');
selected_index = selected_index - 1;
disp('selected_index');
disp(selected_index);
id_vga = id(selected_index);
end
disp('id_vga');
disp(id_vga);

%insert
if selected_index == 1
    query = "INSERT INTO laptop (kode_model, harga, id_processor, id_ram, id_besar_storage, id_tipe_storage, id_tipe_layar, id_merk) VALUES ('"+kode_model+"',"+ harga+","+ id_processor+","+ id_ram+","+ id_besar_storage+","+ id_tipe_storage+","+ id_layar+","+ id_merk+");";
else
    query = "INSERT INTO laptop (kode_model, harga, id_processor, id_ram, id_besar_storage, id_tipe_storage, id_tipe_layar, id_vga, id_merk) VALUES ('"+kode_model+"',"+ harga+","+ id_processor+","+ id_ram+","+ id_besar_storage+","+ id_tipe_storage+","+ id_layar+","+ id_vga+"," +id_merk+");";
end
% Convert the query to a string scalar or character vector
query = string(query); % or query = char(query);
data= exec(conn, query);
getTable(handles);

function getTable(handles)
conn = createDatabaseConnection();
% Execute a query to retrieve the data
queryLaptop = ['SELECT * ' ...
               'FROM laptop INNER JOIN processor ON processor.id_processor = laptop.id_processor ' ...
               'INNER JOIN ram ON ram.id_ram = laptop.id_ram ' ...
               'LEFT JOIN vga ON vga.id_vga = laptop.id_vga ' ...
               'INNER JOIN tipe_layar ON tipe_layar.id_tipe_layar = laptop.id_tipe_layar ' ...
               'INNER JOIN tipe_storage ON tipe_storage.id_tipe_storage = laptop.id_tipe_storage ' ...
               'INNER JOIN besar_storage ON besar_storage.id_besar_storage = laptop.id_besar_storage ' ...
               'INNER JOIN merk ON merk.id_merk = laptop.id_merk'];

dataLaptop = fetch(conn, queryLaptop);
dataLaptop = sortrows(dataLaptop, -1, 'ascend');
kode_model = dataLaptop.kode_model;
harga = num2cell(dataLaptop.harga);
nama_merk = dataLaptop.nama_merk;
processor = dataLaptop.nama_processor;
ram = dataLaptop.besar_ram;
besar_storage = dataLaptop.besar_storage;
tipe_storage = dataLaptop.nama_tipe_storage;
vga = dataLaptop.nama_vga;
tipe_layar = dataLaptop.nama_layar;
data = [kode_model, harga, nama_merk, processor, ram, besar_storage, tipe_storage, vga, tipe_layar];
disp('data tabel');
disp(data);
set(handles.laptopTable,'Data',data);          
%tableLaptop = get(handles.bobotTable, 'Data');
%disp(bobot);

% --- Executes on button press in rankMenu.
function rankMenu_Callback(hObject, eventdata, handles)
% Close the current figure
close(gcf);
MenuRanking;



% hObject    handle to rankMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function harga_Callback(hObject, eventdata, handles)
% hObject    handle to harga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of harga as text
%        str2double(get(hObject,'String')) returns contents of harga as a double


% --- Executes during object creation, after setting all properties.
function harga_CreateFcn(hObject, eventdata, handles)
% hObject    handle to harga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
