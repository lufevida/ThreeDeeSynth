function varargout = keyboard(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @keyboard_OpeningFcn, ...
                   'gui_OutputFcn',  @keyboard_OutputFcn, ...
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

function keyboard_OpeningFcn(hObject, ~, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = keyboard_OutputFcn(~, ~, handles)
varargout{1} = handles.output;

function C3_Callback(~, ~, ~) %#ok<*DEFNU>
playNote(48);

function Db3_Callback(~, ~, ~)
playNote(49);

function D3_Callback(~, ~, ~)
playNote(50);

function Eb3_Callback(~, ~, ~)
playNote(51);

function E3_Callback(~, ~, ~)
playNote(52);

function F3_Callback(~, ~, ~)
playNote(53);

function Gb3_Callback(~, ~, ~)
playNote(54);

function G3_Callback(~, ~, ~)
playNote(55);

function Ab3_Callback(~, ~, ~)
playNote(56);

function A3_Callback(~, ~, ~)
playNote(57);

function Bb3_Callback(~, ~, ~)
playNote(58);

function B3_Callback(~, ~, ~)
playNote(59);

function C4_Callback(~, ~, ~)
playNote(60);

function Db4_Callback(~, ~, ~)
playNote(61);

function D4_Callback(~, ~, ~)
playNote(62);

function Eb4_Callback(~, ~, ~)
playNote(63);

function E4_Callback(~, ~, ~)
playNote(64);

function F4_Callback(~, ~, ~)
playNote(65);

function Gb4_Callback(~, ~, ~)
playNote(66);

function G4_Callback(~, ~, ~)
playNote(67);

function Ab4_Callback(~, ~, ~)
playNote(68);

function A4_Callback(~, ~, ~)
playNote(69);

function Bb4_Callback(~, ~, ~)
playNote(70);

function B4_Callback(~, ~, ~)
playNote(71);

function C5_Callback(~, ~, ~)
playNote(72);

function Db5_Callback(~, ~, ~)
playNote(73);

function D5_Callback(~, ~, ~)
playNote(74);

function Eb5_Callback(~, ~, ~)
playNote(75);

function E5_Callback(~, ~, ~)
playNote(76);

function F5_Callback(~, ~, ~)
playNote(77);

function Gb5_Callback(~, ~, ~)
playNote(78);

function G5_Callback(~, ~, ~)
playNote(79);

function Ab5_Callback(~, ~, ~)
playNote(80);

function A5_Callback(~, ~, ~)
playNote(81);

function Bb5_Callback(~, ~, ~)
playNote(82);

function B5_Callback(~, ~, ~)
playNote(83);

function C6_Callback(~, ~, ~)
playNote(84);