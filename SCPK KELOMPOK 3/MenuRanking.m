function varargout = MenuRanking(varargin)
% MENURANKING MATLAB code for MenuRanking.fig
%      MENURANKING, by itself, creates a new MENURANKING or raises the existing
%      singleton*.
%
%      H = MENURANKING returns the handle to a new MENURANKING or the handle to
%      the existing singleton*.
%
%      MENURANKING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MENURANKING.M with the given input arguments.
%
%      MENURANKING('Property','Value',...) creates a new MENURANKING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MenuRanking_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MenuRanking_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MenuRanking

% Last Modified by GUIDE v2.5 17-May-2023 22:17:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MenuRanking_OpeningFcn, ...
                   'gui_OutputFcn',  @MenuRanking_OutputFcn, ...
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


% --- Executes just before MenuRanking is made visible.
function MenuRanking_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MenuRanking (see VARARGIN)

% Choose default command line output for MenuRanking
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(handles.bobotTable, 'Data', cell(1, 6));
set(handles.hasilTable, 'Data', cell(0, 10));
setMerk(handles);
% UIWAIT makes MenuRanking wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MenuRanking_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in inputMenu.
function inputMenu_Callback(hObject, eventdata, handles)
% hObject    handle to inputMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Close the current figure
close(gcf);

% Open the new figure
input_laptop;

% Get all handles of components in the new figure


% --- Executes on button press in text4.
function text4_Callback(hObject, eventdata, handles)
% hObject    handle to text4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


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



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
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



function hargaMax_Callback(hObject, eventdata, handles)
% hObject    handle to hargaMax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hargaMax as text
%        str2double(get(hObject,'String')) returns contents of hargaMax as a double


% --- Executes during object creation, after setting all properties.
function hargaMax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hargaMax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%function conn = createDatabaseConnection()
    % Database connection configuration
    %databaseName = 'saw_laptop';
    %username = 'root';
    %password = '';
    %server = 'localhost';
    % conn = database(databaseName, username, password, 'MySQL', server);
    
    %username = 'root';
    %password = '';
    %name = 'saw_laptop';
    % Establish the database connection
  
   % conn = database(name, username, password);
   

function setMerk(handles)
   % Establish the database connection
conn = createDatabaseConnection();

% Execute a query to retrieve the data
query = 'SELECT nama_merk, id_merk FROM merk';
data = fetch(conn, query);
%data = table2cell(data);

% Extract the display text and values from the retrieved data
nama_merk = data.nama_merk;
nama_merk = [{'Semua Merk'}; nama_merk];
id_merk = data.id_merk;
disp('id_merk');
disp(id_merk);
%id_merk = num2cell(id_merk);
%id_merk = cell2mat(id_merk)*2;
disp('data');
disp(data);
disp('id_merk');
disp(id_merk);
disp('nama_merk');
disp(nama_merk);

% Create and populate the uipopupmenu
set(handles.merk, 'String', nama_merk);

% Retrieve the selected value from the uipopupmenu
selected_index = get(handles.merk, 'Value');
disp('selected_index');
disp(selected_index);
selected_value = id_merk(selected_index);
selected_value = str2double(selected_value);
disp('selected_value');
disp(selected_value);
% Use the selected value as needed
% ...

% Close the database connection when you're done
close(conn);
 
function hitungSAW(handles)
conn = createDatabaseConnection();
bobot = get(handles.bobotTable, 'Data');
disp(bobot);
maxHarga = get(handles.hargaMax,'string');
maxHarga = str2double(maxHarga);
disp(maxHarga);
k = [1,1,1,1,1,1];
bobot =  cellfun(@str2double, bobot);
% Find the indices of NaN values
nanBobot = isnan(bobot)
disp('nanBobot');
disp(nanBobot);
% Replace NaN values with 1 using logical indexing
bobot(nanBobot) = 1;
disp('bobot');
disp(bobot(1,2));
disp(bobot);

queryMerk = 'SELECT id_merk FROM merk';
dataMerk = fetch(conn, queryMerk);
disp(dataMerk);

id_merk = dataMerk.id_merk;
disp(id_merk);
selected_index = get(handles.merk, 'Value');

%selected_index = num2str(selected_index) ; 
%selected_index = str2double(selected_index) ; 
disp('selected_index');
disp(selected_index);
selected_index = selected_index-1 ; 
disp('selected_index');
disp(selected_index);
%cek apakah 0 atau kurang dari 0
if selected_index>0
id_merk = id_merk(selected_index);
else
    id_merk = 0;
end
disp('selected_value');
disp(id_merk);


% Execute a query to retrieve the data
queryLaptop = ['SELECT * ' ...
               'FROM laptop INNER JOIN processor ON processor.id_processor = laptop.id_processor ' ...
               'INNER JOIN ram ON ram.id_ram = laptop.id_ram ' ...
               'LEFT JOIN vga ON vga.id_vga = laptop.id_vga ' ...
               'INNER JOIN tipe_layar ON tipe_layar.id_tipe_layar = laptop.id_tipe_layar ' ...
               'INNER JOIN tipe_storage ON tipe_storage.id_tipe_storage = laptop.id_tipe_storage ' ...
               'INNER JOIN besar_storage ON besar_storage.id_besar_storage = laptop.id_besar_storage ' ...
               'INNER JOIN merk ON merk.id_merk = laptop.id_merk'];


% Add filter conditions if selected_index is not NaN
if id_merk ~= 0
    queryLaptop = [queryLaptop ' WHERE merk.id_merk = ' num2str(id_merk)];
end

% Add filter conditions if maxHarga is not NaN
if isnumeric(maxHarga) && ~isnan(maxHarga)
    if isnumeric(selected_index) && ~isnan(selected_index)
        queryLaptop = [queryLaptop ' AND'];
    else
        queryLaptop = [queryLaptop ' WHERE'];
    end
    queryLaptop = [queryLaptop ' laptop.harga <= ' num2str(maxHarga)];
end
dataLaptop = fetch(conn, queryLaptop);
dataNilai = [dataLaptop.nilai_processor, dataLaptop.nilai_ram, dataLaptop.nilai_besar_storage, dataLaptop.nilai_tipe_storage, dataLaptop.nilai_vga, dataLaptop.nilai_layar];
disp('dataNilai');
disp(dataNilai);
disp('table dataLaptop');
disp(dataLaptop);

disp('bobot');
disp(bobot);

%normalisasi bobot
bobot = bobot./sum(bobot);
disp('bobot');
disp(bobot);

%normalisasi matriks
[m n] = size(dataNilai);
R = zeros (m,n);
skor = zeros (m,1);
for j=1:n,
    if k(j)==1
        R(:,j)=dataNilai(:,j)./max(dataNilai(:,j));
    else
        R(:,j)=min(dataNilai(:,j))./dataNilai(:,j);
    end
end
disp('matriks hasil normalisasi');
disp(R);
% Create a logical mask for NaN elements
nanR = isnan(R);
% Replace NaN elements with 0
R(nanR) = 0;
disp('matriks hasil normalisasi');
disp(R);


%perangkingan sum bobot*matriksNorm  
for i=1:m
    skor(i) = sum(bobot.*R(i,:));
end
disp('skor');
disp(skor);
skor = num2cell(skor);
disp('skor');
disp(skor);

kode_model = dataLaptop.kode_model;
harga = num2cell(dataLaptop.harga);
nama_merk = dataLaptop.nama_merk;
processor = dataLaptop.nama_processor;
ram = dataLaptop.besar_ram;
besar_storage = dataLaptop.besar_storage;
tipe_storage = dataLaptop.nama_tipe_storage;
vga = dataLaptop.nama_vga;
tipe_layar = dataLaptop.nama_layar;
data = [kode_model, harga, nama_merk, processor, ram, besar_storage, tipe_storage, vga, tipe_layar, skor];
data = sortrows(data, -10, 'descend');
set(handles.hasilTable,'Data',data);
disp('data');
disp(data);
%hasilTable = sortrows(hasilTable, 10, 'descend');

 
% --- Executes on button press in hitungButton
function hitungButton_Callback(hObject, eventdata, handles)
% hObject    handle to hitungButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hitungSAW(handles);
