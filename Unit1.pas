            unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, jpeg, OleCtnrs, Math,plmn, TeEngine,
  TeeProcs, Chart, Series, ComCtrls,Clipbrd, Mask,DateUtils;

type
  TStrGrid = class(TStringGrid);
  TForm1 = class(TForm)

    PageControl1: TPageControl;
    TabSheet_Зад1: TTabSheet;
    TabSheet_Зад2: TTabSheet;
    Label1: TLabel;
    Label16: TLabel;
    Label23: TLabel;
    Label15: TLabel;
    Label21: TLabel;
    Label28: TLabel;
    Label36: TLabel;
    Label40: TLabel;
    Label46: TLabel;
    Label17: TLabel;
    Label43: TLabel;
    Label24: TLabel;
    Label42: TLabel;
    Label18: TLabel;
    Label25: TLabel;
    Label29: TLabel;
    Label37: TLabel;
    Label41: TLabel;
    Label47: TLabel;
    Label50: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label52: TLabel;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    Panel11: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    Panel10: TPanel;
    Label38: TLabel;
    Label39: TLabel;
    Panel9: TPanel;
    Label34: TLabel;
    Label35: TLabel;
    Panel8: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Panel7: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Panel5: TPanel;
    Label3: TLabel;
    Label13: TLabel;
    Panel6: TPanel;
    Label14: TLabel;
    Label22: TLabel;
    Panel3: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Edit_dкс: TEdit;
    Edit_dр1: TEdit;
    Edit_ζи: TEdit;
    Edit_ζр: TEdit;
    Edit_Tи0: TEdit;
    Edit_Tр0: TEdit;
    Edit_Pи0: TEdit;
    Panel13: TPanel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Edit_U_от: TEdit;
    Edit_U_до: TEdit;
    Edit_U_шаг: TEdit;
    Panel14: TPanel;
    Label58: TLabel;
    Label59: TLabel;
    Edit_Pатм: TEdit;
    Panel1: TPanel;
    Button_Расчет: TButton;
    Button11: TButton;
    Button3: TButton;
    Button2: TButton;
    CheckBox2: TCheckBox;
    Panel18: TPanel;
    Label30: TLabel;
    Panel17: TPanel;
    Label69: TLabel;
    Label70: TLabel;
    Edit_φи2соп: TEdit;
    Edit_φдиф: TEdit;
    Edit_φкс: TEdit;
    Edit_φр1соп: TEdit;
    Panel4: TPanel;
    Label61: TLabel;
    Label62: TLabel;
    Panel15: TPanel;
    Label63: TLabel;
    Label64: TLabel;
    Panel16: TPanel;
    Label65: TLabel;
    Label66: TLabel;
    Edit_Pр0: TEdit;
    ListBox1: TListBox;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    OpenDialog1: TOpenDialog;
    Edit_Зад2_ζр: TEdit;
    Edit_Зад2_ζи: TEdit;
    Edit_Зад2_Рсм4: TEdit;
    Edit_Зад2_Gp: TEdit;
    Edit_Зад2_Tр0: TEdit;
    Edit_Зад2_Ти0: TEdit;
    Edit_Зад2_Ри0: TEdit;
    Panel7_Зад2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Panel8_Зад2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Panel9_Зад2: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Panel3_Зад2: TPanel;
    Label10: TLabel;
    Label67: TLabel;
    Panel6_Зад2: TPanel;
    Label68: TLabel;
    Label71: TLabel;
    Panel5_Зад2: TPanel;
    Label72: TLabel;
    Label73: TLabel;
    ListBox1_Зад2: TListBox;
    StringGrid_Зад2_Диограм: TStringGrid;
    StringGrid2_Зад2: TStringGrid;
    Button8_Зад2: TButton;
    Button7_Зад2: TButton;
    Button6_Зад2: TButton;
    Edit_Зад2_dp: TEdit;
    Panel14_Зад2: TPanel;
    Label74: TLabel;
    Label75: TLabel;
    Panel13_Зад2: TPanel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Edit_Зад2_U_от: TEdit;
    Edit_Зад2_U_до: TEdit;
    Edit_Зад2_U_шаг: TEdit;
    Panel12_Зад2: TPanel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Edit_Зад2_dp_от: TEdit;
    Edit_Зад2_dp_до: TEdit;
    Edit_Зад2_dp_шаг: TEdit;
    Panel18_Зад2: TPanel;
    Label30_Зад2: TLabel;
    Label31_Зад2: TLabel;
    Label32_Зад2: TLabel;
    Label33_Зад2: TLabel;
    Label60_Зад2: TLabel;
    Panel28: TPanel;
    Label87: TLabel;
    Label88: TLabel;
    Edit_Зад2_φи2соп: TEdit;
    Edit_Зад2_φдиф: TEdit;
    Edit_Зад2_φкс: TEdit;
    Edit_Зад2_φр1соп: TEdit;
    Panel29: TPanel;
    Label89: TLabel;
    Label90: TLabel;
    Panel30: TPanel;
    Label91: TLabel;
    Label92: TLabel;
    Panel31: TPanel;
    Label93: TLabel;
    Label94: TLabel;
    Panel1_Зад2: TPanel;
    Button_Расчет_Зад2: TButton;
    Button11_Зад2: TButton;
    Button3_Зад2: TButton;
    Button2_Зад2: TButton;
    CheckBox2_Зад2: TCheckBox;
    Edit_Зад2_Ратм: TEdit;
    Panel10_Зад2: TPanel;
    Label95: TLabel;
    Label96: TLabel;
    Label17_Зад2: TLabel;
    Label46_Зад2: TLabel;
    Label40_Зад2: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label36_Зад2: TLabel;
    Label23_Зад2: TLabel;
    Label16_Зад2: TLabel;
    Label1_Зад2: TLabel;
    Label28_Зад2: TLabel;
    Label21_Зад2: TLabel;
    Label15_Зад2: TLabel;
    Label54_Зад2: TLabel;
    Panel11_Зад2: TPanel;
    Label113: TLabel;
    Label114: TLabel;
    RadioGroup1_Зад2: TRadioGroup;
    Label2_Зад2: TLabel;
    Labe50_Зад2: TLabel;
    Label29_Зад2: TLabel;
    Label25_Зад2: TLabel;
    Label119: TLabel;
    Label47_Зад2: TLabel;
    Label41_Зад2: TLabel;
    Label37_Зад2: TLabel;
    Panel35: TPanel;
    Label110: TLabel;
    Panel12: TPanel;
    Label48: TLabel;
    Label49: TLabel;
    Label51: TLabel;
    Edit_Pр0_от: TEdit;
    Edit_Pр0_до: TEdit;
    Edit_Pр0_шаг: TEdit;
    TabSheet1: TTabSheet;
    Button6_Зад3: TButton;
    Button7_Зад3: TButton;
    Button8_Зад3: TButton;
    Edit_Зад3_dp: TEdit;
    Edit_Зад3_Gp: TEdit;
    Edit_Зад3_Tр0: TEdit;
    Edit_Зад3_ζи: TEdit;
    Edit_Зад3_ζр: TEdit;
    Edit_Зад3_Ратм: TEdit;
    Edit_Зад3_Ри0: TEdit;
    Edit_Зад3_Рсм4: TEdit;
    Edit_Зад3_Ти0: TEdit;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label2_Зад3: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    ListBox1_Зад3: TListBox;
    Panel2: TPanel;
    Button_Расчет_Зад3: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    CheckBox1: TCheckBox;
    Panel19: TPanel;
    Label125: TLabel;
    Label126: TLabel;
    Panel20: TPanel;
    Label127: TLabel;
    Label128: TLabel;
    Panel12_Зад3: TPanel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Edit_Зад3_dp_от: TEdit;
    Edit_Зад3_dp_до: TEdit;
    Edit_Зад3_dp_шаг: TEdit;
    Panel22: TPanel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Edit_Зад3_Gи_от: TEdit;
    Edit_Зад3_Gи_до: TEdit;
    Edit_Зад3_Gи_шаг: TEdit;
    Panel23: TPanel;
    Label135: TLabel;
    Label136: TLabel;
    Panel24: TPanel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Panel25: TPanel;
    Label142: TLabel;
    Label143: TLabel;
    Edit_Зад3_φи2соп: TEdit;
    Edit_Зад3_φдиф: TEdit;
    Edit_Зад3_φкс: TEdit;
    Edit_Зад3_φр1соп: TEdit;
    Panel26: TPanel;
    Label144: TLabel;
    Label145: TLabel;
    Panel27: TPanel;
    Label146: TLabel;
    Label147: TLabel;
    Panel32: TPanel;
    Label148: TLabel;
    Label149: TLabel;
    Panel33: TPanel;
    Label150: TLabel;
    Label151: TLabel;
    Panel34: TPanel;
    Label152: TLabel;
    Label153: TLabel;
    Panel36: TPanel;
    Label154: TLabel;
    Label155: TLabel;
    Panel37: TPanel;
    Label156: TLabel;
    Label157: TLabel;
    Panel38: TPanel;
    Label158: TLabel;
    Label159: TLabel;
    Panel39: TPanel;
    Label160: TLabel;
    Label161: TLabel;
    Panel40: TPanel;
    Label162: TLabel;
    Label163: TLabel;
    RadioGroup1_Зад3: TRadioGroup;
    StringGrid1: TStringGrid;
    StringGrid3: TStringGrid;
    Label164: TLabel;
    Panel41: TPanel;
    Label165: TLabel;
    Label166: TLabel;
    Label167: TLabel;
    Edit_Зад3_Pр0: TEdit;
    Panel21: TPanel;
    Label168: TLabel;
    Label169: TLabel;
    Label105: TLabel;
    Edit1: TEdit;
    Label170: TLabel;
    Panel42: TPanel;
    Label171: TLabel;
    Label172: TLabel;
    Label173: TLabel;
    Edit_Зад2_Pр0: TEdit;
    RadioGroup2_Зад2: TRadioGroup;
    Label53_Зад2: TLabel;
    StringGrid_Диограм: TStringGrid;
    RadioGroup2: TRadioGroup;
    Label123: TLabel;
    Panel43: TPanel;
    Label124: TLabel;
    Label174: TLabel;
    Label175: TLabel;
    Edit_dкс_от: TEdit;
    Edit_dкс_до: TEdit;
    Edit_dкс_шаг: TEdit;
    RadioGroup3: TRadioGroup;
    CheckBox_φр1соп: TCheckBox;
    Label177: TLabel;
    CheckBox_φкс: TCheckBox;
    CheckBox_φдиф: TCheckBox;
    CheckBox_φи2соп: TCheckBox;
    Panel44: TPanel;
    Label178: TLabel;
    Label179: TLabel;
    Edit_от_φр1соп: TEdit;
    Edit_до_φр1соп: TEdit;
    Panel45: TPanel;
    Label180: TLabel;
    Label181: TLabel;
    Edit_от_φкс: TEdit;
    Edit_до_φкс: TEdit;
    Panel46: TPanel;
    Label182: TLabel;
    Label183: TLabel;
    Edit_от_φдиф: TEdit;
    Edit_до_φдиф: TEdit;
    Panel47: TPanel;
    Label184: TLabel;
    Label185: TLabel;
    Edit_от_φи2соп: TEdit;
    Edit_до_φи2соп: TEdit;
    Button41: TButton;
    CheckBox5: TCheckBox;
    Label31: TLabel;
    Edit_точн_φр1соп: TEdit;
    Label32: TLabel;
    Edit_точн_φкс: TEdit;
    Edit_точн_φдиф: TEdit;
    Label33: TLabel;
    Label60: TLabel;
    Edit_точн_φи2соп: TEdit;
    Label176: TLabel;
    Edit2: TEdit;
    Timer1: TTimer;
    Edit3: TEdit;
    Label186: TLabel;
    Label187: TLabel;
    MaskEdit1: TMaskEdit;
    Memo1: TMemo;
    Edit4: TEdit;
    Label188: TLabel;
    procedure Button11Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button_РасчетClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit_Tр0KeyPress(Sender: TObject; var Key: Char);
    procedure Edit_Tи0KeyPress(Sender: TObject; var Key: Char);
    procedure Edit_ζрKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_ζиKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_dр1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit_dксKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_PатмKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_Pи0KeyPress(Sender: TObject; var Key: Char);
    procedure Edit_Pр0KeyPress(Sender: TObject; var Key: Char);
    procedure Edit_Pр0_отKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_Pр0_доKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_Pр0_шагKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_U_отKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_U_доKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_U_шагKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_φр1сопKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_φксKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_φдифKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_φи2сопKeyPress(Sender: TObject; var Key: Char);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure RadioGroup1_Зад2Click(Sender: TObject);
    procedure Button_Расчет_Зад2Click(Sender: TObject);
    procedure RadioGroup1_Зад3Click(Sender: TObject);
    procedure Button_Расчет_Зад3Click(Sender: TObject);
    procedure Edit_Зад3_GpChange(Sender: TObject);
    procedure RadioGroup2_Зад2Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure RadioGroup4Click(Sender: TObject);
    procedure CheckBox_φр1сопClick(Sender: TObject);
    procedure CheckBox_φксClick(Sender: TObject);
    procedure CheckBox_φдифClick(Sender: TObject);
    procedure CheckBox_φи2сопClick(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
   // procedure DeleteARow (Grid: TStringGrid; ARow: Integer);
  private
  //Процидуры
function RoundSignificant(num: Extended; col: integer): Extended;  //Округлить
function Выравнивание_Label(Label_1,Label_2: TLabel): Extended;
function Выравнивание_Edit(Edit_1,Edit_2: TEdit): Extended;
function Выравнивание_Panel(Panel_1,Panel_2: TPanel): Extended;
function Выравнивание_RadioGroup(RadioGroup_1,RadioGroup_2: TRadioGroup): Extended;
function Выравнивание_Button(Button_1,Button_2: TButton): Extended;
function Выравнивание_CheckBox(CheckBox_1,CheckBox_2: TCheckBox): Extended;
function Выравнивание_ListBox(ListBox_1,ListBox_2: TListBox): Extended;
function Цикл_по_U:boolean;  /// Цикл по U
function Цикл_Р0:boolean;  /// Цикл по Р0
function Считаем_СКО:boolean;  /// Считаем СКО
function Создание_графика_Расчет:boolean;  /// Создание графика Расчет
function StringGrid_шир_колон(SG_шир_колон: TStringGrid): Extended;
function StringGrid_шир_колон_результ(SG_шир_колон: TStringGrid): Extended;
    { Private declarations }
  public
    { Public declarations }
  end;

  type
  TStringGridHack = class(TStringGrid)
  public
    procedure MoveColumn(FromIndex, ToIndex: Longint);
    procedure MoveRow(FromIndex, ToIndex: Longint);
  end;

const
  e=2.7182818284590452353602874713526624977572 ;

  type mass = array[0..1000] of double;

var
  Form1: TForm1;
  //(((Исходные данные)))
  d↓р1,         // Внутренний Диаметр выходного сечения рабочего сопла
  d↓р1_от,d↓р1_до,d↓р1_шаг,

  d↓р1Внешн,    //  Диаметр выходного сечения рабочего сопла с учотом кромки сопла  (Внешний)
  d↓и1ПередКонфуз, //Внеший диаметр кольцевого сопла (инжектируемого)
  d↓диф3,     //Диаметр  выходного сечения диффузора (цилиндрическая)
  Δd↓р1,        //Шаг изменения  Диаметра выходного сечения рабочего сопла
  d↓кс2,             //Диаметр камеры смешениимя (цилиндрической)
  φ↓р1↑соп,       //Коэффициент скорости рабочего сопла
  φ↓и1↑соп,        //Коэффициент скорости инжектируемого сопла
  φ↓и2↑соп,
  φ↓диф,           //Коэффициент скорости диффузора
  φ↓диф_цикл, Δφ↓диф,
  φ↓р1↑соп_от,φ↓р1↑соп_до,φ↓кс_от,φ↓кс_до,φ↓и2↑соп_от,φ↓и2↑соп_до,φ↓диф_от,φ↓диф_до,
  φ_БольшойЦикл_от,φ_БольшойЦикл_до,
  P↓р,           //Давление рабочего потока
  P↓и,            //Давление инжектируемого потока
  P↓атм,       //атмосферное давление
  P↓р0,P↓р0_от,P↓р0_до,P↓р0_шаг,        //Давление рабочего потока на входе в первый эжектор
  P↓р0max,P↓р0min,P↓р0шаг,
  P↓и0,         //Давление инжектируемого потока на входе в первый эжектор
  T↓р0↑⁰,       //Температура торможения рабочего газа
  T↓и0↑⁰,        //Температура торможения инжектируемого газа
  ∑G↓и,        //Суммарный расход инжектируемого газа
  G↓р,          //Расход рабочего газа (перед первым эжектором)
  ΔP↓р3…1,    //Гидравлическое сопротивление участка сети (рабочий газ)
  ΔP↓и3…1,      //Гидравлическое сопротивление участка сети (инжектируемого газ)
  ζ↓р,ζ↓и,  //относительная влажность воздуха ,%
  V↓р,V↓и,V↓см, //объемный расход
  T↓см4↑⁰,
  P↓см4,
P↓р0Шаг№,P↓р0Шаг1,P↓р0Шаг2,P↓р0Разрядность,P↓р0Резерв,P↓р0ШагРезерв,P↓р0_3,P↓р0_1,P↓р0_2,
P↓р1Шаг№,P↓р1Шаг,P↓р1Шаг1,P↓р1Шаг2,P↓р1_1,P↓р1_2,P↓р1_3,P↓р1Разрядность,P↓р1Резерв,P↓р1ШагРезерв,
P↓р0нов,
  {μ↓Газ,μ↓пар,}μ↓р,μ↓и,μ↓и_пар,μ↓р_пар, //	Молекулярная масса воздуха и воды
  //R↓р↑пар,R↓р↑Газ,R↓и↑пар,rr↓и↑Газ,  //удельная газовая постоянная пара и воздуха
  Cp↑рПар,Cp↑рГаз,Cp↑иПар,Cp↑иГаз, //теплоемкость пара и воздуха
  ζ↓см4,ζ↓см3,
  f↓кс,
  f↓кснов,
  T↓норм,P↓норм,  ////Нормальные условвия (температура и давление)  ///
  V↓р↑норм,V↓и↑норм   //Обьемный расход при нормальных условиях
  //Массовая доля  рабочего потока (остаточного синтез-газа) :
{  ξ↓H2O↑раб,      //Массовая доля (ξ↓(H↓2 O)^раб) Н2О
  ξ↓H2↑раб,       //Массовая доля (ξ↓(H↓2)^раб) Н2
  ξ↓CO↑раб,       //Массовая доля (ξ↓CO^раб) СО
  ξ↓CO2↑раб,      //Массовая доля (ξ↓(CO↓2)^раб) СО2
  ξ↓CH4↑раб,       //Массовая доля (ξ↓(CH↓4)^раб) СН4
//Массовая доля  Инжектируемого потока (дымового газа)
  ξ↓O2↑ин,       //Массовая доля (ξ↓(O↓2)^ин) О2
  ξ↓N2↑ин,        //Массовая доля (ξ↓(N↓2)^ин) N2
  ξ↓H2O↑ин,       //Массовая доля (ξ↓(H↓2 O)^ин) H2O
  ξ↓CO2↑ин,       //Массовая доля (ξ↓(CO↓2)^ин) СО2
//Удельная теплоемкость рабочего потока Ср [Дж/(кг*К)]
  Cp↓H2O↑раб,      //Удельная теплоемкость (Cp↓(H↓2 O)↑раб) Н2О
  Cp↓H2↑раб,       //Удельная теплоемкость (Cp↓(H↓2)↑раб) Н2
  Cp↓CO↑раб,       //Удельная теплоемкость (Cp↓CO↑раб) СО
  Cp↓CO2↑раб,      //Удельная теплоемкость (Cp↓(CO↓2)↑раб) СО2
  Cp↓CH4↑раб,      //Удельная теплоемкость (Cp↓(CH↓4)↑раб) СН4
//Удельная теплоемкость Инжектируемого потока Ср [Дж/(кг*К)]
  Cp↓O2↑ин,        //Удельная теплоемкость (Cp↓(O↓2)^ин) О2
  Cp↓N2↑ин,        //Удельная теплоемкость (Cp↓(N↓2)^ин) N2
  Cp↓H2O↑ин,       //Удельная теплоемкость (Cp↓(H↓2 O)^ин) H2O
  Cp↓CO2↑ин,       //Удельная теплоемкость (Cp↓(CO↓2)^ин) СО2
//Газовая постоянная рабочего потока R [Дж/(кг∙К)]
  R↓H2O↑раб,      //Газовая постоянная (R↓(H↓2 O)↑раб) Н2О
  R↓H2↑раб,       //Газовая постоянная (R↓(H↓2)↑раб) Н2
  R↓CO↑раб,       //Газовая постоянная (R↓CO↑раб) СО
  R↓CO2↑раб,      //Газовая постоянная (R↓(CO↓2)↑раб) СО2
  R↓CH4↑раб,      //Газовая постоянная (R↓(CH↓4)↑раб) СН4
//Газовая постоянная Инжектируемого потока R [Дж/(кг∙К)]
  R↓O2↑ин,        //Газовая постоянная (R↓(O↓2)^ин) О2
  R↓N2↑ин,        //Газовая постоянная (R↓(N↓2)^ин) N2
  R↓H2O↑ин,       //Газовая постоянная (R↓(H↓2 O)^ин) H2O
  R↓CO2↑ин        //Газовая постоянная (R↓(CO↓2)^ин) СО2   }
       : Extended;

//Расчет
//G↓р,    //расход рабочего потока (будет менятся для каждого СА)
T↓см4,T↓см1,
P’↓p0,P’↓и0,  //	Давление насыщения
P’↓см1,
P↓см1↑пар,
rr↓см1↑пар,rr↓см1↑Газ,
G↓и0↑пар,G↓и0↑Газ,
P↓и1↑пар,
P↓р0↑пар,P↓и0↑пар,//	Парциальное давление водяного пара
rr↓р↑Газ,rr↓р↑пар,rr↓и↑Газ,rr↓и↑пар,//	Объемная доля воздуха и воды
m↓р↑Газ,m↓и↑Газ,m↓р↑пар,m↓и↑пар,//	Массовая доля воздуха и пара
rr↓р0↑Газ,rr↓р0↑пар,
m↓р0↑Газ,m↓р0↑пар,
G↓р0↑Газ,G↓р0↑пар,
rr↓р1↑пар,rr↓р1↑Газ,rr↓р1↑влага,
m↓р1↑Газ,m↓р1↑пар,m↓р1↑влага,
G↓р1↑Газ,G↓р1↑пар,G↓р1↑влага,
m↓см↑пар,m↓см↑Газ,m↓см↑влага,
m↓см_р↑Газ,m↓см_р↑пар,m↓см_р↑влага,m↓см_и↑Газ,m↓см_и↑пар,       //28.8.	Массовая доля воздуха, пара и влаги рабочего и инж .газов в смеси
rr↓см_р↑пар,rr↓см_р↑Газ,rr↓см_р↑влага,rr↓см_и↑пар,rr↓см_и↑Газ,  //28.8.	Обьемнаяы доля воздуха, пара и влаги рабочего и инж .газов в смеси
Cp↑смПар,Cp↑смГаз,Cp↑смВлага,
rr↓см↑пар,rr↓см↑Газ,rr↓см↑влага,
P↓см4↑пар,P↓см3↑пар,
T↓и0↑нов,
P’↓см4,P’↓см3,
Cp↑р1,
Cp↑рВлага,
P’↓р1,
P↓р1↑пар,
ζ↓р1,ζ↓см,
ζ↓см_цикл,Δζ↓см,
ζ↓иШаг1,ζ↓иШаг2,ζ↓иШаг,ζ↓иШаг№,ζ↓иРезерв,ζ↓иШагРезерв,
ζ↓р1_цикл,Δζ↓р1,
Cp↑р0,
k↓р0,
k↓р0↑нов,
ω↓р1↑дейст,ω↓и2↑дейст,ω↓см3↑дейст, //	Действительная скорость
T↓р2,T↓и2,
P↓р2,P↓и2,
P↓и2Шаг№,P↓и2Шаг1,P↓и2Шаг2,P↓и2Шаг,P↓и2Разрядность,P↓и2Резерв,P↓и2ШагРезерв,P↓и2_1,P↓и2_2,P↓и2_3,
ω↓и2,
ω↓и2_1,ω↓и2_2,
f↓и2,f↓р2,
f↓кс2_Цикл,
d↓кс2_Цикл,
G↓р_цикл,G↓и_цикл,G↓см_цикл,  //Подгон в цикле для определения P↓р1
G↓и1↑кр,
G↓и2↑кр,
G↓рǁǁP↓и1,
ΔG↓р,ΔG↓и,ΔG↓см,     //разници в цикле
Cp↑р,     //1)	Удельная теплоемкость рабочего  газа
Cp↑и,      //1)	Удельная теплоемкость  инжектируемого газа
R↓р,      //2)	Газовая постоянная рабочего  газа
R↓и,       //2)	Газовая постоянная  инжектируемого газа
k↓и,       //показатель адиабаты (k) для инжектируемого газа
k↓р,      //показатель адиабаты (k) для рабочего  газа
T↓р0,    //Температура рабочего газа на входе в эжектор
T↓р0Шаг№,T↓р0Шаг1,T↓р0Шаг2,T↓р0Шаг,T↓р0Резерв,T↓р0ШагРезерв,
T↓р0↑нов,
υ↓р0,    //5)	Удельный объем на входе в рабочее сопло
υ↓р1↑кр,
υ↓р1,    //объем на выходе из рабочего сопла
P↓р1,    //давление рабочего потока на выходе из рабочего сопла
P↓и1,     //давление инжектируемого потока на выходе из инжектируемого сопла
P↓р1↑кр,  //критическое давление рабочего потока на выходе из рабочего сопла
P↓и1↑кр,   //критическое давление инжектируемого потока на выходе из инжектируемого сопла
P↓и2↑кр,
P↓см2↑кр,
G↓р1↑кр,
//P↓1,        //P↓р1:=P↓и1:=P↓1 давление рабочего=давлени. во всем сечении 1-1
T↓и0,     //температура инжектируемого газа на входе в эжектор
υ↓и0,     //Удельный объем инжектируемого потока на выходе в эжектор
υ↓и1,     //Удельный объем на выходе из инжектируемого сопла
f↓р1,    //Площадь выходного сечения рабочего сопла (сечение 1-1)
f↓и1ПередКонфуз,  //Площадь  кольцевого сопла (инжектируемого)
Δf↓р1,f↓р1↑цикл,d↓р1↑цикл,ω↓и1↑цикл,ω↓см2↑цикл,f↓кс2↑цикл,d↓кс2↑цикл,P↓см2↑цикл, //Подгон в цикле
f↓р1↑кр,   //критическая Площадь выходного сечения рабочего сопла (сечение 1-1)
f↓и2↑кр,
f↓р1↑мах,  //Максимально возможная площядь при P↓р1 чуть меньше P↓и1
d↓р1↑мах,   //Максимально возможный диаметр при P↓р1 чуть меньше P↓и1
d↓р1↑кр,   //критический Диаметр выходного сечения рабочего сопла (сечение 1-1)
d↓и0,          //Диаметр трубы перед СА инж потока
d↓р0,          //Диаметр трубы перед СА раб потока
d↓кс, d↓кс_от, d↓кс_до, d↓кс_шаг,
δ↓р1↑кр,  //толщена погарн слоя при кретич реж течения
f↓кс2,        //Площадь сечения камеры смешения (цилиндрическая)
f↓диф3,     //Площадь сечения выходного сечения диффузора (цилиндрическая)
f↓и0,       //площядь трубы перед СА инж потока
f↓р0,       //площядь трубы перед СА раб потока
f↓и1,     //Площадь выходного сечения инжектируемого сопла (сечение 1-1)
f↓кс3,    //Площадь выходного сечения камеры смешения (цилиндрической) f↓кс2=f↓кс3
G↓и,     //расход инжектируемого газа
G↓и↑нов,
G↓и_от,G↓и_до,G↓и_шаг,
U,U_от,U_до,U_шаг,          //коэффициент инжекции
Umax,Umin,Uшаг,
λ↓р1, //приведенная скорость раб потока в сечении 1-1
λ↓р1↑дейст, //действительная приведенная скорость раб потока в сечении 1-1
Cp↑см,      //теплоемкость смеси  из эжектора
R↓см,       //газовая постоянная смеси  из эжектора
φ↓кс,       //коэффициент скорости камеры смешения
φ↓р1↑соп_кусок,
ω↓р1,    //скорость потока на выхлоде из рабочего сопла
ω↓и1минус,
ω↓и1плюс,
ω↓р1↑кр,ω↓и1↑кр,ω↓и2↑кр,  //критическая скорость рабочего потока
f↓кс↑нов,
ω↓и0,     //скрость инжект потока перед СА
ω↓р0,     //скрость раб потока перед СА
ω↓и1,     //скорость потока на выхлоде из инжектирующего сопла
ω↓и0↑кр , //критическая скорость инжектьруемого потока
ω↓см3↑кр,
ω↓р1ǁǁP↓и1, //скорость рабочего потока в связи с перерасширением
T↓р1,    //температура рабочего потока на выходе из рабочего сопла
T↓р1↑⁰,    //(для справки) рабочего потока на выходе из рабочего сопла
T↓см3↑⁰,
T↓и1,     //температура инжектируемого потока на выходе из инжектирующего сопла
a,b,c,      //квадратного уравнения
aa,bb_цикл,bb,cc,
υ↓см2,     //удельный объем в конце камеры смешения
P↓см2,     //давление  в конце камеры смешения
k↓см,       // Показатель адиабаты смеси
ω↓см2,     //скорость потока на выхлоде из камеры смешения
ω↓см3,      //скорость потока на выхлоде из камеры смешения
T↓см2,     //Температура потока на выхлоде из камеры смешения
T↓см2↑⁰,    //(для справки) температура тормажения на выхлоде из камеры смешения
P↓см3,     // давление  перед диффузором
P↓см_ОтнОткл,P↓см_Абс,P↓см_эксп,P↓см_Привид,∑ΔP↓см,P↓см_расч_табл,P↓см_Эксп_табл, //Относительное и абсолютное отклонение эксперимента от расчета
υ↓см3,     // удельный объем перед диффузором
T↓см3,     // 18)	Температура смеси (перед диффузором)
υ↓см4,      // удельный объем за диффузором
G↓см,       // 19)	Расход на выходе из эжектора
f↓кс2_к_f↓р1,
Re↓р1,Re↓и1,Re↓см2,Re↓см3,//Число Рейнольдца
η↓р1,η↓и1,η↓см2,η↓см3, //Вяскость (Варгафтик)
P↓р1_циклШаг,G↓р_цикл1,G↓р_цикл2,P↓и1_циклШаг,ω↓и1Шаг,ω↓р1Шаг,ω↓р1Шаг1,ω↓р1Шаг2,ω↓р1Шаг№,ω↓и1Шаг№,ω↓и1Шаг1,ω↓и1Шаг2,
P↓см4Шаг,P↓см4Шаг№,P↓см4Шаг1,P↓см4Шаг2,P↓см4↑кр,P↓см4Разрядность,P↓см4_1,P↓см4_2,P↓см4_3,P↓см4Резерв,P↓см4ШагРезерв,ΔP↓см4,P↓см4↑нов,
P↓см3Шаг,P↓см3Шаг№,P↓см3Шаг1,P↓см3Шаг2,P↓см3↑кр,P↓см3Разрядность,P↓см3_1,P↓см3_2,P↓см3_3,P↓см3Резерв,P↓см3ШагРезерв,ΔP↓см3,P↓см3↑нов,

G↓и_цикл1,G↓и_цикл2,
ΔI,          //потеря импульса в КС в связи стрен (больше 0) + ипмульс от реакции со стенками конфузора (больше 0)
∫fPd,       //потеря в  изобарическом конфузоре
m,          // =ω↓и1/ω↓р1
А↑⁰,
k,
L↑⁰,
k1,        //коэффициент "[Абрамович «Турбулентное смешение газовых струй» 1974]"
Lн,        //Длина ядра струи (начального участка)             "[Абрамович «Турбулентное смешение газовых струй» 1974]"
Lн_цикл,LнШаг,Lн_цикл1,Lн_цикл2,ΔLн,LнШаг№,LнШаг1,LнШаг2,LнРазрядность,ω↓и1Разрядность,ω↓р1Разрядность,
f↓и2Шаг,f↓р1Разрядность,
ω↓р1Резерв,ω↓р1ШагРезерв,ω↓и1Резерв,ω↓и1ШагРезерв,LнРезерв,LнШагРезерв,
ω↓и2Шаг№,ω↓и2Шаг1,ω↓и2Шаг2,ω↓и2Шаг,
ω↓и2Разрядность,
ω↓и2Резерв,ω↓и2ШагРезерв,
ω↓см3Шаг№,ω↓см3Шаг1,ω↓см3Шаг2,ω↓см3Шаг,
ω↓см3Разрядность,
ω↓см3ШагРезерв,ω↓см3Резерв,
ω↓см3_1,ω↓см3_2,
f↓и2ШагРезерв,
bн,         // Толщина зоны смешения в конце начального участка  "[Абрамович «Турбулентное смешение газовых струй» 1974]"
dн,          //Диаметр  зоны смешения в конце начального участка  (2*bн)
δ↓1↑⁰⁰,δ↓2↑⁰⁰, //толщины потери импульса в пограничных слоях на внутренней и внешней поверхности кромки сопла, м (Абрамович «Прикладная газовая динамика»)
β,         //Отношение площади конфузора (в плоскости примыкающей к выходному сечению рабочего сопла) к площади выходного сечения камеры смешения
Ф↓1,Ф↓2,    //Линейные законы распределения давления по длине камеры смешения
aaa,bbb,ccc,  //решение квадратного уравнения Рсм3
ПропЗолСеч,  //пропорция золотого сечения.
a_Золот,b_Золот, //Задаются начальные границы отрезка золот сеч
Точность_Золот,Точность_БольшойЦикл,  //точность золот сеч
х_Золот1,х_Золот2, //Рассчитывают начальные точки деления золот сеч
∑ΔP↓см3_БольшойЦикл_1,∑ΔP↓см3_БольшойЦикл_2,∑ΔP↓см_Золот_1,∑ΔP↓см_Золот_2,φ↓и2↑соп_БольшойЦикл_1,φ↓и2↑соп_БольшойЦикл_2,φ↓р1↑соп_БольшойЦикл_1,φ↓р1↑соп_БольшойЦикл_2,φ↓кс_БольшойЦикл_1,φ↓кс_БольшойЦикл_2,φ↓диф_БольшойЦикл_1,φ↓диф_БольшойЦикл_2,
Выход_по_P↓см,
∑P↓см_Эксп_табл,СКО_эксп_от_расч,∑ΔP↓см_Эксп,СА_эксп,ДИСП_эксп,Корреляция
       : Extended;
G↓и↑логич,G↓и↑ИдемВнисНаСближение,
f↓р1↑логич,f↓р1↑логич↑мин,f↓р1↑логич↑плюс,f↓р1↑логич↑экстем,НачалиШагатьОбоатно,
ω↓см2Шаг1,ω↓см2Шаг2,P↓и1_циклШагМинус,P↓р1_циклШагМинус,G↓и_циклМеньшеНуля,ПервыйШагПеребор,G↓и_ЛогичТочка,  //определяет что наступил максимум функции f↓р1 от ω↓см2
ШагПеребор,G↓и_цикл_логик,G↓р_цикл_логик,Lн_логик,G↓р_логик,G↓и_логик,k↓р0_логик,T↓и0_логик,T↓р0_логик,f↓кс_логик,P↓см4_логик,
Выключатель_Цикла_T↓р0_по_ζ↓р1,    //отключает цикл T↓р0 по ζ↓р1  если  "True"
Выключатель_Цикла_T↓и0_по_T↓и0↑нов,  //отключает цикл T↓и0 по T↓и0↑нов  если  "True"
Выключатель_Цикла_ζ↓см_по_ζ↓и,        //отключает цикл ζ↓см по ζ↓и  если  "True"
Неизвесно_T↓см4__Известно_T↓и0_T↓р0,Нашел,Пересчет,P↓р0_Цикл,d↓р1_Цикл_Зад2,d↓р1_Цикл_Зад3,φ↓диф_логик,Выход,d↓кс_Цикл,φ_Золот_Логик,∑ΔP↓см3_БольшойЦикл_логик,CheckBox_БольшойЦикл   //Использовать только при Выключатель_Цикла_T↓и0_по_T↓и0↑нов=True ∑P↓см_расч_табл
       : Boolean;

 P↓р0Номер,d↓р1Номер,Nomer_G↓и_цикл,i_цикл,i,i_U,j_U,j,ii,jj,i_поиск,j_поиск,I_список,i_графика,строк_расч_табл,
 i_строка,i_столбец,jj_номер_Табл,КоличествоКомпонентов,III,О_Н,№Одинак_Назван,Нумирация,Высота_Переключ_стр,Ширена_Переключ_стр,iiii,jjjj,AAAA,bbbb,Номер_столбцы,i_стр_списка,n ,i_золт,i_БольшойЦикл,Колич_Подгон_φ,
 edit4_Width,edit4_Height,Число_точек
 : integer;  //штук для циклов и вписания в таблицы
 Имя,Ячейка,Одинаковые_Названия:string ;
 sg : TStringGrid;
My_Array : array of array of array of Extended; //Массив
//d↓р1_текст: String ;    //если написано в строке исходных данных "кр" значет диаметр критический
StTime, тест: TDATETIME;          //  Момент начала расчета
Время_до_выхода: TDATETIME;
//таймер выхода
  t_тайм : TDateTime;
  m_тайм : Word;
  s_тайм : String;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

{$R *.dfm}

//считаем СКО
 function TForm1.Считаем_СКО: boolean;
begin  //Считаем_СКО
  jjjj:=0;
  //строк_расч_табл:=(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).RowCount;
  строк_расч_табл:=0; //обнуление
  ∑ΔP↓см:=0; //обнуление
  Число_точек:=0 ;
  P↓см_расч_табл:=0 ;
  ∑P↓см_Эксп_табл:=0 ;
  for jjjj:=0 to Form8.StringGrid1.RowCount-1 do //по строкам
  try
    begin
       if strtofloat(Form8.StringGrid1.Cells[j_U-1,jjjj])>0 then
           begin
              P↓см_расч_табл:=strtofloat((FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[6, jjjj-строк_расч_табл-1])-P↓и0;
              P↓см_Эксп_табл:=strtofloat(Form8.StringGrid1.Cells[j_U,jjjj]);
              ∑P↓см_Эксп_табл:=∑P↓см_Эксп_табл+P↓см_Эксп_табл ;  // сумма всех значений Р из  Эксп
              ∑ΔP↓см:=∑ΔP↓см+sqr(P↓см_Эксп_табл-(P↓см_расч_табл));
              Число_точек:=Число_точек+1 ;
           end;
       if strtofloat(Form8.StringGrid1.Cells[j_U-1,jjjj])<=0 then
           строк_расч_табл:=строк_расч_табл+1;
    end;
  except
    //begin
      //∑ΔP↓см:=0; //борьба с гльком дейфи. он не заходил в "эксепт"
    //end;
  end;
end;  //Считаем_СКО

function TForm1.Цикл_Р0: boolean;
begin  //Цикл_Р0
    if (RadioGroup1.ItemIndex=2) and (I_список=ListBox1.Count-1) then  P↓р0_Цикл:=True ;
    if RadioGroup1.ItemIndex=2 then
       begin
         P↓р0:= StrToFloat(ListBox1.Items[I_список])*1000+P↓атм;
         I_список:=I_список+1   ;
       end;


//==========РАБОЧИЙ ПОТОК перед СА=========================================
    //Давление насыщения
     P’↓p0:=pul (5, 0, T↓р0-273.15)*1E6;     //(1.2) //T↓р0-273.15
     //Парциальное давление водяного пара
     P↓р0↑пар:=ζ↓р*P’↓p0  ;   //(1.3)
     //Объемная доля воздуха и воды
     rr↓р0↑Газ:=(P↓р0-P↓р0↑пар)/P↓р0   ;   //(1.4)
     rr↓р0↑пар:=1-rr↓р0↑Газ  ;   //(1.5)
     //Массовая доля воздуха и пара
     m↓р0↑Газ:=(rr↓р0↑Газ*μ↓р)/(rr↓р0↑Газ*μ↓р+rr↓р0↑пар*μ↓р_пар )  ;   //(1.6)
     m↓р0↑пар:=1-m↓р0↑Газ   ;   //(1.7)
     //Удельная газовая постоянная влажного воздуха
     R↓р:=8314/(rr↓р0↑Газ*μ↓р+rr↓р0↑пар*μ↓р_пар ); // (1.8)
     // Удельный объем рабочего потока перед СА, м3/кг
     υ↓р0:= (R↓р * T↓р0) / P↓р0; // (1.9)
     // Теплоемкость
     Cp↑р0 := Cp↑рПар*m↓р0↑пар+Cp↑рГаз*m↓р0↑Газ; // (1.13)
     // Показатель адиабаты
     k↓р0 := Cp↑р0 / (Cp↑р0 - R↓р); // (1.14)
     // Критическая скорость
     ω↓р1↑кр := Sqrt(2 * k↓р0 / (k↓р0 + 1) * P↓р0 * υ↓р0);
     // (ДЛЯ СПРАВКИ)
     // Скорость рабочего потока на выходе из рабочего сопла (сечение 1-1), м/с
     ω↓р1 := φ↓р1↑соп * Sqrt(2*k↓р0/(k↓р0-1)*P↓р0*υ↓р0*( 1-power(P↓и0/P↓р0 ,(k↓р0-1)/k↓р0) ))  ;   //(1.15)
     //Действительная скорость рабочего потока на выходе из рабочего сопла (сечение 1-1), м/с
     ω↓р1↑дейст:=ω↓р1  ;   //(1.39)

      //Площаь рабочего сопла
      f↓р1:=pi/4*Sqr(d↓р1)    ;
     //Массовый расход
     //Коэффициент потерь в рабочем сопле
     G↓р:=φ↓р1↑соп*(f↓р1*Sqrt(2*k↓р0/(k↓р0-1)*P↓р0/υ↓р0*( power(P↓и0/P↓р0 ,2/k↓р0)-power(P↓и0/P↓р0 ,(k↓р0+1)/k↓р0) )))  ; //G↓р*3600
   //  G↓р:=f↓р1*ω↓р1↑дейст/υ↓р0  ;   //(1.10)    G↓р*3600
      //температуру рабочего потокав сечение 1-1, К (ДЛЯ СПРАВКИ)
      T↓р1:=T↓р0-Sqr(ω↓р1↑дейст)/(2*Cp↑р0)  ; //T↓р1-273.15      T↓р0-273.15

      ω↓р1↑кр:=sqrt(R↓р*k↓р0*T↓р1) ; //кретич скор
      if ω↓р1>=ω↓р1↑кр then U:=U_до ;   //сверх звук

     //Массовый расход воздуха и пара
     G↓р0↑Газ:=m↓р0↑Газ*G↓р  ;   //(1.11)  //G↓р0↑Газ*3600
     G↓р0↑пар:=m↓р0↑пар*G↓р  ;   //(1.12)    //G↓р0↑пар*3600
     	//Объемная доля пара
       rr↓р1↑пар:=rr↓р0↑пар ;   //при условии не выпадении влаги
     	//Давление насыщения
      ζ↓р1:=0;
      P’↓р1:=0;
      P↓р1↑пар:=0;
      if T↓р1-273.15>=0 then
        begin
          P’↓р1:=pul (5, 0, T↓р1-273.15)*1E6;   //(1.41)       T↓р1-273.15        T↓р0-273.15
          //Парциальное давление пара
          P↓р1↑пар:=P↓и0*rr↓р1↑пар  ;   //(1.42)
          //Давление насыщения
          ζ↓р1:=P↓р1↑пар/P’↓р1 ;       //ζ↓р
        end;
      Cp↑р1:=Cp↑р0;              //хлам
      G↓р1↑пар:=G↓р0↑пар ;       //хлам
      G↓р1↑Газ:=G↓р0↑Газ ;     //хлам
      G↓р1↑влага:=0;
      m↓р1↑влага:=0;
      Cp↑рВлага:=0;
      Cp↑смВлага:=0;
      //rr↓р1↑пар:=rr↓р0↑пар ; копия
      rr↓р1↑Газ:=rr↓р0↑Газ ;       //хлам
      m↓р1↑пар:=m↓р0↑пар ;           //хлам
      m↓р1↑Газ:=m↓р0↑Газ ;         //хлам
//==========ИНЖЕКТИРУЕМЫЙ ПОТОК ПЕРЕД СА=========================================
      //Давление насыщения
      P’↓и0:=pul (5, 0, T↓и0-273.15)*1E6;           //(1.2)     T↓и0-273.15
      //Парциальное давление водяного пара
      P↓и0↑пар:=ζ↓и*P’↓и0     ;      //(1.3)
      //Объемная доля воздуха и воды
      rr↓и↑Газ:=(P↓и0-P↓и0↑пар)/P↓и0      ;      //(1.4)
      rr↓и↑пар:=1-rr↓и↑Газ     ;      //(1.5)
      //Массовая доля воздуха и пара
      m↓и↑Газ:=(rr↓и↑Газ*μ↓и)/(rr↓и↑Газ*μ↓и+rr↓и↑пар*μ↓и_пар )     ;      //(1.6)
      m↓и↑пар:=1-m↓и↑Газ      ;      //(1.7)
      //Удельная газовая постоянная влажного воздуха
      R↓и:=8314/(rr↓и↑Газ*μ↓и+rr↓и↑пар*μ↓и_пар )     ;      //(1.8)
      //Теплоемкость
      Cp↑и:=Cp↑иПар*m↓и↑пар+Cp↑иГаз*m↓и↑Газ     ;      //(1.13)
      //Показатель адиабаты
      k↓и:=Cp↑и/(Cp↑и-R↓и )     ;      //(1.14)
      //Удельный объем рабочего потока перед СА, м3/кг  (ДЛЯ СПРАВКИ)
      υ↓и0:=(R↓и*T↓и0)/(P↓и0 )     ;      //(1.9)


      //Площаь камеры смешения
      f↓кс:=pi/4*Sqr(d↓кс)  ;
      //Площадь инж сопла
      f↓р2:=f↓р1 ;
      f↓и2:=f↓кс-f↓р2 ;    //(1.65)



   //U_шаг:=0.1 ;
   //U_до:=2.5 ;



//++++++++++++++++Цикл (U=U_до)++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  Нумирация:=0 ;
end;   //Цикл_Р0

 //Цикл по U
 function TForm1.Цикл_по_U: boolean;
begin //TForm1.Цикл_по_U
      if ((∑ΔP↓см_Золот_1=0) and (Колич_Подгон_φ=1)) or ((CheckBox_φр1соп.Checked=False)
         and (CheckBox_φкс.Checked=False) and  (CheckBox_φдиф.Checked=False)
         and (CheckBox_φи2соп.Checked=False))  then  //  список U по экстерименту
          (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).RowCount:=(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).RowCount+1 ;

//++++++++++++++++Цикл (P↓см3)++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
     // U:=0.033045195842  ;
     // U:=0.730231151642558  ;      //СА2 Рр0 = 30кПа  № 136
     // U:=-0.93351245586212   ;      //СА2 Рр0 = 30кПа  № 26
      G↓и:=U*G↓р ;      // G↓и*3600     G↓р*3600
            //Массовый расход воздуха и пара
            G↓и0↑Газ:=m↓и↑Газ*G↓и     ;      //(1.11)     //G↓и0↑Газ*3600
            G↓и0↑пар:=m↓и↑пар*G↓и     ;      //(1.12)          //G↓и0↑пар*3600
     if U<0  then  G↓см:=G↓р-abs(G↓и)
      else
                   G↓см:=G↓и+G↓р ;    //G↓см*3600

    //  G↓см:=G↓и+G↓р ;



//++++++++++++++++Цикл (Р↓и2)++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


//φ↓и2↑соп:=1 ;     //=0.98
//G↓и:=0.0021291706 ;
G↓и2↑кр:=φ↓и2↑соп*f↓и2*Sqrt(2*k↓и/(k↓и+1)*P↓и0/υ↓и0* power(2/(k↓и+1) ,2/(k↓и-1)))  ; //G↓и*3600    G↓и2↑кр*3600
P↓и2↑кр:=P↓и0*power(2/(k↓и+1),k↓и/(k↓и-1)) ;



      //P↓и2↑кр:=P↓и0*power(2/(k↓и0+1),k↓и0/(k↓и0-1)) ;
      P↓и2:=P↓и0 ;    //начальное значение должнобыть больше предпологаемого ответа (но необязательно просто считать будет дольше, я добавил логическое вырожение)  и не равно начальному шагу (у формулы можетбыть мах вохможное значение параметра (при большем она не счетае - корень из отрец числа))
      G↓и_цикл:=0  ;  //для цикла
      P↓и2Шаг№:=0 ;   //для цикла
      P↓и2Шаг1:=0 ;   //для цикла
      P↓и2Шаг2:=0 ;   //для цикла
      ii:=1;
      //Найдем шаг (он имеет такойже порядок что и начальное значение)
      if Trunc(P↓и2)<>0 then  // если число лольше либо раное 1  (целая часть не равна нулю)
        P↓и2Шаг :=power(10,(Length(FloatToStr( Trunc(P↓и2) ))-1))  //для цикла  - Шаг долженбыть тогоже порядка что и начальное значение
      else                  //в ином случае
         begin
            P↓и2Разрядность:=P↓и2 ;
            while P↓и2Разрядность<1  do
              begin
                ii:=ii*10;
                P↓и2Разрядность:=P↓и2Разрядность*10 ;
              end;
            P↓и2Шаг :=power(10,(1-Length(FloatToStr( ii ))))
         end;
      //зададим новое исходное значение  такого же порядка что и нанчальное значение (таким образом мы избавляемся от знаков в порядках меньших чем будут получеен ы далее).  Умножаем на два на случай если P↓и2 не можетбыть равно нулю  (в этом случае может - не нравется можете стереть это не нашто не влияет)
      P↓и2:=P↓и2Шаг ;

      ii:=1;

      //запомним исходные значеня. В цикле они будут использованы, если задоное начальное значение меньше ответа
      P↓и2Резерв:=P↓и2 ;
      P↓и2ШагРезерв:=P↓и2Шаг ;
      While Abs(G↓и_цикл-G↓и)>=power(10,-16) Do  //при большей разницы не считает (выкидывеет из расчета) (выставлять вручную)
      //While G↓и_логик=False Do  //Если  делфи не видет разницы между (Lн-Lн_цикл) предыдущего цикла и (Lн-Lн_цикл) из нового цикла
         begin
           P↓и2_3:=P↓и2_1 ;
           P↓и2_1:=P↓и2 ;
           if G↓и<0 then
                P↓и2:=P↓и2-(G↓и_цикл-G↓и)/abs(G↓и_цикл-G↓и)*P↓и2Шаг  //шаг изменения
           else
                P↓и2:=P↓и2+(G↓и_цикл-G↓и)/abs(G↓и_цикл-G↓и)*P↓и2Шаг;
           P↓и2_2:=P↓и2 ;
           P↓и2Шаг1:=P↓и2Шаг2 ;
            //if ΔG↓и=abs(G↓и-G↓и_цикл) then //Если  делфи не видет разницы между (Lн-Lн_цикл) предыдущего цикла и (Lн-Lн_цикл) из нового цикла
            //       G↓и_логик:=True ;
             ΔG↓и:=abs(G↓и-G↓и_цикл) ;  //для справки
             P↓и2Шаг№:=P↓и2Шаг№+1 ;
             P↓и2Шаг2:=P↓и2Шаг ;
             if P↓и2Шаг1>P↓и2Шаг2 then
               P↓и2Шаг№:=0 ;
             if ((P↓и2_3=P↓и2_2) or (P↓и2_3=P↓и2_1)) and (P↓и2Шаг№<>0) then
               P↓и2Шаг№:=10 ;
             if P↓и2Шаг№=10 then
                begin
                  P↓и2Шаг:=P↓и2Шаг*0.1 ;
                  P↓и2Шаг№:=0 ;
                end;
             if P↓и2<P↓и2↑кр then
               P↓и2:=P↓и2_1 ;
             if P↓и2>P↓и0 then
               P↓и2:=P↓и2_1 ;
            // if (U>0) and (U<1e-6) then
            //   P↓и2:=P↓и2_1  ;
             if P↓и2Шаг<=1e-50 then  //принудительное увеличение начального значеня и шага в 10 раз в связи с невозможностью применения шага меньше power(10.-22), т.к. число значищих знаков, у числа с типом Extended,  после запятой  неможет быть больше 20 (вроде бы по теории так). Я взял  30 не значищих знаков навсякий пожарный (они выливаются в 300 кругов в цикле)
               begin
                 P↓и2:= P↓и2Резерв*power(10,ii) ;
                 P↓и2Шаг:=P↓и2ШагРезерв*power(10,ii) ;
                 G↓и_цикл:=0  ;  //для цикла
                 P↓и2Шаг№:=0 ;   //для цикла
                 P↓и2Шаг1:=0 ;   //для цикла
                 P↓и2Шаг2:=0 ;   //для цикла
                 ii:=ii+1 ;
               end;
           //G↓и_цикл:=f↓и2*P↓и2*φ↓и2↑соп/υ↓и2*power( 1-Sqr(P↓и2*φ↓и2↑соп)/(2*Cp↑и*T↓и2), 1/(k↓и-1) )  ; 	//(1.66)
            if G↓и<0 then
                  G↓и_цикл:=-φ↓и2↑соп*(f↓и2*Sqrt(2*k↓и/(k↓и-1)*P↓и0/υ↓и0*( power(P↓и2/P↓и0 ,2/k↓и)-power(P↓и2/P↓и0 ,(k↓и+1)/k↓и) )))   //G↓и*3600     G↓и_цикл*3600
            else
                  G↓и_цикл:=φ↓и2↑соп*(f↓и2*Sqrt(2*k↓и/(k↓и-1)*P↓и0/υ↓и0*( power(P↓и2/P↓и0 ,2/k↓и)-power(P↓и2/P↓и0 ,(k↓и+1)/k↓и) )))   //G↓и*3600     G↓и_цикл*3600

end;
 //----------------Цикл (Р↓и2)----------------------------------------------------------------------

      	//Действительная скорость инжектируемого потока в сечение 2-2, м/с
      ω↓и2:=φ↓и2↑соп*Sqrt(2*k↓и/(k↓и-1)*P↓и0*υ↓р0*( 1-power(P↓и2/P↓и0 ,(k↓и-1)/k↓и) ))  ;   //(1.15)

      	ω↓и2↑дейст:=ω↓и2  ;   //(1.67)

      //φ↓и2↑соп   учитывает потерю скорости инжектируемого потока до сечения 2-2
      	//Температура инжектируемого потока в сечение 2-2, К  (ДЛЯ СПРАВКИ)
      	T↓и2:=T↓и0-Sqr(ω↓и2↑дейст)/(2*Cp↑и )  ;   //(1.68) T↓и2-273.15    T↓и0-273.15

        ω↓и2↑кр:=sqrt(R↓и*k↓и*T↓и2)  ;
        if ω↓и2>=ω↓и2↑кр then        U:=U_до ;   //сверх звук
      	//Давление инжектируемого потока на выходе из инжектируемого сопла (сечение 2-2), Па
      //	P↓и2:=P↓и0*power(T↓и2/T↓и0,k↓и/(k↓и-1))  ;   //(1.69)
        //G↓и_цикл:=φ↓и2↑соп*(f↓и2*Sqrt(2*k↓и/(k↓и-1)*P↓и0/υ↓и0*( power(P↓и2/P↓и0 ,2/k↓и)-power(P↓и2/P↓и0 ,(k↓и+1)/k↓и) )))  ; //G↓и*3600   G↓и_цикл*3600      abs(G↓и*3600)-G↓и_цикл*3600         G↓и/G↓р

//==========Параметры смеси=========================================
        if  U>0 then   //не особо правельно но каму нужен инжектор работующий в обратную сторону
           begin
            	//28.8.	Массовая доля воздуха, пара и влаги рабочего и инж .газов в смеси (ПРИ U<0 Бред полный)
             	m↓см_р↑Газ:=G↓р1↑Газ/G↓см  ;   //(1.55)      //G↓см*3600  G↓р*3600
             	m↓см_р↑пар:=G↓р1↑пар/G↓см   ;   //(1.56)         (m↓см_р↑Газ+m↓см_и↑Газ)*100
             	m↓см_р↑влага:=G↓р1↑влага/G↓см  ;   //(1.57)
             	m↓см_и↑Газ:=G↓и0↑Газ/G↓см  ;   //(1.55)      //G↓см*3600
             	m↓см_и↑пар:=G↓и0↑пар/G↓см   ;   //(1.56)
             	//m↓см_и↑влага:=G↓и0↑влага/G↓см  ;   //(1.57)     (m↓см_р↑пар+m↓см_и↑пар)*100
            	//Теплоемкость смеси
             Cp↑см:=Cp↑иПар*m↓см_и↑пар+Cp↑иГаз*m↓см_и↑Газ+{Cp↑иВлага*m↓и↑влага}+Cp↑рПар*m↓см_р↑пар+Cp↑рГаз*m↓см_р↑Газ+Cp↑рВлага*m↓см_р↑влага  ;   //(1.58)

 //        //Объемная доля воздуха и воды
             rr↓см_р↑пар:=(m↓см_р↑пар/μ↓р_пар)/(m↓см_р↑Газ/μ↓р+m↓см_р↑пар/μ↓р_пар+m↓см_р↑влага/μ↓р_пар+m↓см_и↑Газ/μ↓и+m↓см_и↑пар/μ↓и_пар{+m↓см_и↑влага/μ↓и_пар} )  ;   //(1.60)
             rr↓см_р↑Газ:=(m↓см_р↑Газ/μ↓р)/(m↓см_р↑Газ/μ↓р+m↓см_р↑пар/μ↓р_пар+m↓см_р↑влага/μ↓р_пар+m↓см_и↑Газ/μ↓и+m↓см_и↑пар/μ↓и_пар{+m↓см_и↑влага/μ↓и_пар} )  ;   //(1.61)
             rr↓см_р↑влага:=(m↓см_р↑влага/μ↓р_пар)/(m↓см_р↑Газ/μ↓р+m↓см_р↑пар/μ↓р_пар+m↓см_р↑влага/μ↓р_пар+m↓см_и↑Газ/μ↓и+m↓см_и↑пар/μ↓и_пар{+m↓см_и↑влага/μ↓и_пар} )  ;   //(1.61)
             rr↓см_и↑пар:=(m↓см_и↑пар/μ↓и_пар)/(m↓см_р↑Газ/μ↓р+m↓см_р↑пар/μ↓р_пар+m↓см_р↑влага/μ↓р_пар+m↓см_и↑Газ/μ↓и+m↓см_и↑пар/μ↓и_пар{+m↓см_и↑влага/μ↓и_пар} )  ;   //(1.60)
             rr↓см_и↑Газ:=(m↓см_и↑Газ/μ↓и)/(m↓см_р↑Газ/μ↓р+m↓см_р↑пар/μ↓р_пар+m↓см_р↑влага/μ↓р_пар+m↓см_и↑Газ/μ↓и+m↓см_и↑пар/μ↓и_пар{+m↓см_и↑влага/μ↓и_пар} )  ;   //(1.61)
             //rr↓см_и↑влага:=(m↓см_и↑влага/μ↓и_пар)/(m↓см_р↑Газ/μ↓р+m↓см_р↑пар/μ↓р_пар+m↓см_р↑влага/μ↓р_пар+m↓см_и↑Газ/μ↓и+m↓см_и↑пар/μ↓и_пар{+m↓см_и↑влага/μ↓и_пар} )  ;   //(1.61)

             	//Удельная газовая постоянная смеси
              R↓см:=8314/(rr↓см_р↑Газ*μ↓р+rr↓см_р↑пар*μ↓р_пар+rr↓см_р↑влага*μ↓р_пар+rr↓см_и↑Газ*μ↓и+rr↓см_и↑пар*μ↓и_пар{+rr↓см_и↑влага*μ↓и_пар} )   ;   //(1.70)
          end;
       if U<0 then   //не особо правельно но каму нужен инжектор работующий в обратную сторону
           begin
              Cp↑см:=Cp↑и ;
              R↓см:=R↓и ;
            if   RadioGroup2.ItemIndex=0  then   //с диффузором
                  T↓см4:=T↓и0   //T↓см4-273.15      G↓р>abs(G↓и)  G↓р-abs(G↓и)
              else   //без диффузора
                  T↓см3:=T↓и0   //T↓см4-273.15      G↓р>abs(G↓и)  G↓р-abs(G↓и)
           end;
      	//Показатель адиабаты смеси на выходе из СА
      	k↓см:=Cp↑см/(Cp↑см-R↓см )  ;   //(1.71)
     //Температура смеси за СА

if   RadioGroup2.ItemIndex=0  then   //с диффузором
   begin    //RadioGroup2.ItemIndex=0  then   //с диффузором
      //+++++++++++++++++++++ЦИКЛ(P↓см3 по P↓см4)+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
P↓см4↑кр:=P↓и0*power(2/(k↓и+1),k↓и/(k↓и-1)) ;
P↓см4_логик:=False ;    //для цикла
P↓см4:=P↓и0  ;  //для цикла  начальное значение
P↓см4↑нов:=0;   //для цикла
P↓см3↑нов:=0;   //для цикла
P↓см3:=1;   //для захода в цикл
      P↓см4:=P↓р0 ;    //начальное значение должнобыть больше предпологаемого ответа (но необязательно просто считать будет дольше, я добавил логическое вырожение)  и не равно начальному шагу (у формулы можетбыть мах вохможное значение параметра (при большем она не счетае - корень из отрец числа))
      G↓см_цикл:=0  ;  //для цикла
      P↓см4Шаг№:=0 ;   //для цикла
      P↓см4Шаг1:=0 ;   //для цикла
      P↓см4Шаг2:=0 ;   //для цикла
      ii:=1;
      //Найдем шаг (он имеет такойже порядок что и начальное значение)
      if Trunc(P↓см4)<>0 then  // если число лольше либо раное 1  (целая часть не равна нулю)
        P↓см4Шаг :=power(10,(Length(FloatToStr( Trunc(P↓см4) ))-1))  //для цикла  - Шаг долженбыть тогоже порядка что и начальное значение
      else                  //в ином случае
         begin
            P↓см4Разрядность:=P↓см4 ;
            while P↓см4Разрядность<1  do
              begin
                ii:=ii*10;
                P↓см4Разрядность:=P↓см4Разрядность*10 ;
              end;
            P↓см4Шаг :=power(10,(1-Length(FloatToStr( ii ))))
         end;
      //зададим новое исходное значение  такого же порядка что и нанчальное значение (таким образом мы избавляемся от знаков в порядках меньших чем будут получеен ы далее).  Умножаем на два на случай если P↓см4 не можетбыть равно нулю  (в этом случае может - не нравется можете стереть это не нашто не влияет)
      P↓см4:=P↓см4Шаг ;

      ii:=1;

      //запомним исходные значеня. В цикле они будут использованы, если задоное начальное значение меньше ответа
      P↓см4Резерв:=P↓см4 ;
      P↓см4ШагРезерв:=P↓см4Шаг ;

    //While P↓см4_логик=False Do
      While Abs(P↓см3↑нов-P↓см3)>=power(10,-11) Do  //при большей разницы не считает (выкидывеет из расчета) (выставлять вручную)
        begin //  While P↓см4_логик=False Do
      //           if (P↓см4↑нов<>0) and (Abs(P↓см3↑нов-P↓см3)<=power(10,-11)) then  P↓см4_логик:=True ;
      //           if P↓см4↑нов<>0 then  P↓см4:=P↓см4↑нов ; //присваивание
           P↓см4_3:=P↓см4_1 ;
           P↓см4_1:=P↓см4 ;
           //if P↓см3<0 then
                P↓см4:=P↓см4+(P↓см3↑нов-P↓см3)/abs(P↓см3↑нов-P↓см3)*P↓см4Шаг  ;//шаг изменения
          // else
          //      P↓см4:=P↓см4+(P↓см3↑нов-P↓см3)/abs(P↓см3↑нов-P↓см3)*P↓см4Шаг;
           P↓см4_2:=P↓см4 ;
           P↓см4Шаг1:=P↓см4Шаг2 ;
            //if ΔP↓см3=abs(P↓см3-P↓см3_цикл) then //Если  делфи не видет разницы между (Lн-Lн_цикл) предыдущего цикла и (Lн-Lн_цикл) из нового цикла
            //       P↓см3_логик:=True ;
             ΔP↓см3:=abs(P↓см3-P↓см3↑нов) ;  //для справки
             P↓см4Шаг№:=P↓см4Шаг№+1 ;
             P↓см4Шаг2:=P↓см4Шаг ;
             if P↓см4Шаг1>P↓см4Шаг2 then
               P↓см4Шаг№:=0 ;
             if ((P↓см4_3=P↓см4_2) or (P↓см4_3=P↓см4_1)) and (P↓см4Шаг№<>0) then
               P↓см4Шаг№:=10 ;
             if P↓см4Шаг№=10 then
                begin
                  P↓см4Шаг:=P↓см4Шаг*0.1 ;
                  P↓см4Шаг№:=0 ;
                end;
             if P↓см4<P↓см4↑кр then
               P↓см4:=P↓см4_1 ;
             if P↓см4>P↓р0 then
               P↓см4:=P↓см4_1 ;
            // if (U>0) and (U<1e-6) then
            //   P↓см4:=P↓см4_1  ;
             if P↓см4Шаг<=1e-50 then  //принудительное увеличение начального значеня и шага в 10 раз в связи с невозможностью применения шага меньше power(10.-22), т.к. число значищих знаков, у числа с типом Extended,  после запятой  неможет быть больше 20 (вроде бы по теории так). Я взял  30 не значищих знаков навсякий пожарный (они выливаются в 300 кругов в цикле)
               begin
                 P↓см4:= P↓см4Резерв*power(10,ii) ;
                 P↓см4Шаг:=P↓см4ШагРезерв*power(10,ii) ;
                 P↓см3↑нов:=0  ;  //для цикла
                 P↓см4Шаг№:=0 ;   //для цикла
                 P↓см4Шаг1:=0 ;   //для цикла
                 P↓см4Шаг2:=0 ;   //для цикла
                 ii:=ii+1 ;
               end;


          P↓см4↑пар:=0;
          //T↓см4:=0;
          P’↓см4:=0;
          ζ↓см4:=0;
          if  U>0 then
              begin
            	//Парциальное давление водяного пара
            	P↓см4↑пар:=(rr↓см_р↑пар+rr↓см_и↑пар)*P↓см4  ;   //(1.62)
            	//Давление насыщения
              T↓см4:=(G↓р*Cp↑р0*T↓р0+G↓и*Cp↑и*T↓и0)/(G↓см*Cp↑см) ;   //T↓см4-273.15
            	P’↓см4:=pul (5, 0, T↓см4-273.15)*1E6;    //(1.63)
            	//Относительная влажность
            	ζ↓см4:=P↓см4↑пар/P’↓см4  ;   //(1.64)
             end;

      	//Удельный объем рабочего потока перед СА, м3/кг
      	υ↓см4:=R↓см*T↓см4/P↓см4  ;   //(1.72)    T↓см4-273.15



//++++++++++++++++Цикл (Р↓см3)++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//G↓см4↑кр:=φ↓диф*f↓см4*Sqrt(2*k↓и/(k↓и+1)*P↓см3/υ↓см3* power(2/(k↓и+1) ,2/(k↓и-1)))  ; //G↓см*3600
P↓см3↑кр:=P↓см4*power(2/(k↓и+1),k↓и/(k↓и-1)) ;



      //P↓см3↑кр:=P↓см3*power(2/(k↓см+1),k↓см/(k↓см-1)) ;
      P↓см3:=P↓см4 ;    //начальное значение должнобыть больше предпологаемого ответа (но необязательно просто считать будет дольше, я добавил логическое вырожение)  и не равно начальному шагу (у формулы можетбыть мах вохможное значение параметра (при большем она не счетае - корень из отрец числа))
      G↓см_цикл:=0  ;  //для цикла
      P↓см3Шаг№:=0 ;   //для цикла
      P↓см3Шаг1:=0 ;   //для цикла
      P↓см3Шаг2:=0 ;   //для цикла
      ii:=1;
      //Найдем шаг (он имеет такойже порядок что и начальное значение)
      if Trunc(P↓см3)<>0 then  // если число лольше либо раное 1  (целая часть не равна нулю)
        P↓см3Шаг :=power(10,(Length(FloatToStr( Trunc(P↓см3) ))-1))  //для цикла  - Шаг долженбыть тогоже порядка что и начальное значение
      else                  //в ином случае
         begin
            P↓см3Разрядность:=P↓см3 ;
            while P↓см3Разрядность<1  do
              begin
                ii:=ii*10;
                P↓см3Разрядность:=P↓см3Разрядность*10 ;
              end;
            P↓см3Шаг :=power(10,(1-Length(FloatToStr( ii ))))
         end;
      //зададим новое исходное значение  такого же порядка что и нанчальное значение (таким образом мы избавляемся от знаков в порядках меньших чем будут получеен ы далее).  Умножаем на два на случай если P↓см3 не можетбыть равно нулю  (в этом случае может - не нравется можете стереть это не нашто не влияет)
      P↓см3:=P↓см3Шаг ;

      ii:=1;

      //запомним исходные значеня. В цикле они будут использованы, если задоное начальное значение меньше ответа
      P↓см3Резерв:=P↓см3 ;
      P↓см3ШагРезерв:=P↓см3Шаг ;
      While Abs(G↓см_цикл-G↓см)>=power(10,-15) Do  //при большей разницы не считает (выкидывеет из расчета) (выставлять вручную)
      //While G↓см_логик=False Do  //Если  делфи не видет разницы между (Lн-Lн_цикл) предыдущего цикла и (Lн-Lн_цикл) из нового цикла
         begin
           P↓см3_3:=P↓см3_1 ;
           P↓см3_1:=P↓см3 ;
           //if G↓см<0 then
                P↓см3:=P↓см3+(G↓см_цикл-G↓см)/abs(G↓см_цикл-G↓см)*P↓см3Шаг  ;//шаг изменения
          // else
          //      P↓см3:=P↓см3+(G↓см_цикл-G↓см)/abs(G↓см_цикл-G↓см)*P↓см3Шаг;
           P↓см3_2:=P↓см3 ;
           P↓см3Шаг1:=P↓см3Шаг2 ;
            //if ΔG↓см=abs(G↓см-G↓см_цикл) then //Если  делфи не видет разницы между (Lн-Lн_цикл) предыдущего цикла и (Lн-Lн_цикл) из нового цикла
            //       G↓см_логик:=True ;
             ΔG↓см:=abs(G↓см-G↓см_цикл) ;  //для справки
             P↓см3Шаг№:=P↓см3Шаг№+1 ;
             P↓см3Шаг2:=P↓см3Шаг ;
             if P↓см3Шаг1>P↓см3Шаг2 then
               P↓см3Шаг№:=0 ;
             if ((P↓см3_3=P↓см3_2) or (P↓см3_3=P↓см3_1)) and (P↓см3Шаг№<>0) then
               P↓см3Шаг№:=10 ;
             if P↓см3Шаг№=10 then
                begin
                  P↓см3Шаг:=P↓см3Шаг*0.1 ;
                  P↓см3Шаг№:=0 ;
                end;
             if P↓см3<P↓см3↑кр then
               P↓см3:=P↓см3_1 ;
             if P↓см3>P↓см4 then
               P↓см3:=P↓см3_1 ;
            // if (U>0) and (U<1e-6) then
            //   P↓см3:=P↓см3_1  ;
             if P↓см3Шаг<=1e-50 then  //принудительное увеличение начального значеня и шага в 10 раз в связи с невозможностью применения шага меньше power(10.-22), т.к. число значищих знаков, у числа с типом Extended,  после запятой  неможет быть больше 20 (вроде бы по теории так). Я взял  30 не значищих знаков навсякий пожарный (они выливаются в 300 кругов в цикле)
               begin
                 P↓см3:= P↓см3Резерв*power(10,ii) ;
                 P↓см3Шаг:=P↓см3ШагРезерв*power(10,ii) ;
                 G↓см_цикл:=0  ;  //для цикла
                 P↓см3Шаг№:=0 ;   //для цикла
                 P↓см3Шаг1:=0 ;   //для цикла
                 P↓см3Шаг2:=0 ;   //для цикла
                 ii:=ii+1 ;
               end;
             G↓см_цикл:=1/φ↓диф*f↓кс/υ↓см4*Sqrt(2*k↓см/(k↓см-1)*P↓см3*υ↓см4*( power(P↓см4/P↓см3 ,(k↓см-2)/k↓см)-power(P↓см4/P↓см3 ,-1/k↓см) ))  ; //G↓см*3600     G↓см_цикл*3600
         end;

 //----------------Цикл (Р↓см3)----------------------------------------------------------------------
      	//Действительная скорость инжектируемого потока в сечение 2-2, м/с
        ω↓см3:=1/φ↓диф*Sqrt(2*k↓см/(k↓см-1)*P↓см3*υ↓см4*( P↓см4/P↓см3-power(P↓см4/P↓см3 ,1/k↓см) ))  ;   //(1.15)
        ω↓см3↑дейст:=ω↓см3 ;
       	//Температура смеси в сечении 3-3  //
      	T↓см3:=T↓см4-Sqr(ω↓см3↑дейст)/(2*Cp↑см )  ;   //(1.75)   //T↓см4-273.15  T↓см3-273.15

        ω↓см3↑кр:=sqrt(R↓см*k↓см*T↓см3)  ;
        if ω↓см3>=ω↓см3↑кр then U:=U_до ;   //сверх звук

      	//Давление смеси перед диффузором
      	//P↓см3:=P↓см4*power(T↓см3/T↓см4,k↓см/(k↓см-1))  ;   //(1.76)
//==========КАМЕРА СМЕШЕНИЯ=========================================
      //Давление смеси за диффузором   (ур импульса и ур аддиабаты)
      P↓р1:=P↓и0 ;  //дано
      P↓см3↑нов:=(φ↓кс*(G↓р*ω↓р1↑дейст+G↓и*ω↓и2↑дейст)-G↓см*ω↓см3↑дейст+P↓р1*f↓р1+P↓и2*f↓и2)/f↓кс  ;      //G↓см*3600
      // ДЛЯ СПРАВКИ
      P↓см4↑нов:=P↓см3↑нов*power(T↓см4/T↓см3,k↓см/(k↓см-1)) ;

      λ↓р1↑дейст:=ω↓р1↑дейст/ω↓р1↑кр  ;   //действительная приведенная скорость раб потока в сечении 1-1   //ДЛЯ СПРАВКИ

    end; //  While P↓см4_логик=False Do
//--------------Цикл (P↓см3 по P↓см4)----------------------------------------------------

//считаем отконения
if CheckBox5.Checked=True  then
    begin  //if CheckBox5.Checked=True  then
         P↓см_эксп:=strtofloat(Form8.StringGrid1.Cells[j_U,i_U]) ;
         P↓см_Абс:=P↓см_эксп-(P↓см4-P↓и0) ;
         P↓см_ОтнОткл:=(P↓см_эксп-(P↓см4-P↓и0))/P↓см_эксп*100 ;
         P↓см_Привид:=(P↓см_эксп-(P↓см4-P↓и0))/1000/(0+100)*100 ;
    end; //if CheckBox5.Checked=True  then

       Form6.Chart1.SeriesList[Form6.Chart1.SeriesCount-1].AddXY(U,(P↓см4-P↓и0),'');


     i_строка:=i_строка+1 ;
     i_столбец:=2 ;
      Нумирация:=Нумирация+1 ;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец-2,i_строка]:=FloatToStr(Нумирация) ;

     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(P↓р0,7));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(U);  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(G↓р*3600,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(G↓и*3600,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(P↓см4);  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(υ↓см4,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(T↓см4-273.15,6));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(ζ↓см4*100,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(R↓см,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(k↓см,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(Cp↑см,7));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(R↓р,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(k↓р0,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(Cp↑р0,7));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(R↓и,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(k↓и,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(Cp↑и,7));  i_столбец:=i_столбец+1;

     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(ω↓см3,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(ω↓р1,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(ζ↓р1*100,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant((m↓см_и↑Газ+m↓см_р↑Газ)*100,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant((m↓см_и↑пар+m↓см_р↑пар)*100,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(G↓и0↑Газ/G↓р1↑Газ,4));  i_столбец:=i_столбец+1;

if CheckBox5.Checked=True  then
   begin
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(P↓см_Абс,7));   i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(P↓см_ОтнОткл,7));       i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(P↓см_Привид,7));       i_столбец:=i_столбец+1;
    end; //if CheckBox5.Checked=True  then

 end;  //RadioGroup2.ItemIndex=0  then   //с диффузором

if   RadioGroup2.ItemIndex=1  then   //без диффузора
   begin    //RadioGroup2.ItemIndex=0  then   //без диффузора
      T↓см3:=(G↓р*Cp↑р0*T↓р0+G↓и*Cp↑и*T↓и0)/(G↓см*Cp↑см) ;   //
      //Давление смеси за диффузором   (ур импульса и ур аддиабаты)
      P↓р1:=P↓и0 ;  //дано
      aaa:=-f↓кс;
      bbb:=φ↓кс*(G↓р*ω↓р1↑дейст+G↓и*ω↓и2↑дейст)+P↓р1*f↓р1+P↓и2*f↓и2 ;
      ccc:=-sqr(G↓см)*R↓см*T↓см3/f↓кс;
      P↓см3:=(-bbb-sqrt(sqr(bbb)-4*aaa*ccc))/(2*aaa) ;
      //Парциальное давление водяного пара
      P↓см3↑пар:=(rr↓см_р↑пар+rr↓см_и↑пар)*P↓см3  ;   //(1.62)
      //Давление насыщения
      P’↓см3:=pul (5, 0, T↓см3-273.15)*1E6;    //(1.63)
      //Относительная влажность
      ζ↓см3:=P↓см3↑пар/P’↓см3  ;   //(1.64)
      //Удельный объем газа 3-3
      υ↓см3:=R↓см*T↓см3/P↓см3 ;
      //Действаительная скорость смеси 3-3 (ДЛЯ СПРАВКИ)
      ω↓см3:=G↓см*υ↓см3/f↓кс ;

      ω↓см3↑кр:=sqrt(R↓см*k↓см*T↓см3) ; //кретич скор
      if ω↓см3>=ω↓см3↑кр then U:=U_до ;

//считаем отконения
if CheckBox5.Checked=True  then
    begin  //if CheckBox5.Checked=True  then
         P↓см_эксп:=strtofloat(Form8.StringGrid1.Cells[j_U,i_U]) ;
         P↓см_Абс:=P↓см_эксп-(P↓см3-P↓и0) ;
         P↓см_ОтнОткл:=(P↓см_эксп-(P↓см3-P↓и0))/P↓см_эксп*100 ;
         P↓см_Привид:=(P↓см_эксп-(P↓см3-P↓и0))/1000/(0+100)*100 ;
    end; //if CheckBox5.Checked=True  then

       Form6.Chart1.SeriesList[Form6.Chart1.SeriesCount-1].AddXY(U,(P↓см3-P↓и0),'');

      i_строка:=i_строка+1 ;
      i_столбец:=2 ;
      Нумирация:=Нумирация+1 ;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец-2,i_строка]:=FloatToStr(Нумирация) ;

     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(P↓р0,7));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr((U));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(G↓р*3600,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(G↓и*3600,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(P↓см3);  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(υ↓см3,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(T↓см3-273.15,6));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(ζ↓см3*100,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(R↓см,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(k↓см,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(Cp↑см,7));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(R↓р,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(k↓р0,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(Cp↑р0,7));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(R↓и,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(k↓и,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(Cp↑и,7));  i_столбец:=i_столбец+1;

     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(ω↓см3,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(ω↓р1,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(ζ↓р1*100,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant((m↓см_и↑Газ+m↓см_р↑Газ)*100,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant((m↓см_и↑пар+m↓см_р↑пар)*100,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(G↓и0↑Газ/G↓р1↑Газ,4));  i_столбец:=i_столбец+1;



if CheckBox5.Checked=True  then
   begin
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(P↓см_Абс,7));   i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(P↓см_ОтнОткл,7));       i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(P↓см_Привид,7));       i_столбец:=i_столбец+1;
    end; //if CheckBox5.Checked=True  then

   end; //RadioGroup2.ItemIndex=0  then   //без диффузора
end; //TForm1.Цикл_по_U


function TForm1.Создание_графика_Расчет: boolean;
 begin  //Создание_графика_Расчет
Нумирация:=0 ;
//Записываем тип созданую диограммы в таблицу
jj:=StringGrid_Диограм.RowCount ;

StringGrid_Диограм.RowCount:=StringGrid_Диограм.RowCount+1;
StringGrid_Диограм.Cells[0,jj]:=FloatToStr(jj) ;
StringGrid_Диограм.Cells[1,jj]:='кривые' ;




//Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].Title:='P↓р0='+FloatToStr((P↓р0-P↓атм)/1000)+'кПа'; //
//Form6.ListBox1.Items.Add(Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].Title);
//Form6.radiogroup1.Items.Add(Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].Title);

  if CheckBox5.Checked=False then  //  НЕ снимаем со списока U по экстерименту
      begin
          StringGrid_Диограм.Cells[2,jj]:='Pр0='+FloatToStr((P↓р0-P↓атм)/1000)+'кПа  '+'Tр0='+FloatToStr(T↓р0-273.15)+'oC  '+'Tи0='+FloatToStr(T↓и0-273.15)+'oC  '+'ζр='+FloatToStr(ζ↓р*100)+'%  '+'ζи='+FloatToStr(ζ↓и*100)+'%  '+'dр1='+FloatToStr(d↓р1*100)+'мм  '+'Pатм='+FloatToStr(P↓атм/1000)+'кПа  '+'Pи0='+FloatToStr((P↓и0-P↓атм)/1000)+'кПа  '+'dкс='+FloatToStr(d↓кс*1000)+'мм  '+'φр1соп='+FloatToStr(φ↓р1↑соп)+'  '+'φкс='+FloatToStr(φ↓кс)+'  '+'φдиф='+FloatToStr(φ↓диф)+'  '+'φи2соп='+FloatToStr(φ↓и2↑соп)+'  ' ;
          for О_Н := 0 to StringGrid_Диограм.RowCount - 2 do
           if StringGrid_Диограм.Cells[2,О_Н]='Pр0='+FloatToStr((P↓р0-P↓атм)/1000)+'кПа  '+'Tр0='+FloatToStr(T↓р0-273.15)+'oC  '+'Tи0='+FloatToStr(T↓и0-273.15)+'oC  '+'ζр='+FloatToStr(ζ↓р*100)+'%  '+'ζи='+FloatToStr(ζ↓и*100)+'%  '+'dр1='+FloatToStr(d↓р1*100)+'мм  '+'Pатм='+FloatToStr(P↓атм/1000)+'кПа  '+'Pи0='+FloatToStr((P↓и0-P↓атм)/1000)+'кПа  '+'dкс='+FloatToStr(d↓кс*1000)+'мм  '+'φр1соп='+FloatToStr(φ↓р1↑соп)+'  '+'φкс='+FloatToStr(φ↓кс)+'  '+'φдиф='+FloatToStr(φ↓диф)+'  '+'φи2соп='+FloatToStr(φ↓и2↑соп)+'  '     then
             begin
               StringGrid_Диограм.Cells[2,jj]:=FloatToStr(№Одинак_Назван+1)+') '+'Pр0='+FloatToStr((P↓р0-P↓атм)/1000)+'кПа  '+'Tр0='+FloatToStr(T↓р0-273.15)+'oC  '+'Tи0='+FloatToStr(T↓и0-273.15)+'oC  '+'ζр='+FloatToStr(ζ↓р*100)+'%  '+'ζи='+FloatToStr(ζ↓и*100)+'%  '+'dр1='+FloatToStr(d↓р1*100)+'мм  '+'Pатм='+FloatToStr(P↓атм/1000)+'кПа  '+'Pи0='+FloatToStr((P↓и0-P↓атм)/1000)+'кПа  '+'dкс='+FloatToStr(d↓кс*1000)+'мм  '+'φр1соп='+FloatToStr(φ↓р1↑соп)+'  '+'φкс='+FloatToStr(φ↓кс)+'  '+'φдиф='+FloatToStr(φ↓диф)+'  '+'φи2соп='+FloatToStr(φ↓и2↑соп)+'  '      ;
               №Одинак_Назван:=№Одинак_Назван+1 ;
             end;
      end
  else     //снимаем со списока U по экстерименту
     begin
          StringGrid_Диограм.Cells[2,jj]:=Form8.StringGrid2.Cells[Form8.StringGrid2.ColCount-2,0]+' '+'|'+' '+'Pр0='+FloatToStr((P↓р0-P↓атм)/1000)+'кПа  '+'Tр0='+FloatToStr(T↓р0-273.15)+'oC  '+'Tи0='+FloatToStr(T↓и0-273.15)+'oC  '+'ζр='+FloatToStr(ζ↓р*100)+'%  '+'ζи='+FloatToStr(ζ↓и*100)+'%  '+'dр1='+FloatToStr(d↓р1*100)+'мм  '+'Pатм='+FloatToStr(P↓атм/1000)+'кПа  '+'Pи0='+FloatToStr((P↓и0-P↓атм)/1000)+'кПа  '+'dкс='+FloatToStr(d↓кс*1000)+'мм  '+'φр1соп='+FloatToStr(φ↓р1↑соп)+'  '+'φкс='+FloatToStr(φ↓кс)+'  '+'φдиф='+FloatToStr(φ↓диф)+'  '+'φи2соп='+FloatToStr(φ↓и2↑соп)+'  ' ;
          for О_Н := 0 to StringGrid_Диограм.RowCount - 2 do
           if StringGrid_Диограм.Cells[2,О_Н]=Form8.StringGrid2.Cells[Form8.StringGrid2.ColCount-2,0]+' '+'|'+' '+'Pр0='+FloatToStr((P↓р0-P↓атм)/1000)+'кПа  '+'Tр0='+FloatToStr(T↓р0-273.15)+'oC  '+'Tи0='+FloatToStr(T↓и0-273.15)+'oC  '+'ζр='+FloatToStr(ζ↓р*100)+'%  '+'ζи='+FloatToStr(ζ↓и*100)+'%  '+'dр1='+FloatToStr(d↓р1*100)+'мм  '+'Pатм='+FloatToStr(P↓атм/1000)+'кПа  '+'Pи0='+FloatToStr((P↓и0-P↓атм)/1000)+'кПа  '+'dкс='+FloatToStr(d↓кс*1000)+'мм  '+'φр1соп='+FloatToStr(φ↓р1↑соп)+'  '+'φкс='+FloatToStr(φ↓кс)+'  '+'φдиф='+FloatToStr(φ↓диф)+'  '+'φи2соп='+FloatToStr(φ↓и2↑соп)+'  '     then
             begin
               StringGrid_Диограм.Cells[2,jj]:=FloatToStr(№Одинак_Назван+1)+') '+Form8.StringGrid2.Cells[Form8.StringGrid2.ColCount-2,0]+' '+'|'+' '+'Pр0='+FloatToStr((P↓р0-P↓атм)/1000)+'кПа  '+'Tр0='+FloatToStr(T↓р0-273.15)+'oC  '+'Tи0='+FloatToStr(T↓и0-273.15)+'oC  '+'ζр='+FloatToStr(ζ↓р*100)+'%  '+'ζи='+FloatToStr(ζ↓и*100)+'%  '+'dр1='+FloatToStr(d↓р1*100)+'мм  '+'Pатм='+FloatToStr(P↓атм/1000)+'кПа  '+'Pи0='+FloatToStr((P↓и0-P↓атм)/1000)+'кПа  '+'dкс='+FloatToStr(d↓кс*1000)+'мм  '+'φр1соп='+FloatToStr(φ↓р1↑соп)+'  '+'φкс='+FloatToStr(φ↓кс)+'  '+'φдиф='+FloatToStr(φ↓диф)+'  '+'φи2соп='+FloatToStr(φ↓и2↑соп)+'  '      ;
               №Одинак_Назван:=№Одинак_Назван+1 ;
             end;
     end;
Form6.Chart1.AddSeries(TLineSeries.Create(Self));
Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].Pen.Width:=1;


if AAAA=26 then
         AAAA:=AAAA-25;

  case  AAAA of
        0: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=clMaroon ;
        1: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=clGreen ;
        2: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=clOlive ;
        3: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=clNavy ;
        4: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=clPurple ;
        5: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=clTeal ;
        6: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=clRed ;
        7: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=clLime ;
        8: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=clBlue ;
        9: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=RGB(158,47,225) ;
        10: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=RGB(203,86,69) ;
        11: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=clHotLight ;
        12: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=clInactiveCaptionText ;
        13: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=RGB(255,0,0)  ;
        14: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=RGB(0,128,64) ;
        15: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=RGB(255,128,0) ;
        16: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=RGB(128,0,255) ;
        17: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=RGB(97,175,175) ;
        18: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=RGB(88,205,67) ;
        19: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=RGB(43,192,230) ;
        20: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=RGB(254,18,231) ;
        21: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=RGB(213,102,60) ;
        22: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=RGB(47,158,225) ;
        23: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=RGB(225,47,109) ;
        24: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=RGB(224,228,44) ;
        25: Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].SeriesColor:=RGB(0,0,0) ;
      end;
   AAAA:=AAAA+1 ;

Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].Title:=StringGrid_Диограм.Cells[2,jj];
Form6.ListBox1.Items.Add(StringGrid_Диограм.Cells[2,jj]);
Form6.radiogroup1.Items.Add(StringGrid_Диограм.Cells[2,jj]);
if Form6.radiogroup1.Width<(Round(Label3.Canvas.TextWidth(StringGrid_Диограм.Cells[2,jj]))*1.4)   then
    Form6.radiogroup1.Width:=Round(Label3.Canvas.TextWidth(StringGrid_Диограм.Cells[2,jj])*1.4)  ;
if Form6.radiogroup1.Height<Form6.radiogroup1.Items.Count*(Round(Label3.Canvas.TextHeight(StringGrid_Диограм.Cells[2,jj]))*2)   then
    Form6.radiogroup1.Height:=Form6.radiogroup1.Height+Round(Label3.Canvas.TextHeight(StringGrid_Диограм.Cells[2,jj])*2)  ;
Form6.ScrollBox1.Width:=Round(Form6.radiogroup1.Width*1.2) ;
//if Form6.radiogroup1.Width<(Round(Label3.Canvas.TextWidth(StringGrid_Диограм.Cells[2,jj])*1.1))   then
//    Form6.radiogroup1.Width:=Round(Label3.Canvas.TextWidth(StringGrid_Диограм.Cells[2,jj])*1.1)  ;
Form6.ScrollBox1.Width:=Round(RadioGroup1.Width * 1.3) ;

//Form6.radiogroup1.Width:=Round*(Label3.Canvas.TextWidth(StringGrid_Диограм.Cells[2,jj])*1.1)  ;
//Создание таблицы с результатами расчета
    Высота_листа:=Form6.PageControl1.Height-Form6.TabSheet_Зад1.Height    ;
    Шарина_листа:=Form6.PageControl1.Width-Form6.TabSheet_Зад1.Width    ;
    jj_номер_Табл:=jj_номер_Табл+1;
    i_строка:=0;
  sg := TStringGrid(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)));
    if Assigned(sg) then  //Если такая табл уже есть то нечего не делаем
  begin
    //sg.FixedRows := 1;
    //sg.FixedCols := 1;
    //sg.ColCount := i_Form6;  //i_Form6;
    //sg.RowCount := 10000;
    //sg.Width := Form6.ClientWidth-Шарина_листа;
    //sg.Height := Form6.ClientHeight-Высота_листа;
  end
  else
  begin
    with TStringGrid.Create(Self) do
    begin
      Parent :=Form6.TabSheet_З1_Резу; //Self;
      Name := 'myStringGrid'+FloatToStr(jj_номер_Табл); // Вот по этому имени и будешь обращаться...
      //ShowMessage(Form6.Components[Form6.ControlCount].Name+'///'+Form6.Components[Form6.ControlCount].Owner.Name);
      //Options := Options + [goEditing];
      Left:=Form6.Label3.Left+Form6.Label3.Width ;
      Top:=0;
      FixedCols:=1;
      FixedRows:=1;
      Options:=[goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goRangeSelect,goRowSizing,goColSizing,goEditing];
      if True then
  if CheckBox5.Checked=False then  //  список U по экстерименту
      ColCount:=25;
  if CheckBox5.Checked=True then  //  список U по экстерименту
      ColCount:=32;

      i_Form6:=0;
      Visible:=False ;
if   RadioGroup2.ItemIndex=0  then   //с диффузором
    begin
      Cells[i_Form6,0]:='№';         i_Form6:=i_Form6+1;    //ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Название';  i_Form6:=i_Form6+1;   // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Pp0, Па';  i_Form6:=i_Form6+1;    // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='U';  i_Form6:=i_Form6+1;          // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Gp, кг/ч';  i_Form6:=i_Form6+1;   // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Gи, кг/ч';  i_Form6:=i_Form6+1;   // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Рсм4, Па';  i_Form6:=i_Form6+1;   // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='υсм4';  i_Form6:=i_Form6+1;       // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Тсм4';  i_Form6:=i_Form6+1;       // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='ξсм4';  i_Form6:=i_Form6+1;       // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Rсм';  i_Form6:=i_Form6+1;        // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='kсм';  i_Form6:=i_Form6+1;        // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Cpсм';  i_Form6:=i_Form6+1;       // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Rр';  i_Form6:=i_Form6+1;         // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='kр';  i_Form6:=i_Form6+1;         // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Cpр';  i_Form6:=i_Form6+1;       //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Rи';  i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='kи';  i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Cpи'; i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='wсм3,м/с';  i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='wр1,с/м';  i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='ξр1,%';  i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='mсм_газ,%';  i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='mсм_пар,%';  i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='U_газ';

    end;
 if   RadioGroup2.ItemIndex=1  then   //без диффузора
    begin
      Cells[i_Form6,0]:='№';         i_Form6:=i_Form6+1;    //ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Название';  i_Form6:=i_Form6+1;   // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Pp0, Па';  i_Form6:=i_Form6+1;    // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='U';  i_Form6:=i_Form6+1;          // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Gp, кг/ч';  i_Form6:=i_Form6+1;   // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Gи, кг/ч';  i_Form6:=i_Form6+1;   // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Рсм3, Па';  i_Form6:=i_Form6+1;   // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='υсм3';  i_Form6:=i_Form6+1;       // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Тсм3';  i_Form6:=i_Form6+1;       // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='ξсм3';  i_Form6:=i_Form6+1;       // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Rсм';  i_Form6:=i_Form6+1;        // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='kсм';  i_Form6:=i_Form6+1;        // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Cpсм';  i_Form6:=i_Form6+1;       // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Rр';  i_Form6:=i_Form6+1;         // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='kр';  i_Form6:=i_Form6+1;         // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Cpр';  i_Form6:=i_Form6+1;       //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Rи';  i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='kи';  i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Cpи'; i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='wсм3,м/с';  i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='wр1,с/м';  i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='ξр1,%';  i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='mсм_газ,%';  i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='mсм_пар,%';  i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='U_газ';
    end;

  if CheckBox5.Checked=True then  //  список U по экстерименту
       begin
         i_Form6:=i_Form6+1;
         Cells[i_Form6,0]:='P↓см3_Абс';  i_Form6:=i_Form6+1;
         Cells[i_Form6,0]:='P↓см3_ОтнОткл';  i_Form6:=i_Form6+1;
         Cells[i_Form6,0]:='P↓см3_Привид';   i_Form6:=i_Form6+1;
         Cells[i_Form6,0]:='∑ΔP↓см3';  i_Form6:=i_Form6+1;
         Cells[i_Form6,0]:='Дисперсия (эксп)'; i_Form6:=i_Form6+1;
         Cells[i_Form6,0]:='СКО'; i_Form6:=i_Form6+1;
         Cells[i_Form6,0]:='Индекс корреляции';
       end;

      Cells[1, 1] := Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].Title;
      StringGrid_Диограм.Cells[3,jj]:=Name;
      ColWidths[1]:= 0 ;
      //Cells[1, 1] := Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].Title;  i_столбец:=i_столбец+1;
      //ColCount:=ColCount-1 ;
      //ColCount:=i_Form6;//i_Form6;
      RowCount:=2;
      //DefaultRowHeight:=Form1.Form8.StringGrid2.DefaultRowHeight;
      //DefaultColWidth:=Form1.Form8.StringGrid2.DefaultColWidth;
      //DefaultRowHeight:=24;
      top:=0;
      Width :=Form6.TabSheet_З1_Резу.ClientWidth;
      Height :=Form6.TabSheet_З1_Резу.ClientHeight-{-Высота_листа}-Form6.ScrollBox1.Height-Form6.Label3.Height{-Высота_листа};
      Left:=0;//Form6.ScrollBox1.Left+Form6.ScrollBox1.Width ;
      //OnKeyPress := GridKeyPress;
//if   Form6.radiogroup1.Items.Count=1  then
//          Form6.radiogroup1.ItemIndex:=1 ;
if   (Form6.radiogroup1.Items.Count=1)  then
          Form6.radiogroup1.ItemIndex:=0 ;
    end;
  end;

end; //Создание_графика_Расчет


//ОКРКГЛЕНИЕ чисел       ([([([(((ПРОЦИДУРА)]))])])
function TForm1.RoundSignificant(num: Extended; col: integer): Extended;
var
  counter, MaxValue, MinValue, PreSign: integer;
  operand: Extended;
begin
  if (col <= 0) or (num = 0)
    then
      begin
        result := 0;
        Exit;
      end;
  try
    MaxValue := Trunc(IntPower(10,col));
  except
    result := num;
    Exit;
  end;
  MinValue := MaxValue div 10;
  counter := 0;
  PreSign := Sign(num);
  operand := Abs(num);
  while operand <= MinValue do
    begin
      operand := operand * 10;
      counter := counter + 1;
    end;
  while operand > MaxValue do
    begin
      operand := operand / 10;
      counter := counter - 1;
    end;
  result := Round(operand) / IntPower(10,counter) * PreSign;
end;

//авто ширена
function TForm1.StringGrid_шир_колон(SG_шир_колон: TStringGrid): Extended;
var
  x, y, w: integer;
  s: string;
  MaxWidth: integer;
begin
  with SG_шир_колон do
    ClientHeight := DefaultRowHeight * RowCount + 5;
    with SG_шир_колон do
    begin
      for x := 0 to ColCount - 1 do
      begin
        MaxWidth := 0;
        for y := 0 to RowCount - 1 do
        begin
          w := Canvas.TextWidth(Cells[x,y]);
          if w > MaxWidth then
            MaxWidth := w;
        end;
        ColWidths[x] := MaxWidth + 5;
      end;
    end;
end;

//авто ширена
function TForm1.StringGrid_шир_колон_результ(SG_шир_колон: TStringGrid): Extended;
var
  x, y, w: integer;
  s: string;
  MaxWidth: integer;
begin
  with SG_шир_колон do
    ClientHeight := DefaultRowHeight * RowCount + 5;
    with SG_шир_колон do
    begin
      for x := 0 to ColCount - 1 do
      if x<>1 then
      begin
        MaxWidth := 0;
        for y := 0 to RowCount - 1 do
        begin
          w := Canvas.TextWidth(Cells[x,y]);
          if w > MaxWidth then
            MaxWidth := w;
        end;
        ColWidths[x] := MaxWidth + 5;
      end;
    end;
end;

//тайтер выхода из цикла
procedure TForm1.Timer1Timer(Sender: TObject);
begin
// sec := sec - 1;
 //if sec=0 then
//    Timer1.Enabled:=false;
end;

procedure TStringGridHack.MoveColumn(FromIndex, ToIndex: Integer);
begin
  inherited;
end;

procedure TStringGridHack.MoveRow(FromIndex, ToIndex: Integer);
begin
  inherited;
end;

{
//Удаление строки из StringGrid Delphi
procedure TForm1.DeleteARow(Grid: TStringGrid;
  ARow: Integer);
begin
  TMyGrid(Grid).DeleteRow(ARow);
end;
    }
//Выравнивание
function TForm1.Выравнивание_Label(Label_1,Label_2: TLabel): Extended;
begin
  Label_1.Top:=Label_2.Top ;
  Label_1.Left:=Label_2.Left ;
end;
function TForm1.Выравнивание_Edit(Edit_1,Edit_2: TEdit): Extended;
begin
  Edit_2.Top:=Edit_1.Top ;
  Edit_2.Left:=Edit_1.Left ;
  Edit_2.Width:=Edit_1.Width ;
  Edit_2.Height:=Edit_1.Height ;
end;
function TForm1.Выравнивание_Panel(Panel_1,Panel_2: TPanel): Extended;
begin
  Panel_2.Top:=Panel_1.Top ;
  Panel_2.Left:=Panel_1.Left ;
  Panel_2.Width:=Panel_1.Width ;
  Panel_2.Height:=Panel_1.Height ;
end;
function TForm1.Выравнивание_RadioGroup(RadioGroup_1,RadioGroup_2: TRadioGroup): Extended;
begin
  RadioGroup_2.Top:=RadioGroup_1.Top ;
  RadioGroup_2.Left:=RadioGroup_1.Left ;
  RadioGroup_2.Width:=RadioGroup_1.Width ;
  RadioGroup_2.Height:=RadioGroup_1.Height ;
end;
function TForm1.Выравнивание_Button(Button_1,Button_2: TButton): Extended;
begin
  Button_2.Top:=Button_1.Top ;
  Button_2.Left:=Button_1.Left ;
  Button_2.Width:=Button_1.Width ;
  Button_2.Height:=Button_1.Height ;
end;
function TForm1.Выравнивание_CheckBox(CheckBox_1,CheckBox_2: TCheckBox): Extended;
begin
  CheckBox_2.Top:=CheckBox_1.Top ;
  CheckBox_2.Left:=CheckBox_1.Left ;
  CheckBox_2.Width:=CheckBox_1.Width ;
  CheckBox_2.Height:=CheckBox_1.Height ;
end;
function TForm1.Выравнивание_ListBox(ListBox_1,ListBox_2: TListBox): Extended;
begin
  ListBox_2.Top:=ListBox_1.Top ;
  ListBox_2.Left:=ListBox_1.Left ;
  ListBox_2.Width:=ListBox_1.Width ;
  ListBox_2.Height:=ListBox_1.Height ;
end;

procedure SGDeleteRow(SG: TStringGrid; RowToDelete: Integer);
var
  i: Integer;
begin
  with SG do
  begin
    if (RowToDelete >= 0) and (RowToDelete < RowCount) then
    begin
      for i := RowToDelete to RowCount - 2 do
        Rows[i].Assign(Rows[i + 1]);
      RowCount := RowCount - 1;
    end;
  end;
end;

//Давление рабочего газа Рр0
procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex=0 then
      begin
          Button6.Visible:=False ;
          Button7.Visible:=False ;
          Button8.Visible:=False ;
          ListBox1.Visible:=False ;
          Panel12.Visible:=False ;
          Edit_Pр0.Visible:=True ;
          Label2.Visible:=False ;
      end;
if RadioGroup1.ItemIndex=1 then
      begin
          Button6.Visible:=False ;
          Button7.Visible:=False ;
          Button8.Visible:=False ;
          ListBox1.Visible:=False ;
          Panel12.Visible:=True ;
          Edit_Pр0.Visible:=False ;
          Label2.Visible:=False ;
      end;
if RadioGroup1.ItemIndex=2 then
      begin
          Button6.Visible:=True ;
          Button7.Visible:=True ;
          Button8.Visible:=True ;
          ListBox1.Visible:=True ;
          Edit_Pр0.Visible:=True ;
          Panel12.Visible:=False ;
          Label2.Visible:=True ;
      end;
end;

procedure TForm1.RadioGroup1_Зад2Click(Sender: TObject);
begin
if RadioGroup1_Зад2.ItemIndex=0 then
      begin
          Button6_Зад2.Visible:=False ;
          Button7_Зад2.Visible:=False ;
          Button8_Зад2.Visible:=False ;
          ListBox1_Зад2.Visible:=False ;
          Panel12_Зад2.Visible:=False ;
          Edit_Зад2_dp.Visible:=True ;
          Label2_Зад2.Visible:=False ;
      end;
if RadioGroup1_Зад2.ItemIndex=1 then
      begin
          Button6_Зад2.Visible:=False ;
          Button7_Зад2.Visible:=False ;
          Button8_Зад2.Visible:=False ;
          ListBox1_Зад2.Visible:=False ;
          Panel12_Зад2.Visible:=True ;
          Edit_Зад2_dp.Visible:=False ;
          Label2_Зад2.Visible:=False ;
      end;
if RadioGroup1_Зад2.ItemIndex=2 then
      begin
          Button6_Зад2.Visible:=True ;
          Button7_Зад2.Visible:=True ;
          Button8_Зад2.Visible:=True ;
          ListBox1_Зад2.Visible:=True ;
          Edit_Зад2_dp.Visible:=True ;
          Panel12_Зад2.Visible:=False ;
          Label2_Зад2.Visible:=True ;
      end;
end;

procedure TForm1.RadioGroup1_Зад3Click(Sender: TObject);
begin
if RadioGroup1_Зад3.ItemIndex=0 then
      begin
          Button6_Зад3.Visible:=False ;
          Button7_Зад3.Visible:=False ;
          Button8_Зад3.Visible:=False ;
          ListBox1_Зад3.Visible:=False ;
          Panel12_Зад3.Visible:=False ;
          Edit_Зад3_dp.Visible:=True ;
          Label2_Зад3.Visible:=False ;
      end;
if RadioGroup1_Зад3.ItemIndex=1 then
      begin
          Button6_Зад3.Visible:=False ;
          Button7_Зад3.Visible:=False ;
          Button8_Зад3.Visible:=False ;
          ListBox1_Зад3.Visible:=False ;
          Panel12_Зад3.Visible:=True ;
          Edit_Зад3_dp.Visible:=False ;
          Label2_Зад3.Visible:=False ;
      end;
if RadioGroup1_Зад3.ItemIndex=2 then
      begin
          Button6_Зад3.Visible:=True ;
          Button7_Зад3.Visible:=True ;
          Button8_Зад3.Visible:=True ;
          ListBox1_Зад3.Visible:=True ;
          Edit_Зад3_dp.Visible:=True ;
          Panel12_Зад3.Visible:=False ;
          Label2_Зад3.Visible:=True ;
      end;
end;

procedure TForm1.RadioGroup2_Зад2Click(Sender: TObject);
begin
  if RadioGroup2_Зад2.ItemIndex=0 then
     begin
       Edit_Зад2_Gp.enabled:=True;
       Edit_Зад2_Pр0.enabled:=False;
     end;
  if RadioGroup2_Зад2.ItemIndex=1 then
     begin
       Edit_Зад2_Gp.enabled:=False;
       Edit_Зад2_Pр0.enabled:=True;
     end;
end;

procedure TForm1.RadioGroup3Click(Sender: TObject);
begin
if RadioGroup3.ItemIndex=0 then
      begin
          Panel43.Visible:=False ;
          Edit_dкс.Visible:=True ;
      end;
if RadioGroup3.ItemIndex=1 then
      begin
          Panel43.Visible:=True ;
          Edit_dкс.Visible:=False ;
      end;
end;

procedure TForm1.RadioGroup4Click(Sender: TObject);
begin
if CheckBox5.Checked=True then
      begin
          Panel13.Visible:=False ;
      end;
if CheckBox5.Checked=False then
      begin
          Panel13.Visible:=True ;
      end;
end;



//<<<<<<<<<Состав смеси рабочего и инжектируемого газов>>>>>>>>>>
procedure TForm1.Button_Расчет_Зад3Click(Sender: TObject);

var
  nn, mm : Integer;
  sg : TStringGrid;
begin
Form1.CheckBox1.Enabled:=True;
Form1.CheckBox2.Enabled:=True;
Form1.CheckBox2_Зад2.Enabled:=True;
Form6.CheckBox2.Enabled:=True;
//Если список пуст то выход
if (RadioGroup1_Зад3.ItemIndex=2) and (ListBox1.Count=0) then  Exit ;

//Чистка таб от расчета  если стаит галка
  if CheckBox2.Checked=True then
    begin
     i_поиск:= 0  ;
     j_поиск:= 0  ;
     jj_номер_Табл:= 0  ;
       for i_поиск := 1 to StringGrid_Диограм.RowCount- 1 do
           begin
               j_поиск :=1 ;
               Нашел:=False ;
               while Нашел=False do
                 begin
                    if  StringGrid_Диограм.Cells[1,j_поиск]='кривые'  then
                        begin
                          Form6.Chart1.Series[j_поиск-1].Destroy;
                          TStrGrid(StringGrid_Диограм).DeleteRow(j_поиск); //удаляем вторую строку
                          Form6.ListBox1.Items.Delete(j_поиск-1) ;
                          Нашел:=True ;
                        end;
                    if  j_поиск=StringGrid_Диограм.RowCount- 1 then
                        begin
                          Нашел:=True ;
                        end;
                  j_поиск :=j_поиск+1 ;
                 end;
           end;
    {
     for III := 1 to jj_номер_Табл do
        begin
          (Form1.FindComponent('myStringGrid'+FloatToStr(III)) as TStringGrid).Parent := nil ;
          (Form1.FindComponent('myStringGrid'+FloatToStr(III)) as TStringGrid).Free ;
        end;
        }
//  for III := 131  to componentCount-1 do
//    Имя:=(Form1.Components[III]).name ;

//Имя:=(Form1.Components[146] as TStringGrid).name ;
//Имя:=(Form1.Components[147] as TStringGrid).name ;
     for III := КоличествоКомпонентов+Form6.RadioGroup1.Items.Count-1  downto КоличествоКомпонентов do
       begin

        //Имя:=(Form1.Components[III] as TStringGrid).name ;
        (Form1.Components[III] as TStringGrid).Parent := nil ;       //  ;
        (Form1.Components[III] as TStringGrid).Free ;
      end;

     Form6.RadioGroup1.ItemIndex := -1;
     Form6.RadioGroup1.Items.Clear ;

    end;


//Вносим коэф скорость на Форму 6
Пересчет:=False ;
Form6.Edit1.Text:=Edit_φр1соп.Text ;
Form6.Edit2.Text:=Edit_φдиф.Text ;
Form6.Edit3.Text:=Edit_φкс.Text ;
Form6.Edit4.Text:=Edit_φи2соп.Text ;
Пересчет:=True ;
{
//Снимаем исходные данные
  d↓кс:=strtofloat(Edit_dкс.Text);          //[мм] Диаметр камеры смешениимя (цилиндрической)
  d↓р1:=strtofloat(Edit_dр1.Text);
  φ↓р1↑соп:=strtofloat(Edit_φр1соп.Text);      //0,985
  φ↓диф:=strtofloat(Edit_φдиф.text);         //0,96
  φ↓кс:=strtofloat(Edit_φкс.text);          //0,96
  φ↓и2↑соп:=strtofloat(Edit_φи2соп.text);      //0,9
  P↓атм:=strtofloat(Edit_Pатм.Text);
  P↓р0:=strtofloat(Edit_Pр0.Text);
  P↓р0_от:=strtofloat(Edit_Pр0_от.Text);
  P↓р0_до:=strtofloat(Edit_Pр0_до.Text);
  P↓р0_шаг:=strtofloat(Edit_Pр0_шаг.Text);
  P↓и0:=strtofloat(Edit_Pи0.Text);
  T↓р0↑⁰:=strtofloat(Edit_Tр0.Text);
  T↓и0↑⁰:=strtofloat(Edit_Tи0.Text);
  ζ↓р:=strtofloat(Edit_ζр.Text);
  ζ↓и:=strtofloat(Edit_ζи.Text);
  //U:=strtofloat(Edit_U.Text);
  U_от:=strtofloat(Edit_U_от.Text);
  U_до:=strtofloat(Edit_U_до.Text);
  U_шаг:=strtofloat(Edit_U_шаг.Text);
    }
 G↓и_от:=strtofloat(Edit_Зад3_Gи_от.Text); //2.0         ;                  //кг/ч
 G↓и_до:=strtofloat(Edit_Зад3_Gи_до.Text);  //4.3         ;                  //кг/ч
 G↓и_шаг:=strtofloat(Edit_Зад3_Gи_шаг.Text);  //0.1         ;                 //кг/ч
 //G↓и_от:=2.3018793096-G↓и_шаг;//5.39         ;                  //кг/ч    G↓и*3600

 G↓р:=strtofloat(Edit_Зад3_Gp.Text);      //4.1179207121;//4.86  G↓р*3600	2,2790884254       ;                     //кг/ч   G↓р*3600
 //G↓р:=2.2790884254              ;
 ζ↓р:=strtofloat(Edit_Зад3_ζр.Text);      //%
 ζ↓и:=strtofloat(Edit_Зад3_ζи.Text);      //%
 T↓р0↑⁰:=strtofloat(Edit_Зад3_Tр0.Text);  //↑⁰С
 T↓и0↑⁰:=strtofloat(Edit_Зад3_Ти0.Text);  //↑⁰С
 P↓и0:=strtofloat(Edit_Зад3_Ри0.Text);//0;                            //кПа  Избыт
 P↓атм:=strtofloat(Edit_Зад3_Ратм.Text);  //кПа
 P↓р0:=strtofloat(Edit_Зад3_Pр0.Text);  //кПа
 d↓р1:=strtofloat(Edit_Зад3_dp.Text); //мм      d↓р1*1000
 d↓р1_от:=strtofloat(Edit_Зад3_dp_от.Text);//2.8  ;    //мм
 d↓р1_до:=strtofloat(Edit_Зад3_dp_до.Text);//3  ;      //мм
 d↓р1_шаг:=strtofloat(Edit_Зад3_dp_шаг.Text);//0.1  ;   //мм
 P↓см4:=strtofloat(Edit_Зад3_Рсм4.Text);//102796.57029/1000-P↓атм;//1.9; //кПа Избыт
 φ↓р1↑соп:=strtofloat(Edit_Зад3_φр1соп.Text);      //0,985
 φ↓диф:=strtofloat(Edit_Зад3_φдиф.text);         //0,96
 φ↓кс:=strtofloat(Edit_Зад3_φкс.text);          //0,96
 φ↓и2↑соп:=strtofloat(Edit_Зад3_φи2соп.text);      //0,9


  //(((Перевести в систему СИ)))
//  if d↓р1_текст<>'кр' then d↓р1:=d↓р1/1000 ;  //[мм] Диаметр выходного сечения рабочего сопла
  d↓р1:=d↓р1/1000 ;                        //[м] d↓р1*1000 Диаметр выходного сечения рабочего сопла
  d↓кс:=d↓кс/1000 ;            //[м]      //d↓кс*1000 Диаметр камеры смешениимя (цилиндрической)
  d↓р1_от:=d↓р1_от/1000  ;    //[м]       d↓р1_от*1000
  d↓р1_до:=d↓р1_до/1000  ;    //[м]       d↓р1_до*1000
  d↓р1_шаг:=d↓р1_шаг/1000  ;    //[м]     d↓р1_шаг*1000

  P↓р0:=P↓р0*Power(10,3) ; //[Па]     //Давление рабочего потока
  P↓и0:=P↓и0*Power(10,3) ;   //[Па]     //Давление инжектируемого потока

  P↓атм:=P↓атм*Power(10,3) ;   //[Па]
  P↓см4:=P↓см4*Power(10,3) ;   //[Па]
  //P↓р0_от:=P↓р0_от*Power(10,3) ;   //[Па]
  //P↓р0_до:=P↓р0_до*Power(10,3) ;    //[Па]
  //P↓р0_шаг:=P↓р0_шаг*Power(10,3) ;   //[Па]
  T↓р0↑⁰:=T↓р0↑⁰+273.15 ;//[K]      //Температура торможения рабочего газа
  T↓и0↑⁰:=T↓и0↑⁰+273.15 ;  //[K]      //Температура торможения инжектируемого газа
  ζ↓р := ζ↓р/100;
  ζ↓и := ζ↓и/100  ;
 // G↓и := G↓и/3600         ; //кг/c         G↓и*3600
  G↓и_от:=G↓и_от /3600        ; //кг/c     G↓и_от*3600

  G↓и_до:=G↓и_до /3600        ; //кг/c     G↓и_до*3600
  G↓и_шаг:=G↓и_шаг /3600        ; //кг/c   G↓и_шаг*3600

  G↓р:=G↓р/3600        ;  //кг/c           G↓р*3600


  T↓р0:=T↓р0↑⁰ ;        //T↓р0-273.15
  T↓и0:=T↓и0↑⁰ ;       // T↓и0-273.15
  P↓р0:=P↓р0+P↓атм           ;
  P↓и0:=P↓и0+P↓атм  ;
  P↓см4:=P↓см4+P↓атм  ;
  P↓р1:= P↓и0   ;
  //P↓р0_от:=P↓р0_от+P↓атм        ;
  //P↓р0_до:=P↓р0_до+P↓атм        ;
  //P↓р0_шаг:=P↓р0_шаг+P↓атм       ;



//1) Удельная теплоемкость смеси рабочего потока Cp˄Iраб
Cp↑рГаз:=0 ;
Cp↑иГаз:=0 ;
R↓р:=0 ;
R↓и:=0 ;
μ↓р:=0 ;
μ↓и:=0 ;

for  i:= 1 to Form2.StringGrid_Раб.RowCount-1 do
  begin
    if (Form2.StringGrid_Раб.Cells[1,i]<>'') and (Form2.StringGrid_Раб.Cells[1,i]<>'___') then
      begin
        //1) Удельная теплоемкость смеси рабочего  потока Cp↑рГаз
        Cp↑рГаз:=Cp↑рГаз+strtofloat(Form2.StringGrid_Раб.Cells[2,i])*strtofloat(Form2.StringGrid_Раб.Cells[3,i]) ;
        //2)	Газовая постоянная рабочего
       // R↓рГаз:=R↓р+strtofloat(Form2.StringGrid_Раб.Cells[2,i])*strtofloat(Form2.StringGrid_Раб.Cells[4,i]) ;
        //3)	Массовая доля рабочего
        μ↓р:=μ↓р+strtofloat(Form2.StringGrid_Раб.Cells[2,i])*strtofloat(Form2.StringGrid_Раб.Cells[4,i]) ;
      end;
  end;
 Cp↑рГаз:=Cp↑рГаз*1000;  //в СИ

for  i:= 1 to Form2.StringGrid_Ин.RowCount-1 do
  begin
    if (Form2.StringGrid_Ин.Cells[1,i]<>'') and (Form2.StringGrid_Ин.Cells[1,i]<>'___') then
     begin
         //1) Удельная теплоемкость смеси инжектируемого  потока Cp↑иГаз
        Cp↑иГаз:=Cp↑иГаз+strtofloat(Form2.StringGrid_Ин.Cells[2,i])*strtofloat(Form2.StringGrid_Ин.Cells[3,i]) ;
        //2)	Газовая постоянная рабочего
       // R↓иГаз:=R↓и+strtofloat(Form2.StringGrid_Ин.Cells[2,i])*strtofloat(Form2.StringGrid_Ин.Cells[4,i]) ;
        //3)	Массовая доля рабочего
        μ↓и:=μ↓и+strtofloat(Form2.StringGrid_Ин.Cells[2,i])*strtofloat(Form2.StringGrid_Ин.Cells[4,i]) ;
     end;
  end;
 Cp↑иГаз:=Cp↑иГаз*1000; //в СИ



 //	μ↓Газ:=28.96	;//(1.5)
  μ↓и_пар:=strtofloat(Form2.StringGrid1.Cells[4,0])	;//(1.6)
	μ↓р_пар:=strtofloat(Form2.StringGrid2.Cells[4,0])	;//(1.6)
  Cp↑рПар:=strtofloat(Form2.StringGrid1.Cells[3,0])	;//(1.6)
  Cp↑иПар:=strtofloat(Form2.StringGrid2.Cells[3,0])	;//(1.6)
  Cp↑рПар:=Cp↑рПар*1000 ;
  Cp↑иПар:=Cp↑иПар*1000 ;






i_цикл:=0 ;





//+===+===+===+Прогон по Рсм4+===+===+====+=====+=====+====+====+===+===+===+===+===
//-----------  График -----------
//Form6.Chart1.View3D:=False;   //2D график
//Form6.Chart1.BottomAxis.Automatic:=True; // Отключение автоматического определения параметров нижней оси
//Form6.Chart1.BottomAxis.minimum:= -1;  //Мин значение по оси Х
//Form6.Chart1.BottomAxis.maximum:= 2.5;  //Мах значение по оси Х
//Form6.Chart1.LeftAxis.Automatic:=True; // Отключение автоматического определения параметров нижней оси
//Form6.Chart1.LeftAxis.minimum:= 0;  //Мин значение по оси Х
//Form6.Chart1.LeftAxis.maximum:= 7000;  //Мах значение по оси Х

   d↓р1Номер:=0 ;

 d↓р1_Цикл_Зад3:=False ;
 I_список:=0 ;

if RadioGroup1_Зад3.ItemIndex=1 then
   begin
     d↓р1:=d↓р1_от ;  //для цикла
     P’↓p0:= 0;  //для цикла
     d↓р1Номер:=1;
   end
  else
   begin
     d↓р1Номер:=0 ;
     d↓р1_от := 0;
     d↓р1_до := 0;
     d↓р1_шаг  := 0;
   end;

  //  While (P↓р0<=P↓р0_до) or (P↓р0Номер=0) Do
    While d↓р1_Цикл_Зад3=False Do
        begin    //While (d↓р1_Цикл_Зад3=False) Do
  //  case P↓р0Номер of
 //     1: P↓р0:=30.65*1000+101325  ;
  //    2: P↓р0:=20.46*1000+101325  ;
  //    3: P↓р0:=14.8*1000+101325  ;
  //    4: P↓р0:=9.8*1000+101325  ;
 //     5: P↓р0:=4.77*1000+101325  ;
 //   end;

    if (RadioGroup1_Зад3.ItemIndex=2) and (I_список=ListBox1.Count-1) then  d↓р1_Цикл_Зад3:=True ;
    if RadioGroup1_Зад3.ItemIndex=2 then
       begin
         d↓р1:= StrToFloat(ListBox1.Items[I_список]);
         I_список:=I_список+1   ;
       end;

//Записываем тип созданую диограммы в таблицу
jj:=StringGrid_Диограм.RowCount ;

StringGrid_Диограм.RowCount:=StringGrid_Диограм.RowCount+1;
StringGrid_Диограм.Cells[0,jj]:=FloatToStr(jj) ;
StringGrid_Диограм.Cells[1,jj]:='кривые' ;


StringGrid_Диограм.Cells[2,jj]:='d↓р='+FloatToStr(d↓р1*1000)+'мм'  ;


for О_Н := 0 to StringGrid_Диограм.RowCount - 2 do
  if StringGrid_Диограм.Cells[2,О_Н]='d↓ркр='+FloatToStr(d↓р1*1000)+'мм'  then
    begin
     StringGrid_Диограм.Cells[2,jj]:=FloatToStr(№Одинак_Назван+1)+') '+'d↓ркр='+FloatToStr(d↓р1*1000)+'мм'     ;
     №Одинак_Назван:=№Одинак_Назван+1 ;
    end;
Form6.Chart1.AddSeries(TLineSeries.Create(Self));
Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].Title:=StringGrid_Диограм.Cells[2,jj];
Form6.Chart1.LeftAxis.Title.Caption:='dкс';
Form6.Chart1.BottomAxis.Title.Caption:='U';
Form6.ListBox1.Items.Add(StringGrid_Диограм.Cells[2,jj]);
Form6.radiogroup1.Items.Add(StringGrid_Диограм.Cells[2,jj]);
if Form6.radiogroup1.Width<(Round(Label3.Canvas.TextWidth(StringGrid_Диограм.Cells[2,jj]))*1.4)   then
    Form6.radiogroup1.Width:=Round(Label3.Canvas.TextWidth(StringGrid_Диограм.Cells[2,jj])*1.4)  ;
if Form6.radiogroup1.Height<Form6.radiogroup1.Items.Count*(Round(Label3.Canvas.TextHeight(StringGrid_Диограм.Cells[2,jj]))*2)   then
    Form6.radiogroup1.Height:=Form6.radiogroup1.Height+Round(Label3.Canvas.TextHeight(StringGrid_Диограм.Cells[2,jj])*2)  ;
Form6.ScrollBox1.Width:=Round(Form6.radiogroup1.Width*1.2) ;
Form6.ScrollBox1.Width:=Round(RadioGroup1.Width * 1.3) ;

//Form6.radiogroup1.Width:=Round*(Label3.Canvas.TextWidth(StringGrid_Диограм.Cells[2,jj])*1.1)  ;
//Создание таблицы с результатами расчета
    Высота_листа:=Form6.PageControl1.Height-Form6.TabSheet1.Height    ;
    Шарина_листа:=Form6.PageControl1.Width-Form6.TabSheet1.Width    ;
    jj_номер_Табл:=jj_номер_Табл+1;
    i_строка:=0;
  sg := TStringGrid(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)));
    if Assigned(sg) then  //Если такая табл уже есть то нечего не делаем
  begin
    //sg.FixedRows := 1;
    //sg.FixedCols := 1;
    //sg.ColCount := i_Form6;  //i_Form6;
    //sg.RowCount := 10000;
    //sg.Width := Form6.ClientWidth-Шарина_листа;
    //sg.Height := Form6.ClientHeight-Высота_листа;
  end
  else
  begin
    with TStringGrid.Create(Self) do
    begin
      Parent :=Form6.TabSheet_З1_Резу; //Self;
      Name := 'myStringGrid'+FloatToStr(jj_номер_Табл); // Вот по этому имени и будешь обращаться...
      //ShowMessage(Form6.Components[Form6.ControlCount].Name+'///'+Form6.Components[Form6.ControlCount].Owner.Name);
      //Options := Options + [goEditing];
      Left:=Form6.Label3.Left+Form6.Label3.Width ;
      Top:=0;
      FixedCols:=1;
      FixedRows:=1;
      ColCount:=19;
      i_Form6:=0;
      Visible:=False ;
      Cells[i_Form6,0]:='№';         i_Form6:=i_Form6+1;    //ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Название';  i_Form6:=i_Form6+1;   // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Pp0, Па';  i_Form6:=i_Form6+1;    // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='dкс, мм';  i_Form6:=i_Form6+1;    // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='U';  i_Form6:=i_Form6+1;          // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Gp, кг/ч';  i_Form6:=i_Form6+1;   // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Gи, кг/ч';  i_Form6:=i_Form6+1;   // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Рсм4, Па';  i_Form6:=i_Form6+1;   // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='υсм4';  i_Form6:=i_Form6+1;       // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Тсм4';  i_Form6:=i_Form6+1;       // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='ξсм4';  i_Form6:=i_Form6+1;       // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Rсм';  i_Form6:=i_Form6+1;        // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='kсм';  i_Form6:=i_Form6+1;        // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Cpсм';  i_Form6:=i_Form6+1;       // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Rр';  i_Form6:=i_Form6+1;         // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='kр';  i_Form6:=i_Form6+1;         // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Cpр';  i_Form6:=i_Form6+1;       //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Rи';  i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='kи';  i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Cpи';
      Cells[1, 1] := Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].Title;
      StringGrid_Диограм.Cells[3,jj]:=Name;
      ColWidths[1]:= 0 ;
      //Cells[1, 1] := Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].Title;  i_столбец:=i_столбец+1;
      //ColCount:=ColCount-1 ;
      //ColCount:=i_Form6;//i_Form6;
      RowCount:=2;
      //DefaultRowHeight:=Form1.StringGrid2.DefaultRowHeight;
      //DefaultColWidth:=Form1.StringGrid2.DefaultColWidth;
      //DefaultRowHeight:=24;
      Width :=Form6.ClientWidth-Шарина_листа-(Form6.Label3.Left+Form6.Label3.Width);
      Height :=Form6.ClientHeight-Высота_листа;
      Left:=Form6.ScrollBox1.Left+Form6.ScrollBox1.Width ;
if   (Form6.radiogroup1.Items.Count=1)  then
          Form6.radiogroup1.ItemIndex:=0 ;
    end;
  end;
    //сделать давления Рр0 другие
    //  if P↓р0=P↓и0+25000 then P↓р0:=P↓и0+30000  ;  // пропускаем  P↓и0+25000  простоя эксперимент этот не проводил
//==========РАБОЧИЙ ПОТОК перед СА=========================================
    //Давление насыщения
     P’↓p0:=pul (5, 0, T↓р0-273.15)*1E6;     //(1.2) //T↓р0-273.15
      //Площаь рабочего сопла
     f↓р1:=pi/4*Sqr(d↓р1)    ;  //d↓р1*1000
    // P↓р0:=P↓атм ;   //для цикла
    // P↓р0нов:=0 ;    //для цикла

     //Парциальное давление водяного пара
    // P↓р0нов:= P↓р0;

     P↓р0↑пар:=ζ↓р*P’↓p0  ;   //(1.3)
     //Объемная доля воздуха и воды
     rr↓р0↑Газ:=(P↓р0-P↓р0↑пар)/P↓р0   ;   //(1.4)
     rr↓р0↑пар:=1-rr↓р0↑Газ  ;   //(1.5)
     //Массовая доля воздуха и пара
     m↓р0↑Газ:=(rr↓р0↑Газ*μ↓р)/(rr↓р0↑Газ*μ↓р+rr↓р0↑пар*μ↓р_пар )  ;   //(1.6)
     m↓р0↑пар:=1-m↓р0↑Газ   ;   //(1.7)
     //Удельная газовая постоянная влажного воздуха
     R↓р:=8314/(rr↓р0↑Газ*μ↓р+rr↓р0↑пар*μ↓р_пар ); // (1.8)
     // Удельный объем рабочего потока перед СА, м3/кг
    // υ↓р0:= (R↓р * T↓р0) / P↓р0; // (1.9)
     // Теплоемкость
     Cp↑р0 := Cp↑рПар * m↓р0↑пар + Cp↑рГаз * m↓р0↑Газ; // (1.13)
     // Показатель адиабаты
     k↓р0 := Cp↑р0 / (Cp↑р0 - R↓р); // (1.14)
     //удельный объем рабочего потока
     υ↓р0:=(R↓р*T↓р0)/P↓р0;
     //Площадь критического сечения рабочего сопла
     f↓р1↑кр:=G↓р/(φ↓р1↑соп*Sqrt(2*k↓р0/(k↓р0+1)*P↓р0/υ↓р0* power(2/(k↓р0+1) ,2/(k↓р0-1))))  ;
     //	диаметр критического сечения рабочего сопла
     d↓р1↑кр:= Sqrt(4*f↓р1↑кр/pi)     ;     //d↓р1↑кр*1000
     //Скорость звука рабочего потока
     ω↓р1↑кр:=φ↓р1↑соп*Sqrt(2*k↓р0/(k↓р0+1)*P↓р0*υ↓р0);
     //Критическое давление рабочего потока
     P↓р1↑кр:=P↓р0*power(2/(k↓р0+1),k↓р0/(k↓р0-1)) ;
     //Критический удельный объем рабочего потока
     υ↓р1↑кр:=υ↓р0*power(2/(k↓р0+1),-1/(k↓р0-1)) ;
//++++++++++++++++Цикл (Р↓р1)++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

{
if RadioGroup1_Зад3.ItemIndex=0 then
   begin
     f↓р1↑кр:=G↓р/Sqrt(2*k↓р0/(k↓р0+1)*P↓р0/υ↓р0* power(2/(k↓р0+1) ,2/(k↓р0-1)))  ;
     if f↓р1↑кр<f↓р1 then exit;
   end;
   }
   {
if RadioGroup1_Зад3.ItemIndex=1 then
   begin
   //  if G↓р1↑кр<G↓р then

      //d↓р1:=d↓р1_от ;
      f↓р1:=pi/4*Sqr(d↓р1) ;
      f↓р1↑кр:=G↓р/Sqrt(2*k↓р0/(k↓р0+1)*P↓р0/υ↓р0* power(2/(k↓р0+1) ,2/(k↓р0-1)))  ;
      if f↓р1↑кр>f↓р1 then
      begin
        f↓р1:=f↓р1↑кр    ;
       // f↓р1:=pi/4*Sqr(d↓р1)    ;
        d↓р1:=Sqrt(4*f↓р1/pi)   ;
      end;
   end;
   }
//f↓р1:=pi/4*Sqr(d↓р1)    ;
//P↓р1↑кр:=P↓и0*power(2/(k↓р0+1),k↓р0/(k↓р0-1)) ;
      //P↓р1↑кр:=P↓р0*power(2/(k↓р0+1),k↓р0/(k↓р0-1)) ;
      //if P↓р0нов=0 then P↓р0:=P↓и0 ;    //начальное значение должнобыть больше предпологаемого ответа (но необязательно просто считать будет дольше, я добавил логическое вырожение)  и не равно начальному шагу (у формулы можетбыть мах вохможное значение параметра (при большем она не счетае - корень из отрец числа))
      P↓р1:=P↓р1↑кр ;   //начальное значение
      G↓р_цикл:=0  ;  //для цикла
      P↓р1Шаг№:=0 ;   //для цикла
      P↓р1Шаг1:=0 ;   //для цикла
      P↓р1Шаг2:=0 ;   //для цикла
      P↓р1_1:=0 ;   //для цикла
      G↓р_логик:=False;
      ii:=1;
      //Найдем шаг (он имеет такойже порядок что и начальное значение)
      if Trunc(P↓р1)<>0 then  // если число лольше либо раное 1  (целая часть не равна нулю)
        P↓р1Шаг :=power(10,(Length(FloatToStr( Trunc(P↓р1) ))-1))  //для цикла  - Шаг долженбыть тогоже порядка что и начальное значение
      else                  //в ином случае
         begin
            P↓р1Разрядность:=P↓р1 ;
            while P↓р1Разрядность<1  do
              begin
                ii:=ii*10;
                P↓р1Разрядность:=P↓р1Разрядность*10 ;
              end;
            P↓р1Шаг :=power(10,(1-Length(FloatToStr( ii ))))
         end;
      //зададим новое исходное значение  такого же порядка что и нанчальное значение (таким образом мы избавляемся от знаков в порядках меньших чем будут получеен ы далее).  Умножаем на два на случай если P↓р1 не можетбыть равно нулю  (в этом случае может - не нравется можете стереть это не нашто не влияет)
      P↓р1:=P↓р1Шаг ;

      ii:=1;

      //запомним исходные значеня. В цикле они будут использованы, если задоное начальное значение меньше ответа
      P↓р1Резерв:=P↓р1 ;
      P↓р1ШагРезерв:=P↓р1Шаг ;                 //G↓р_цикл*3600   G↓р*3600
     // While Abs(G↓р_цикл-G↓р)>=power(10,-18) Do  //при большей разницы не считает (выкидывеет из расчета) (выставлять вручную)
      While G↓р_логик=False Do  //при большей разницы не считает (выкидывеет из расчета) (выставлять вручную)
         begin
            P↓р1_3:=P↓р1_1 ;
           P↓р1_1:=P↓р1 ;
          // if G↓р<0 then
          //      P↓р0:=P↓р0-(G↓р_цикл-G↓р)/abs(G↓р_цикл-G↓р)*P↓р0Шаг  //шаг изменения
          // else
                P↓р1:=P↓р1-(G↓р_цикл-G↓р)/abs(G↓р_цикл-G↓р)*P↓р1Шаг;
           P↓р1_2:=P↓р1 ;
           P↓р1Шаг1:=P↓р1Шаг2 ;
            //if ΔG↓р=abs(G↓р-G↓р_цикл) then //Если  делфи не видет разницы между (Lн-Lн_цикл) предыдущего цикла и (Lн-Lн_цикл) из нового цикла
            //       G↓р_логик:=True ;
             ΔG↓р:=abs(G↓р-G↓р_цикл) ;  //для справки
             P↓р1Шаг№:=P↓р1Шаг№+1 ;
             P↓р1Шаг2:=P↓р1Шаг ;
             if P↓р1Шаг1>P↓р1Шаг2 then
               P↓р1Шаг№:=0 ;
             if ((P↓р1_3=P↓р1_2) or (P↓р1_3=P↓р1_1)) and (P↓р1Шаг№<>0) then
               P↓р1Шаг№:=10 ;
            if P↓р1Шаг№=10 then
                begin
                  P↓р1Шаг:=P↓р1Шаг*0.1 ;
                  P↓р1Шаг№:=0 ;
                end;
             if P↓р1>=P↓р1↑кр then
               P↓р1:=P↓р1_1 ;
           //  if (P↓р0<=P↓и0) and (P↓р0_1:=0;) then
            // if P↓р0>P↓и0 then
             //  P↓р0:=P↓р0_1 ;
            // if (U>0) and (U<1e-6) then
            //   P↓р0:=P↓р0_1  ;
           //  if P↓р1Шаг<=1e-25 then  //принудительное увеличение начального значеня и шага в 10 раз в связи с невозможностью применения шага меньше power(10.-22), т.к. число значищих знаков, у числа с типом Extended,  после запятой  неможет быть больше 20 (вроде бы по теории так). Я взял  30 не значищих знаков навсякий пожарный (они выливаются в 300 кругов в цикле)
           //    begin
            //     P↓р1:= P↓р1Резерв*power(10,ii) ;
            //     P↓р1Шаг:=P↓р1ШагРезерв*power(10,ii) ;
           //      G↓р_цикл:=0  ;  //для цикла
          //       P↓р1Шаг№:=0 ;   //для цикла
          //       P↓р1Шаг1:=0 ;   //для цикла
          //       P↓р1Шаг2:=0 ;   //для цикла
          //       ii:=ii+1 ;
          //     end;
     // f↓р1↑кр:=G↓р/Sqrt(2*k↓р0/(k↓р0+1)*P↓р0/υ↓р0* power(2/(k↓р0+1) ,2/(k↓р0-1)))  ;
     // if f↓р1↑кр>f↓р1 then
     // begin
     //   f↓р1:=f↓р1↑кр    ;
       // f↓р1:=pi/4*Sqr(d↓р1)    ;
      //  d↓р1:=Sqrt(4*f↓р1/pi)   ;
      //  StringGrid_Диограм.Cells[2,jj]:=FloatToStr(№Одинак_Назван+1)+') '+'d↓р='+FloatToStr(d↓р1*1000)+'мм' ;
      //  Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].Title:=StringGrid_Диограм.Cells[2,jj];
      //  (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[1, 1] :=StringGrid_Диограм.Cells[2,jj];

     // end;
     //G↓р_цикл:=φ↓р1↑соп*f↓р1*Sqrt(2*k↓р0/(k↓р0-1)*Sqr(P↓р0)/(R↓р*T↓р0)*( power(P↓и0/P↓р0 ,2/k↓р0)-power(P↓и0/P↓р0 ,(k↓р0+1)/k↓р0) ));   //G↓р*3600     G↓р_цикл*3600
       G↓р_цикл:=f↓р1/υ↓р1↑кр*power(P↓р1/P↓р1↑кр,1/k↓р0)*φ↓р1↑соп*Sqrt(2*k↓р0/(k↓р0-1)*P↓р1↑кр*υ↓р1↑кр*(1-power(P↓р1/P↓р1↑кр ,(k↓р0-1)/k↓р0))+Sqr(ω↓р1↑кр)) ;
       //φ↓р1↑соп*f↓р1*Sqrt(2*k↓р0/(k↓р0-1)*Sqr(P↓р0)/(R↓р*T↓р0)*( power(P↓и0/P↓р0 ,2/k↓р0)-power(P↓и0/P↓р0 ,(k↓р0+1)/k↓р0) ));   //G↓р*3600     G↓р_цикл*3600
     if ((P↓р1_1=P↓р1) and (P↓р1_2=P↓р1) and (P↓р1_3=P↓р1)) or (G↓р_цикл-G↓р=0) then  //(φ↓диф_цикл-φ↓диф) минемальная разница для типа экстендит
            G↓р_логик:=True;
     end;

 //----------------Цикл (Р↓р1)----------------------------------------------------------------------
    //f↓р1:=pi/4*Sqr(2.05/1000)    ;
   // G↓р1↑кр:=φ↓р1↑соп*f↓р1*Sqrt(2*k↓р0/(k↓р0+1)*P↓р0/υ↓р0* power(2/(k↓р0+1) ,2/(k↓р0-1)))  ;
    //  if d↓р1_от<d↓р1 then d↓р1_от:=d↓р1 ;

     // Удельный объем рабочего потока перед СА, м3/кг  (для справки)
    // υ↓р0:= (R↓р * T↓р0) / P↓р0; // (1.9)
     // Критическая скорость (для справки)
   //  ω↓р1↑кр := Sqrt(2 * k↓р0 / (k↓р0 + 1) * P↓р0 * υ↓р0);
     //
     // Скорость рабочего потока на выходе из рабочего сопла (сечение 1-1), м/с
     ω↓р1 := φ↓р1↑соп * Sqrt(2*k↓р0/(k↓р0-1)*P↓р1↑кр*υ↓р1↑кр*( 1-power(P↓р1/P↓р1↑кр ,(k↓р0-1)/k↓р0) )+Sqr(ω↓р1↑кр))  ;   //(1.15)
     //Действительная скорость рабочего потока на выходе из рабочего сопла (сечение 1-1), м/с
     ω↓р1↑дейст:=ω↓р1  ;   //(1.39)

     //Массовый расход
     //Коэффициент потерь в рабочем сопле
    // G↓р:=φ↓р1↑соп*(f↓р1*Sqrt(2*k↓р0/(k↓р0-1)*P↓р0/υ↓р0*( power(P↓и0/P↓р0 ,2/k↓р0)-power(P↓и0/P↓р0 ,(k↓р0+1)/k↓р0) )))  ; //G↓р*3600
   //  G↓р:=f↓р1*ω↓р1↑дейст/υ↓р0  ;   //(1.10)    G↓р*3600
      //температуру рабочего потокав сечение 1-1, К (ДЛЯ СПРАВКИ)
      T↓р1:=T↓р0-Sqr(ω↓р1↑дейст)/(2*Cp↑р0)  ; //T↓р1-273.15      T↓р0-273.15
     //Массовый расход воздуха и пара
     G↓р0↑Газ:=m↓р0↑Газ*G↓р  ;   //(1.11)  //G↓р0↑Газ*3600
     G↓р0↑пар:=m↓р0↑пар*G↓р  ;   //(1.12)    //G↓р0↑пар*3600
     	//Объемная доля пара
       rr↓р1↑пар:=rr↓р0↑пар ;   //при условии не выпадении влаги
     	//Давление насыщения
      if T↓р1-273.15>=0 then
        begin
          P’↓р1:=pul (5, 0, T↓р1-273.15)*1E6;   //(1.41)       T↓р1-273.15        T↓р0-273.15
          //Парциальное давление пара
          P↓р1↑пар:=P↓р1*rr↓р1↑пар  ;   //(1.42)
          //Давление насыщения
          ζ↓р1:=P↓р1↑пар/P’↓р1 ;       //ζ↓р
        end;
             Cp↑р1:=Cp↑р0;              //хлам
             G↓р1↑пар:=G↓р0↑пар ;       //хлам
             G↓р1↑Газ:=G↓р0↑Газ ;     //хлам
             G↓р1↑влага:=0;
             m↓р1↑влага:=0;
             Cp↑рВлага:=0;
             Cp↑смВлага:=0;
             //rr↓р1↑пар:=rr↓р0↑пар ; копия
             rr↓р1↑Газ:=rr↓р0↑Газ ;       //хлам
             m↓р1↑пар:=m↓р0↑пар ;           //хлам
             m↓р1↑Газ:=m↓р0↑Газ ;         //хлам
//==========ИНЖЕКТИРУЕМЫЙ ПОТОК ПЕРЕД СА=========================================
            //Давление насыщения
            P’↓и0:=pul (5, 0, T↓и0-273.15)*1E6;           //(1.2)     T↓и0-273.15
            //Парциальное давление водяного пара
            P↓и0↑пар:=ζ↓и*P’↓и0     ;      //(1.3)
            //Объемная доля воздуха и воды
            rr↓и↑Газ:=(P↓и0-P↓и0↑пар)/P↓и0      ;      //(1.4)
            rr↓и↑пар:=1-rr↓и↑Газ     ;      //(1.5)
            //Массовая доля воздуха и пара
            m↓и↑Газ:=(rr↓и↑Газ*μ↓и)/(rr↓и↑Газ*μ↓и+rr↓и↑пар*μ↓и_пар )     ;      //(1.6)
            m↓и↑пар:=1-m↓и↑Газ      ;      //(1.7)
            //Удельная газовая постоянная влажного воздуха
            R↓и:=8314/(rr↓и↑Газ*μ↓и+rr↓и↑пар*μ↓и_пар )     ;      //(1.8)
            //Теплоемкость
            Cp↑и:=Cp↑иПар*m↓и↑пар+Cp↑иГаз*m↓и↑Газ     ;      //(1.13)
            //Показатель адиабаты
            k↓и:=Cp↑и/(Cp↑и-R↓и )     ;      //(1.14)
            //Удельный объем рабочего потока перед СА, м3/кг  (ДЛЯ СПРАВКИ)
            υ↓и0:=(R↓и*T↓и0)/P↓и0     ;      //(1.9)




  d↓кс:=d↓р1*8 ;  //для цикла   d↓кс*1000  d↓р1*1000   pi/4*Sqr(d↓р1)
  f↓кснов:=0 ;  //для цикла
  f↓кс:=pi/4*Sqr(d↓кс)  ;
  f↓р2:=f↓р1 ;
//{!!!!!!!!!!!!!!!!}   f↓кс:=pi/4*Sqr(9/1000)  ; ;      //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

//+++++++++++++++++++++++++++++Цикл по f↓кс+++++++++++++++++++++++++++++++++++++++++++
  G↓и:=G↓и_от ;
  Нумирация:=0 ;
 try  //try While G↓и<G↓и_до Do
    While G↓и<G↓и_до Do
        begin    //While G↓и<G↓и_до Do
      G↓и:=G↓и+G↓и_шаг ;     //G↓и*3600
      (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).RowCount:=(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).RowCount+1 ;
      U :=G↓и/G↓р    ;
            //Массовый расход воздуха и пара
            G↓и0↑Газ:=m↓и↑Газ*G↓и     ;      //(1.11)     //G↓и0↑Газ*3600
            G↓и0↑пар:=m↓и↑пар*G↓и     ;      //(1.12)          //G↓и0↑пар*3600
                  G↓см:=G↓и+G↓р ;    //G↓см*3600

               f↓кснов:=0 ;
While Abs(f↓кснов-f↓кс)>=power(10,-18) Do
    begin   //While Abs(f↓кснов-f↓кс)>=power(10,-18) Do
       f↓кснов:= f↓кс;  //Заминаем пежнее значение площади
      //Площадь инж сопла
      f↓и2:=f↓кс-f↓р2 ;    //(1.65)  //f↓р1





//++++++++++++++++Цикл (Р↓и2)++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


G↓и2↑кр:=φ↓и2↑соп*f↓и2*Sqrt(2*k↓и/(k↓и+1)*P↓и0/υ↓и0* power(2/(k↓и+1) ,2/(k↓и-1)))  ; //G↓и*3600    G↓и2↑кр*3600
P↓и2↑кр:=P↓и0*power(2/(k↓и+1),k↓и/(k↓и-1)) ;



      //P↓и2↑кр:=P↓и0*power(2/(k↓и0+1),k↓и0/(k↓и0-1)) ;
      P↓и2:=P↓и0 ;    //начальное значение должнобыть больше предпологаемого ответа (но необязательно просто считать будет дольше, я добавил логическое вырожение)  и не равно начальному шагу (у формулы можетбыть мах вохможное значение параметра (при большем она не счетае - корень из отрец числа))
      G↓и_цикл:=0  ;  //для цикла
      P↓и2Шаг№:=0 ;   //для цикла
      P↓и2Шаг1:=0 ;   //для цикла
      P↓и2Шаг2:=0 ;   //для цикла
      G↓и_логик:=False   ;
      G↓и_цикл:=0 ;
      ii:=1;
      //Найдем шаг (он имеет такойже порядок что и начальное значение)
      if Trunc(P↓и2)<>0 then  // если число лольше либо раное 1  (целая часть не равна нулю)
        P↓и2Шаг :=power(10,(Length(FloatToStr( Trunc(P↓и2) ))-1))  //для цикла  - Шаг долженбыть тогоже порядка что и начальное значение
      else                  //в ином случае
         begin
            P↓и2Разрядность:=P↓и2 ;
            while P↓и2Разрядность<1  do
              begin
                ii:=ii*10;
                P↓и2Разрядность:=P↓и2Разрядность*10 ;
              end;
            P↓и2Шаг :=power(10,(1-Length(FloatToStr( ii ))))
         end;
      //зададим новое исходное значение  такого же порядка что и нанчальное значение (таким образом мы избавляемся от знаков в порядках меньших чем будут получеен ы далее).  Умножаем на два на случай если P↓и2 не можетбыть равно нулю  (в этом случае может - не нравется можете стереть это не нашто не влияет)
      P↓и2:=P↓и2Шаг ;

      ii:=1;

      //запомним исходные значеня. В цикле они будут использованы, если задоное начальное значение меньше ответа
      P↓и2Резерв:=P↓и2 ;
      P↓и2ШагРезерв:=P↓и2Шаг ;
     While Abs(G↓и_цикл-G↓и)>=power(10,-16) Do  //при большей разницы не считает (выкидывеет из расчета) (выставлять вручную)
  //    While G↓и_логик=False Do  //Если  делфи не видет разницы между (Lн-Lн_цикл) предыдущего цикла и (Lн-Lн_цикл) из нового цикла
         begin
           P↓и2_3:=P↓и2_1 ;
           P↓и2_1:=P↓и2 ;
           if G↓и<0 then
                P↓и2:=P↓и2-(G↓и_цикл-G↓и)/abs(G↓и_цикл-G↓и)*P↓и2Шаг  //шаг изменения
           else
                P↓и2:=P↓и2+(G↓и_цикл-G↓и)/abs(G↓и_цикл-G↓и)*P↓и2Шаг;
           P↓и2_2:=P↓и2 ;
           P↓и2Шаг1:=P↓и2Шаг2 ;
            //if ΔG↓и=abs(G↓и-G↓и_цикл) then //Если  делфи не видет разницы между (Lн-Lн_цикл) предыдущего цикла и (Lн-Lн_цикл) из нового цикла
            //       G↓и_логик:=True ;
             ΔG↓и:=abs(G↓и-G↓и_цикл) ;  //для справки
             P↓и2Шаг№:=P↓и2Шаг№+1 ;
             P↓и2Шаг2:=P↓и2Шаг ;
             if P↓и2Шаг1>P↓и2Шаг2 then
               P↓и2Шаг№:=0 ;
             if ((P↓и2_3=P↓и2_2) or (P↓и2_3=P↓и2_1)) and (P↓и2Шаг№<>0) then
               P↓и2Шаг№:=10 ;
             if P↓и2Шаг№=10 then
                begin
                  P↓и2Шаг:=P↓и2Шаг*0.1 ;
                  P↓и2Шаг№:=0 ;
                end;
             if P↓и2<P↓и2↑кр then
               P↓и2:=P↓и2_1 ;
             if P↓и2>P↓и0 then
               P↓и2:=P↓и2_1 ;
            // if (U>0) and (U<1e-6) then
            //   P↓и2:=P↓и2_1  ;
             if P↓и2Шаг<=1e-25 then  //принудительное увеличение начального значеня и шага в 10 раз в связи с невозможностью применения шага меньше power(10.-22), т.к. число значищих знаков, у числа с типом Extended,  после запятой  неможет быть больше 20 (вроде бы по теории так). Я взял  30 не значищих знаков навсякий пожарный (они выливаются в 300 кругов в цикле)
               begin
                 P↓и2:= P↓и2Резерв*power(10,ii) ;
                 P↓и2Шаг:=P↓и2ШагРезерв*power(10,ii) ;
                 G↓и_цикл:=0  ;  //для цикла
                 P↓и2Шаг№:=0 ;   //для цикла
                 P↓и2Шаг1:=0 ;   //для цикла
                 P↓и2Шаг2:=0 ;   //для цикла
                 ii:=ii+1 ;
               end;
      f↓и2↑кр:=G↓и/Sqrt(2*k↓и/(k↓и+1)*P↓и0/υ↓и0* power(2/(k↓и+1) ,2/(k↓и-1)))  ;
      if f↓и2↑кр>f↓и2 then
      begin
        f↓и2:=f↓и2↑кр    ;
        f↓кс:=f↓р2+f↓и2     ;
       // P↓и2:=P↓и2↑кр              ;

       // f↓и1:=pi/4*Sqr(d↓и1)    ;
        //d↓и2:=Sqrt(4*f↓и1/pi)   ;
      end;
           //G↓и_цикл:=f↓и2*P↓и2*φ↓и2↑соп/υ↓и2*power( 1-Sqr(P↓и2*φ↓и2↑соп)/(2*Cp↑и*T↓и2), 1/(k↓и-1) )  ; 	//(1.66)
            if G↓и<0 then
                  G↓и_цикл:=-φ↓и2↑соп*(f↓и2*Sqrt(2*k↓и/(k↓и-1)*P↓и0/υ↓и0*( power(P↓и2/P↓и0 ,2/k↓и)-power(P↓и2/P↓и0 ,(k↓и+1)/k↓и) )))   //G↓и*3600     G↓и_цикл*3600
            else
                  G↓и_цикл:=φ↓и2↑соп*(f↓и2*Sqrt(2*k↓и/(k↓и-1)*P↓и0/υ↓и0*( power(P↓и2/P↓и0 ,2/k↓и)-power(P↓и2/P↓и0 ,(k↓и+1)/k↓и) ))) ;  //G↓и*3600     G↓и_цикл*3600
    { if ((P↓и2_1=P↓и2) and (P↓и2_2=P↓и2) and (P↓и2_3=P↓и2)) or (G↓и_цикл-G↓и=0) then  //(φ↓диф_цикл-φ↓диф) минемальная разница для типа экстендит
            G↓и_логик:=True;
     if (G↓и_логик=True) and (abs(G↓и_цикл-G↓и)>1E-12) then  //принудительный выход при очени мелькой точности
        begin
            Form6.Show ;
            Exit;
        end;  }

end;
 //----------------Цикл (Р↓и2)----------------------------------------------------------------------

      	//Действительная скорость инжектируемого потока в сечение 2-2, м/с
      ω↓и2:=φ↓и2↑соп*Sqrt(2*k↓и/(k↓и-1)*P↓и0*υ↓р0*( 1-power(P↓и2/P↓и0 ,(k↓и-1)/k↓и) ))  ;   //(1.15)

      	ω↓и2↑дейст:=ω↓и2  ;   //(1.67)
      //φ↓и2↑соп   учитывает потерю скорости инжектируемого потока до сечения 2-2
      	//Температура инжектируемого потока в сечение 2-2, К  (ДЛЯ СПРАВКИ)
      	T↓и2:=T↓и0-Sqr(ω↓и2↑дейст)/(2*Cp↑и )  ;   //(1.68) T↓и2-273.15    T↓и0-273.15

//==========ДИФФУЗОР=========================================
        if  G↓и>=0 then   //не особо правельно но каму нужен инжектор работующий в обратную сторону
           begin
            	//28.8.	Массовая доля воздуха, пара и влаги рабочего и инж .газов в смеси (ПРИ U<0 Бред полный)
             	m↓см_р↑Газ:=G↓р1↑Газ/G↓см  ;   //(1.55)      //G↓см*3600  G↓р*3600
             	m↓см_р↑пар:=G↓р1↑пар/G↓см   ;   //(1.56)
             	m↓см_р↑влага:=G↓р1↑влага/G↓см  ;   //(1.57)
             	m↓см_и↑Газ:=G↓и0↑Газ/G↓см  ;   //(1.55)      //G↓см*3600
             	m↓см_и↑пар:=G↓и0↑пар/G↓см   ;   //(1.56)
             	//m↓см_и↑влага:=G↓и0↑влага/G↓см  ;   //(1.57)
            	//Теплоемкость смеси
             Cp↑см:=Cp↑иПар*m↓см_и↑пар+Cp↑иГаз*m↓см_и↑Газ+{Cp↑иВлага*m↓и↑влага}+Cp↑рПар*m↓см_р↑пар+Cp↑рГаз*m↓см_р↑Газ+Cp↑рВлага*m↓см_р↑влага  ;   //(1.58)

 //        //Объемная доля воздуха и воды
             rr↓см_р↑пар:=(m↓см_р↑пар/μ↓р_пар)/(m↓см_р↑Газ/μ↓р+m↓см_р↑пар/μ↓р_пар+m↓см_р↑влага/μ↓р_пар+m↓см_и↑Газ/μ↓и+m↓см_и↑пар/μ↓и_пар{+m↓см_и↑влага/μ↓и_пар} )  ;   //(1.60)
             rr↓см_р↑Газ:=(m↓см_р↑Газ/μ↓р)/(m↓см_р↑Газ/μ↓р+m↓см_р↑пар/μ↓р_пар+m↓см_р↑влага/μ↓р_пар+m↓см_и↑Газ/μ↓и+m↓см_и↑пар/μ↓и_пар{+m↓см_и↑влага/μ↓и_пар} )  ;   //(1.61)
             rr↓см_р↑влага:=(m↓см_р↑влага/μ↓р_пар)/(m↓см_р↑Газ/μ↓р+m↓см_р↑пар/μ↓р_пар+m↓см_р↑влага/μ↓р_пар+m↓см_и↑Газ/μ↓и+m↓см_и↑пар/μ↓и_пар{+m↓см_и↑влага/μ↓и_пар} )  ;   //(1.61)
             rr↓см_и↑пар:=(m↓см_и↑пар/μ↓и_пар)/(m↓см_р↑Газ/μ↓р+m↓см_р↑пар/μ↓р_пар+m↓см_р↑влага/μ↓р_пар+m↓см_и↑Газ/μ↓и+m↓см_и↑пар/μ↓и_пар{+m↓см_и↑влага/μ↓и_пар} )  ;   //(1.60)
             rr↓см_и↑Газ:=(m↓см_и↑Газ/μ↓и)/(m↓см_р↑Газ/μ↓р+m↓см_р↑пар/μ↓р_пар+m↓см_р↑влага/μ↓р_пар+m↓см_и↑Газ/μ↓и+m↓см_и↑пар/μ↓и_пар{+m↓см_и↑влага/μ↓и_пар} )  ;   //(1.61)
             //rr↓см_и↑влага:=(m↓см_и↑влага/μ↓и_пар)/(m↓см_р↑Газ/μ↓р+m↓см_р↑пар/μ↓р_пар+m↓см_р↑влага/μ↓р_пар+m↓см_и↑Газ/μ↓и+m↓см_и↑пар/μ↓и_пар{+m↓см_и↑влага/μ↓и_пар} )  ;   //(1.61)

             	//Удельная газовая постоянная смеси
              R↓см:=8314/(rr↓см_р↑Газ*μ↓р+rr↓см_р↑пар*μ↓р_пар+rr↓см_р↑влага*μ↓р_пар+rr↓см_и↑Газ*μ↓и+rr↓см_и↑пар*μ↓и_пар{+rr↓см_и↑влага*μ↓и_пар} )   ;   //(1.70)
          end;
       if G↓и<0 then   //не особо правельно но каму нужен инжектор работующий в обратную сторону
           begin
              Cp↑см:=Cp↑и ;
              R↓см:=R↓и ;
              T↓см4:=T↓и0 ;  //T↓см4-273.15      G↓р>abs(G↓и)  G↓р-abs(G↓и)
           end;
      	//Показатель адиабаты смеси на выходе из СА
      	k↓см:=Cp↑см/(Cp↑см-R↓см )  ;   //(1.71)
     //Температура смеси за СА

      //+++++++++++++++++++++ЦИКЛ(P↓см3 по P↓см4)+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

          if  G↓и>0 then
              begin
            	//Парциальное давление водяного пара
            	P↓см4↑пар:=(rr↓см_р↑пар+rr↓см_и↑пар)*P↓см4  ;   //(1.62)
            	//Давление насыщения
              T↓см4:=(G↓р*Cp↑р0*T↓р0+G↓и*Cp↑и*T↓и0)/(G↓см*Cp↑см) ;   //T↓см4-273.15
            	P’↓см4:=pul (5, 0, T↓см4-273.15)*1E6;    //(1.63)
            	//Относительная влажность
            	ζ↓см4:=P↓см4↑пар/P’↓см4  ;   //(1.64)
             end;

      	//Удельный объем рабочего потока перед СА, м3/кг
      	υ↓см4:=R↓см*T↓см4/P↓см4  ;   //(1.72)    T↓см4-273.15



//++++++++++++++++Цикл (Р↓см3)++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

P↓см3↑кр:=P↓см4*power(2/(k↓и+1),k↓и/(k↓и-1)) ;
aa:=G↓см ;
P↓р1:= P↓и0   ;
bb:=-φ↓кс*(G↓р*ω↓р1↑дейст+G↓и*ω↓и2↑дейст)-P↓р1*f↓р1-P↓и2*f↓и2 ;




      //P↓см3↑кр:=P↓см3*power(2/(k↓см+1),k↓см/(k↓см-1)) ;
      P↓см3:=P↓см4 ;    //начальное значение должнобыть больше предпологаемого ответа (но необязательно просто считать будет дольше, я добавил логическое вырожение)  и не равно начальному шагу (у формулы можетбыть мах вохможное значение параметра (при большем она не счетае - корень из отрец числа))
      G↓см_цикл:=0  ;  //для цикла
      P↓см3Шаг№:=0 ;   //для цикла
      P↓см3Шаг1:=0 ;   //для цикла
      P↓см3Шаг2:=0 ;   //для цикла
      φ↓диф_цикл:=0 ;   //для цикла
      φ↓диф_логик:=False;
      ii:=1;
      //Найдем шаг (он имеет такойже порядок что и начальное значение)
      if Trunc(P↓см3)<>0 then  // если число лольше либо раное 1  (целая часть не равна нулю)
        P↓см3Шаг :=power(10,(Length(FloatToStr( Trunc(P↓см3) ))-1))  //для цикла  - Шаг долженбыть тогоже порядка что и начальное значение
      else                  //в ином случае
         begin
            P↓см3Разрядность:=P↓см3 ;
            while P↓см3Разрядность<1  do
              begin
                ii:=ii*10;
                P↓см3Разрядность:=P↓см3Разрядность*10 ;
              end;
            P↓см3Шаг :=power(10,(1-Length(FloatToStr( ii ))))
         end;
      //зададим новое исходное значение  такого же порядка что и нанчальное значение (таким образом мы избавляемся от знаков в порядках меньших чем будут получеен ы далее).  Умножаем на два на случай если P↓см3 не можетбыть равно нулю  (в этом случае может - не нравется можете стереть это не нашто не влияет)
      P↓см3:=P↓см3Шаг ;

      ii:=1;

      //запомним исходные значеня. В цикле они будут использованы, если задоное начальное значение меньше ответа
      P↓см3Резерв:=P↓см3 ;
      P↓см3ШагРезерв:=P↓см3Шаг ;
     // Δφ↓диф:=power(10,-14) ;
     // While Abs(φ↓диф_цикл-φ↓диф)=power(10,-14) Do  //при большей разницы не считает (выкидывеет из расчета) (выставлять вручную)
      While φ↓диф_логик=False Do  //Если  делфи не видет разницы между
         begin
           P↓см3_3:=P↓см3_1 ;
           P↓см3_1:=P↓см3 ;
                P↓см3:=P↓см3+(φ↓диф_цикл-φ↓диф)/abs(φ↓диф_цикл-φ↓диф)*P↓см3Шаг  ;//шаг изменения
           P↓см3_2:=P↓см3 ;
           P↓см3Шаг1:=P↓см3Шаг2 ;
            //if ΔG↓см=abs(G↓см-G↓см_цикл) then //Если  делфи не видет разницы между (Lн-Lн_цикл) предыдущего цикла и (Lн-Lн_цикл) из нового цикла
            //       G↓см_логик:=True ;
             Δφ↓диф:=abs(φ↓диф_цикл-φ↓диф) ;  //для справки
             P↓см3Шаг№:=P↓см3Шаг№+1 ;
             P↓см3Шаг2:=P↓см3Шаг ;
             if P↓см3Шаг1>P↓см3Шаг2 then
               P↓см3Шаг№:=0 ;
             if ((P↓см3_3=P↓см3_2) or (P↓см3_3=P↓см3_1)) and (P↓см3Шаг№<>0) then
               P↓см3Шаг№:=10 ;
             if P↓см3Шаг№=10 then
                begin
                  P↓см3Шаг:=P↓см3Шаг*0.1 ;
                  P↓см3Шаг№:=0 ;
                end;
             if P↓см3<P↓см3↑кр then
               P↓см3:=P↓см3_1 ;
             if P↓см3>P↓см4 then
               P↓см3:=P↓см3_1 ;
            // if (U>0) and (U<1e-6) then
            //   P↓см3:=P↓см3_1  ;
           {  if P↓см3Шаг<=1e-50 then  //принудительное увеличение начального значеня и шага в 10 раз в связи с невозможностью применения шага меньше power(10.-22), т.к. число значищих знаков, у числа с типом Extended,  после запятой  неможет быть больше 20 (вроде бы по теории так). Я взял  30 не значищих знаков навсякий пожарный (они выливаются в 300 кругов в цикле)
               begin
                 P↓см3:= P↓см3Резерв;//*power(10,ii) ;
                 P↓см3Шаг:=P↓см3ШагРезерв;//*power(10,ii) ;
                 G↓см_цикл:=0  ;  //для цикла
                 P↓см3Шаг№:=0 ;   //для цикла
                 P↓см3Шаг1:=0 ;   //для цикла
                 P↓см3Шаг2:=0 ;   //для цикла
                 //ii:=ii+1 ;
                 //Δφ↓диф:=Δφ↓диф*10;
                Showmessage('цикл по Δφ↓диф' );
                 Exit;

               end;     }

            // P↓см3:=101723.7412   ; //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
             cc:=G↓см*υ↓см4*power(P↓см4/P↓см3 ,1/k↓см)*P↓см3 ;   //G↓см*3600
             φ↓диф_цикл:=2*aa/(-bb-Sqrt(Sqr(bb)-4*aa*cc))*Sqrt(2*k↓и/(k↓и-1)*P↓см3*υ↓см4*( P↓см4/P↓см3-power(P↓см4/P↓см3 ,1/k↓см) )) ;
            if ((P↓см3_1=P↓см3) and (P↓см3_2=P↓см3) and (P↓см3_3=P↓см3)) or (φ↓диф_цикл-φ↓диф=0) then  //(φ↓диф_цикл-φ↓диф) минемальная разница для типа экстендит
               φ↓диф_логик:=True;
         end;

 //----------------Цикл (Р↓см3)----------------------------------------------------------------------
      	//Действительная скорость инжектируемого потока в сечение 2-2, м/с
        ω↓см3:=1/φ↓диф*Sqrt(2*k↓см/(k↓см-1)*P↓см3*υ↓см4*( P↓см4/P↓см3-power(P↓см4/P↓см3 ,1/k↓см) ))  ;   //(1.15)
        ω↓см3↑дейст:=ω↓см3 ;
       	//Температура смеси в сечении 3-3  //
      	T↓см3:=T↓см4-Sqr(ω↓см3↑дейст)/(2*Cp↑см )  ;   //(1.75)   //T↓см4-273.15  T↓см3-273.15

//==========КАМЕРА СМЕШЕНИЯ=========================================
      //Давление смеси за диффузором   (ур импульса и ур аддиабаты)
     // P↓р1:=P↓и0 ;  //дано
   f↓кс:=(φ↓кс*(G↓р*ω↓р1↑дейст+G↓и*ω↓и2↑дейст)-G↓см*ω↓см3↑дейст+P↓р1*f↓р1+P↓и2*f↓и2)/P↓см3  ;      //G↓см*3600   G↓и*3600    G↓р*3600
  // f↓кс:=pi/4*Sqr(d↓кс)  ;
   //Диаметра КС (для справки)
   d↓кс := Sqrt(4*f↓кс/pi)               ;  //d↓кс*1000     U

   // end; //  While P↓см4_логик=False Do
//-----------------------------Цикл по f↓кс-------------------------------------------



    // if (d↓кс)<=0 then G↓и:=G↓и_до ;  P↓р0



  end;      //While Abs(f↓кснов-f↓кс)>=power(10,-18) Do
     i_строка:=i_строка+1 ;
     i_столбец:=2 ;
      Нумирация:=Нумирация+1 ;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец-2,i_строка]:=FloatToStr(Нумирация) ;

     //(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] := Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].Title;  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(P↓р0,7));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(d↓кс*1000,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(U,100));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(G↓р*3600,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(G↓и*3600,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(P↓см4,7));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(υ↓см4,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(T↓см4,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(ζ↓см4*100,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(R↓см,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(k↓см,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(Cp↑см,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(R↓р,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(k↓р0,5));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(Cp↑р0,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(R↓и,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(k↓и,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(Cp↑и,4));  i_столбец:=i_столбец+1;

{
     i_строка:=i_строка+1 ;
     i_столбец:=2 ;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(P↓р0);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(U);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(G↓р*3600);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(G↓и*3600);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(P↓см4);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(υ↓см4);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(T↓см4);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(ζ↓см4*100);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(R↓см);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(k↓см);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(Cp↑см);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(R↓р);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(k↓р);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(Cp↑р);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(R↓и);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(k↓и);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(Cp↑и);  i_столбец:=i_столбец+1;

(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Visible:=False ;

fORM6.StringGrid2.RowCount:=fORM6.StringGrid2.RowCount-1 ;
     }
    Form6.Chart1.SeriesList[Form6.Chart1.SeriesCount-1].AddXY(U,(d↓кс*1000),'');

 // end; ////for I_список := 0 to ListBox1.Count - 1 do


end;      //While G↓и<G↓и_до Do

 except  //try While G↓и<G↓и_до Do
   G↓и:=G↓и_до;
 end;   //try While G↓и<G↓и_до Do
(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).RowCount:=(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).RowCount-2 ;

 //(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл-Form6.RadioGroup1.Items.Count+1)) as TStringGrid).Visible:=True ;
 // Выход в заввисемости от вида расчета
    if RadioGroup1_Зад3.ItemIndex=0 then   d↓р1_Цикл_Зад3:=True ;
    if (RadioGroup1_Зад3.ItemIndex=1) and  (d↓р1<d↓р1_до)  then
        d↓р1:=d↓р1+d↓р1_шаг;
    if (RadioGroup1_Зад3.ItemIndex=1) and  (d↓р1>=d↓р1_до)  then   d↓р1_Цикл_Зад3:=True ;
    Form6.Show ;
    Form6.Chart1.Update;
    //if (RadioGroup1_Зад2.ItemIndex=1) and (P’↓p0<>0)     then   d↓р1:=d↓р1+d↓р1_шаг ;
end;  //While (d↓р1_Цикл_Зад2=False) Do
Form6.Show ;

{
G↓и*3600
G↓р*3600
ζ↓р
ζ↓и
P↓атм
d↓р1*1000
P↓см4
φ↓р1↑соп
φ↓диф
φ↓кс
φ↓и2↑соп
T↓р0-273.15
P↓и0
Cp↑рГаз
Cp↑иГаз
R↓р
R↓и
μ↓р
μ↓и
μ↓и_пар
μ↓р_пар
Cp↑рПар
Cp↑иПар
P↓р0
P’↓p0
P↓р0↑пар
rr↓р0↑Газ
rr↓р0↑пар
m↓р0↑Газ
m↓р0↑пар
R↓р
Cp↑р0
k↓р0
υ↓р0
ω↓р1↑кр
ω↓р1
ω↓р1↑дейст
T↓р1-273.15
G↓р0↑Газ*3600
G↓р0↑пар*3600
rr↓р1↑пар
P’↓р1
P↓р1↑пар
ζ↓р1
Cp↑р1
rr↓р1↑Газ
m↓р1↑пар
m↓р1↑Газ
P’↓и0
P↓и0↑пар
rr↓и↑Газ
rr↓и↑пар
m↓и↑Газ
m↓и↑пар
R↓и
Cp↑и
k↓и
υ↓и0
d↓кс*1000
f↓кс
f↓р1
U
P↓и2
ω↓и2
ω↓и2↑дейст
T↓и2-273.15
m↓см_р↑Газ
m↓см_р↑пар
m↓см_р↑влага
m↓см_и↑Газ
m↓см_и↑пар
Cp↑см
rr↓см_р↑пар
rr↓см_р↑Газ
rr↓см_р↑влага
rr↓см_и↑пар
rr↓см_и↑Газ
R↓см
k↓см
P↓см4↑пар
T↓см4-273.15
P’↓см4
ζ↓см4
υ↓см4
G↓см*3600
P↓см3
ω↓см3
ω↓см3↑дейст
T↓см3-273.15
P↓р1
f↓кс
d↓кс*1000
}
//ΔP↓р3…1 не забыть



end;

procedure TForm1.Button11Click(Sender: TObject);

begin
Form2.Show;
PageControl1.tabindex:=0 ;
Form2.StringGrid_Раб.Selection := TGridRect(rect(0, 0, 0, 0));
Form2.ComboBox1.Left:=Form2.StringGrid_Раб.ColWidths[0] + (Form2.PageControl2.ClientWidth-Form2.PageControl3.Width)*2 ;
Form2.ComboBox1.Top:=Form2.StringGrid_Раб.RowHeights[0]+Form2.StringGrid_Раб.Top + Form2.StringGrid_Ин.RowHeights[0]+Form2.ClientHeight-Form2.PageControl3.ClientHeight+(Form2.PageControl2.Width-Form2.PageControl2.ClientWidth)*2;
Form2.ComboBox1.Width:=Form2.StringGrid_Раб.ColWidths[1]  ;
Form2.ComboBox1.Height:=Form2.StringGrid_Раб.RowHeights[1] ;
Form2.ComboBox1.Text:=Form2.StringGrid_Раб.Cells[1, 1];
Form2.ComboBox1.Visible:=True ;
Form2.ComboBox1.SetFocus;
end;

//Задача2 (Оптимальный диаметр КС)
procedure TForm1.Button_Расчет_Зад2Click(Sender: TObject);
var
  nn, mm : Integer;
  sg : TStringGrid;
begin
Form1.CheckBox1.Enabled:=True;
Form1.CheckBox2.Enabled:=True;
Form1.CheckBox2_Зад2.Enabled:=True;
Form6.CheckBox2.Enabled:=True;
//Если список пуст то выход
if (RadioGroup1_Зад2.ItemIndex=2) and (ListBox1.Count=0) then  Exit ;

//Чистка таб от расчета  если стаит галка
  if CheckBox2.Checked=True then
    begin
     i_поиск:= 0  ;
     j_поиск:= 0  ;
     jj_номер_Табл:= 0  ;
       for i_поиск := 1 to StringGrid_Диограм.RowCount- 1 do
           begin
               j_поиск :=1 ;
               Нашел:=False ;
               while Нашел=False do
                 begin
                    if  StringGrid_Диограм.Cells[1,j_поиск]='кривые'  then
                        begin
                          Form6.Chart1.Series[j_поиск-1].Destroy;
                          TStrGrid(StringGrid_Диограм).DeleteRow(j_поиск); //удаляем вторую строку
                          Form6.ListBox1.Items.Delete(j_поиск-1) ;
                          Нашел:=True ;
                        end;
                    if  j_поиск=StringGrid_Диограм.RowCount- 1 then
                        begin
                          Нашел:=True ;
                        end;
                  j_поиск :=j_поиск+1 ;
                 end;
           end;
     for III := КоличествоКомпонентов+Form6.RadioGroup1.Items.Count-1  downto КоличествоКомпонентов do
       begin
         //Имя:=(Form1.Components[III] as TStringGrid).name ;
        (Form1.Components[III] as TStringGrid).Parent := nil ;       //  ;
        (Form1.Components[III] as TStringGrid).Free ;
       end;

     Form6.RadioGroup1.ItemIndex := -1;
     Form6.RadioGroup1.Items.Clear ;
    end;


//Вносим коэф скорость на Форму 6
Пересчет:=False ;
Form6.Edit1.Text:=Edit_Зад2_φр1соп.Text ;
Form6.Edit2.Text:=Edit_Зад2_φдиф.Text ;
Form6.Edit3.Text:=Edit_Зад2_φкс.Text ;
Form6.Edit4.Text:=Edit_Зад2_φи2соп.Text ;
Пересчет:=True ;
{
//Снимаем исходные данные
  d↓кс:=strtofloat(Edit_dкс.Text);          //[мм] Диаметр камеры смешениимя (цилиндрической)
  d↓р1:=strtofloat(Edit_dр1.Text);
  φ↓р1↑соп:=strtofloat(Edit_φр1соп.Text);      //0,985
  φ↓диф:=strtofloat(Edit_φдиф.text);         //0,96
  φ↓кс:=strtofloat(Edit_φкс.text);          //0,96
  φ↓и2↑соп:=strtofloat(Edit_φи2соп.text);      //0,9
  P↓атм:=strtofloat(Edit_Pатм.Text);
  P↓р0:=strtofloat(Edit_Pр0.Text);
  P↓р0_от:=strtofloat(Edit_Pр0_от.Text);
  P↓р0_до:=strtofloat(Edit_Pр0_до.Text);
  P↓р0_шаг:=strtofloat(Edit_Pр0_шаг.Text);
  P↓и0:=strtofloat(Edit_Pи0.Text);
  T↓р0↑⁰:=strtofloat(Edit_Tр0.Text);
  T↓и0↑⁰:=strtofloat(Edit_Tи0.Text);
  ζ↓р:=strtofloat(Edit_ζр.Text);
  ζ↓и:=strtofloat(Edit_ζи.Text);
  //U:=strtofloat(Edit_U.Text);
  U_от:=strtofloat(Edit_U_от.Text);
  U_до:=strtofloat(Edit_U_до.Text);
  U_шаг:=strtofloat(Edit_U_шаг.Text);
    }
 U_от:=strtofloat(Edit_Зад2_U_от.Text); //2.0         ;                  //кг/ч
 U_до:=strtofloat(Edit_Зад2_U_до.Text);  //4.3         ;                  //кг/ч
 U_шаг:=strtofloat(Edit_Зад2_U_шаг.Text);  //0.1         ;                 //кг/ч
 //G↓и_от:=2.3018793096-G↓и_шаг;//5.39         ;                  //кг/ч    G↓и*3600

 G↓р:=strtofloat(Edit_Зад2_Gp.Text);      //4.1179207121;//4.86  G↓р*3600	2,2790884254       ;                     //кг/ч   G↓р*3600
 //G↓р:=2.2790884254              ;
 P↓р0:=strtofloat(Edit_Зад2_Pр0.Text);
 ζ↓р:=strtofloat(Edit_Зад2_ζр.Text);      //%
 ζ↓и:=strtofloat(Edit_Зад2_ζи.Text);      //%
 T↓р0↑⁰:=strtofloat(Edit_Зад2_Tр0.Text);  //↑⁰С
 T↓и0↑⁰:=strtofloat(Edit_Зад2_Ти0.Text);  //↑⁰С
 P↓и0:=strtofloat(Edit_Зад2_Ри0.Text);//0;                            //кПа  Избыт
 P↓атм:=strtofloat(Edit_Зад2_Ратм.Text);  //кПа
 d↓р1:=strtofloat(Edit_Зад2_dp.Text); //мм      d↓р1*1000
 d↓р1_от:=strtofloat(Edit_Зад2_dp_от.Text);//2.8  ;    //мм
 d↓р1_до:=strtofloat(Edit_Зад2_dp_до.Text);//3  ;      //мм
 d↓р1_шаг:=strtofloat(Edit_Зад2_dp_шаг.Text);//0.1  ;   //мм
 P↓см4:=strtofloat(Edit_Зад2_Рсм4.Text);//102796.57029/1000-P↓атм;//1.9; //кПа Избыт
 φ↓р1↑соп:=strtofloat(Edit_Зад2_φр1соп.Text);      //0,985
 φ↓диф:=strtofloat(Edit_Зад2_φдиф.text);         //0,96
 φ↓кс:=strtofloat(Edit_Зад2_φкс.text);          //0,96
 φ↓и2↑соп:=strtofloat(Edit_Зад2_φи2соп.text);      //0,9


  //(((Перевести в систему СИ)))
//  if d↓р1_текст<>'кр' then d↓р1:=d↓р1/1000 ;  //[мм] Диаметр выходного сечения рабочего сопла
  d↓р1:=d↓р1/1000 ;                        //[м] d↓р1*1000 Диаметр выходного сечения рабочего сопла
  d↓кс:=d↓кс/1000 ;            //[м]      //d↓кс*1000 Диаметр камеры смешениимя (цилиндрической)
  d↓р1_от:=d↓р1_от/1000  ;    //[м]       d↓р1_от*1000
  d↓р1_до:=d↓р1_до/1000  ;    //[м]       d↓р1_до*1000
  d↓р1_шаг:=d↓р1_шаг/1000  ;    //[м]     d↓р1_шаг*1000

  P↓р0:=P↓р0*Power(10,3) ; //[Па]     //Давление рабочего потока
  P↓и0:=P↓и0*Power(10,3) ;   //[Па]     //Давление инжектируемого потока

  P↓атм:=P↓атм*Power(10,3) ;   //[Па]
  P↓см4:=P↓см4*Power(10,3) ;   //[Па]
  //P↓р0_от:=P↓р0_от*Power(10,3) ;   //[Па]
  //P↓р0_до:=P↓р0_до*Power(10,3) ;    //[Па]
  //P↓р0_шаг:=P↓р0_шаг*Power(10,3) ;   //[Па]
  T↓р0↑⁰:=T↓р0↑⁰+273.15 ;//[K]      //Температура торможения рабочего газа
  T↓и0↑⁰:=T↓и0↑⁰+273.15 ;  //[K]      //Температура торможения инжектируемого газа
  ζ↓р := ζ↓р/100;
  ζ↓и := ζ↓и/100  ;
 // G↓и := G↓и/3600         ; //кг/c         G↓и*3600
 // G↓и_от:=G↓и_от /3600        ; //кг/c     G↓и_от*3600

 // G↓и_до:=G↓и_до /3600        ; //кг/c     G↓и_до*3600
 // G↓и_шаг:=G↓и_шаг /3600        ; //кг/c   G↓и_шаг*3600

  G↓р:=G↓р/3600        ;  //кг/c           G↓р*3600


  T↓р0:=T↓р0↑⁰ ;        //T↓р0-273.15
  T↓и0:=T↓и0↑⁰ ;       // T↓и0-273.15
  P↓р0:=P↓р0+P↓атм           ;
  P↓и0:=P↓и0+P↓атм  ;
  P↓см4:=P↓см4+P↓атм  ;
  P↓р1:= P↓и0   ;
  //P↓р0_от:=P↓р0_от+P↓атм        ;
  //P↓р0_до:=P↓р0_до+P↓атм        ;
  //P↓р0_шаг:=P↓р0_шаг+P↓атм       ;



//1) Удельная теплоемкость смеси рабочего потока Cp˄Iраб
Cp↑рГаз:=0 ;
Cp↑иГаз:=0 ;
R↓р:=0 ;
R↓и:=0 ;
μ↓р:=0 ;
μ↓и:=0 ;

for  i:= 1 to Form2.StringGrid_Раб.RowCount-1 do
  begin
    if (Form2.StringGrid_Раб.Cells[1,i]<>'') and (Form2.StringGrid_Раб.Cells[1,i]<>'___') then
      begin
        //1) Удельная теплоемкость смеси рабочего  потока Cp↑рГаз
        Cp↑рГаз:=Cp↑рГаз+strtofloat(Form2.StringGrid_Раб.Cells[2,i])*strtofloat(Form2.StringGrid_Раб.Cells[3,i]) ;
        //2)	Газовая постоянная рабочего
       // R↓рГаз:=R↓р+strtofloat(Form2.StringGrid_Раб.Cells[2,i])*strtofloat(Form2.StringGrid_Раб.Cells[4,i]) ;
        //3)	Массовая доля рабочего
        μ↓р:=μ↓р+strtofloat(Form2.StringGrid_Раб.Cells[2,i])*strtofloat(Form2.StringGrid_Раб.Cells[4,i]) ;
      end;
  end;
 Cp↑рГаз:=Cp↑рГаз*1000;  //в СИ

for  i:= 1 to Form2.StringGrid_Ин.RowCount-1 do
  begin
    if (Form2.StringGrid_Ин.Cells[1,i]<>'') and (Form2.StringGrid_Ин.Cells[1,i]<>'___') then
     begin
         //1) Удельная теплоемкость смеси инжектируемого  потока Cp↑иГаз
        Cp↑иГаз:=Cp↑иГаз+strtofloat(Form2.StringGrid_Ин.Cells[2,i])*strtofloat(Form2.StringGrid_Ин.Cells[3,i]) ;
        //2)	Газовая постоянная рабочего
       // R↓иГаз:=R↓и+strtofloat(Form2.StringGrid_Ин.Cells[2,i])*strtofloat(Form2.StringGrid_Ин.Cells[4,i]) ;
        //3)	Массовая доля рабочего
        μ↓и:=μ↓и+strtofloat(Form2.StringGrid_Ин.Cells[2,i])*strtofloat(Form2.StringGrid_Ин.Cells[4,i]) ;
     end;
  end;
 Cp↑иГаз:=Cp↑иГаз*1000; //в СИ



 //	μ↓Газ:=28.96	;//(1.5)
  μ↓и_пар:=strtofloat(Form2.StringGrid1.Cells[4,0])	;//(1.6)
	μ↓р_пар:=strtofloat(Form2.StringGrid2.Cells[4,0])	;//(1.6)
  Cp↑рПар:=strtofloat(Form2.StringGrid1.Cells[3,0])	;//(1.6)
  Cp↑иПар:=strtofloat(Form2.StringGrid2.Cells[3,0])	;//(1.6)
  Cp↑рПар:=Cp↑рПар*1000 ;
  Cp↑иПар:=Cp↑иПар*1000 ;






i_цикл:=0 ;





//+===+===+===+Прогон по Рсм4+===+===+====+=====+=====+====+====+===+===+===+===+===
//-----------  График -----------
Form6.Chart1.View3D:=False;   //2D график
Form6.Chart1.BottomAxis.Automatic:=True; // Отключение автоматического определения параметров нижней оси
//Form6.Chart1.BottomAxis.minimum:= -1;  //Мин значение по оси Х
//Form6.Chart1.BottomAxis.maximum:= 2.5;  //Мах значение по оси Х
Form6.Chart1.LeftAxis.Automatic:=True; // Отключение автоматического определения параметров нижней оси
//Form6.Chart1.LeftAxis.minimum:= 0;  //Мин значение по оси Х
//Form6.Chart1.LeftAxis.maximum:= 7000;  //Мах значение по оси Х

   d↓р1Номер:=0 ;

 d↓р1_Цикл_Зад2:=False ;
 I_список:=0 ;

if RadioGroup1_Зад2.ItemIndex=1 then
   begin
     d↓р1:=d↓р1_от ;  //для цикла
     P’↓p0:= 0;  //для цикла
     d↓р1Номер:=1;
   end
  else
   begin
     d↓р1Номер:=0 ;
     d↓р1_от := 0;
     d↓р1_до := 0;
     d↓р1_шаг  := 0;
   end;

  //  While (P↓р0<=P↓р0_до) or (P↓р0Номер=0) Do
    While d↓р1_Цикл_Зад2=False Do
        begin    //While (d↓р1_Цикл_Зад2=False) Do
  //  case P↓р0Номер of
 //     1: P↓р0:=30.65*1000+101325  ;
  //    2: P↓р0:=20.46*1000+101325  ;
  //    3: P↓р0:=14.8*1000+101325  ;
  //    4: P↓р0:=9.8*1000+101325  ;
 //     5: P↓р0:=4.77*1000+101325  ;
 //   end;

    if (RadioGroup1_Зад2.ItemIndex=2) and (I_список=ListBox1.Count-1) then  d↓р1_Цикл_Зад2:=True ;
    if RadioGroup1_Зад2.ItemIndex=2 then
       begin
         d↓р1:= StrToFloat(ListBox1.Items[I_список]);
         I_список:=I_список+1   ;
       end;

//Записываем тип созданую диограммы в таблицу
jj:=StringGrid_Диограм.RowCount ;

StringGrid_Диограм.RowCount:=StringGrid_Диограм.RowCount+1;
StringGrid_Диограм.Cells[0,jj]:=FloatToStr(jj) ;
StringGrid_Диограм.Cells[1,jj]:='кривые' ;


StringGrid_Диограм.Cells[2,jj]:='d↓р='+FloatToStr(d↓р1*1000)+'мм'  ;


for О_Н := 0 to StringGrid_Диограм.RowCount - 2 do
  if StringGrid_Диограм.Cells[2,О_Н]='d↓р='+FloatToStr(d↓р1*1000)+'мм'  then
    begin
     StringGrid_Диограм.Cells[2,jj]:=FloatToStr(№Одинак_Назван+1)+') '+'d↓р='+FloatToStr(d↓р1*1000)+'мм'     ;
     №Одинак_Назван:=№Одинак_Назван+1 ;
    end;
Form6.Chart1.AddSeries(TLineSeries.Create(Self));
Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].Title:=StringGrid_Диограм.Cells[2,jj];
Form6.Chart1.LeftAxis.Title.Caption:='dкс, мм';
Form6.Chart1.BottomAxis.Title.Caption:='U';
Form6.ListBox1.Items.Add(StringGrid_Диограм.Cells[2,jj]);
Form6.radiogroup1.Items.Add(StringGrid_Диограм.Cells[2,jj]);
if Form6.radiogroup1.Width<(Round(Label3.Canvas.TextWidth(StringGrid_Диограм.Cells[2,jj]))*1.4)   then
    Form6.radiogroup1.Width:=Round(Label3.Canvas.TextWidth(StringGrid_Диограм.Cells[2,jj])*1.4)  ;
if Form6.radiogroup1.Height<Form6.radiogroup1.Items.Count*(Round(Label3.Canvas.TextHeight(StringGrid_Диограм.Cells[2,jj]))*2)   then
    Form6.radiogroup1.Height:=Form6.radiogroup1.Height+Round(Label3.Canvas.TextHeight(StringGrid_Диограм.Cells[2,jj])*2)  ;
Form6.ScrollBox1.Width:=Round(Form6.radiogroup1.Width*1.2) ;
Form6.ScrollBox1.Width:=Round(RadioGroup1.Width * 1.3) ;

//Form6.radiogroup1.Width:=Round*(Label3.Canvas.TextWidth(StringGrid_Диограм.Cells[2,jj])*1.1)  ;
//Создание таблицы с результатами расчета
    Высота_листа:=Form6.PageControl1.Height-Form6.TabSheet1.Height    ;
    Шарина_листа:=Form6.PageControl1.Width-Form6.TabSheet1.Width    ;
    jj_номер_Табл:=jj_номер_Табл+1;
    i_строка:=0;
  sg := TStringGrid(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)));
    if Assigned(sg) then  //Если такая табл уже есть то нечего не делаем
  begin
    //sg.FixedRows := 1;
    //sg.FixedCols := 1;
    //sg.ColCount := i_Form6;  //i_Form6;
    //sg.RowCount := 10000;
    //sg.Width := Form6.ClientWidth-Шарина_листа;
    //sg.Height := Form6.ClientHeight-Высота_листа;
  end
  else
  begin
    with TStringGrid.Create(Self) do
    begin
      Parent :=Form6.TabSheet_З1_Резу; //Self;
      Name := 'myStringGrid'+FloatToStr(jj_номер_Табл); // Вот по этому имени и будешь обращаться...
      //ShowMessage(Form6.Components[Form6.ControlCount].Name+'///'+Form6.Components[Form6.ControlCount].Owner.Name);
      //Options := Options + [goEditing];
      Left:=Form6.Label3.Left+Form6.Label3.Width ;
      Top:=0;
      FixedCols:=1;
      FixedRows:=1;
      ColCount:=33;
      i_Form6:=0;
      Visible:=False ;
      Cells[i_Form6,0]:='№';         i_Form6:=i_Form6+1;    //ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Название';  i_Form6:=i_Form6+1;   // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Pp0, Па';  i_Form6:=i_Form6+1;    // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='υp0, Па';  i_Form6:=i_Form6+1;    // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Pи0, Па';  i_Form6:=i_Form6+1;    // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='υи0, Па';  i_Form6:=i_Form6+1;    // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Рсм4, Па';  i_Form6:=i_Form6+1;   // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='υсм4';  i_Form6:=i_Form6+1;       // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Тсм4';  i_Form6:=i_Form6+1;       // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='ξсм4';  i_Form6:=i_Form6+1;       // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='dр, мм';  i_Form6:=i_Form6+1;    // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='dкс, мм';  i_Form6:=i_Form6+1;    // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Gp, кг/ч';  i_Form6:=i_Form6+1;   // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Gи, кг/ч';  i_Form6:=i_Form6+1;   // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='U';  i_Form6:=i_Form6+1;          // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Rсм';  i_Form6:=i_Form6+1;        // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='kсм';  i_Form6:=i_Form6+1;        // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Cpсм';  i_Form6:=i_Form6+1;       // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Rр';  i_Form6:=i_Form6+1;         // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='kр';  i_Form6:=i_Form6+1;         // ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Cpр';  i_Form6:=i_Form6+1;       //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Rи';  i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='kи';  i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Cpи'; i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='d↓р1↑кр, мм'; i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='P↓р1↑кр, Па'; i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='ω↓р1↑кр, м/с'; i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='P↓р1, Па'; i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='ω↓р1, м/с'; i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='T↓р1';   i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Дисперсия (эксп)'; i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='СКО'; i_Form6:=i_Form6+1;        //  ColCount:=ColCount+1 ;
      Cells[i_Form6,0]:='Индекс корреляции';

      Cells[1, 1] := Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].Title;
      StringGrid_Диограм.Cells[3,jj]:=Name;
      ColWidths[1]:= 0 ;
      //Cells[1, 1] := Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].Title;  i_столбец:=i_столбец+1;
      //ColCount:=ColCount-1 ;
      //ColCount:=i_Form6;//i_Form6;
      RowCount:=2;
      //DefaultRowHeight:=Form1.StringGrid2.DefaultRowHeight;
      //DefaultColWidth:=Form1.StringGrid2.DefaultColWidth;
      //DefaultRowHeight:=24;
      Width :=Form6.ClientWidth-Шарина_листа-(Form6.Label3.Left+Form6.Label3.Width);
      Height :=Form6.ClientHeight-Высота_листа;
      Left:=Form6.ScrollBox1.Left+Form6.ScrollBox1.Width ;
if   (Form6.radiogroup1.Items.Count=1)  then
          Form6.radiogroup1.ItemIndex:=0 ;
    end;
  end;
    //сделать давления Рр0 другие
    //  if P↓р0=P↓и0+25000 then P↓р0:=P↓и0+30000  ;  // пропускаем  P↓и0+25000  простоя эксперимент этот не проводил
//==========РАБОЧИЙ ПОТОК перед СА=========================================
    //Давление насыщения
    try
     if T↓р0-273.15<=800 then
        P’↓p0:=pul (5, 0, T↓р0-273.15)*1E6     //(1.2) //T↓р0-273.15
     else
        P’↓p0:=0;
    except
     P’↓p0:=0;
    end;

      //Площаь рабочего сопла
     f↓р1:=pi/4*Sqr(d↓р1)    ;  //d↓р1*1000
     if RadioGroup2_Зад2.ItemIndex=0 then
        begin
          P↓р0:=P↓атм ;   //для цикла
        end  ;
          P↓р0нов:=0 ;    //для цикла
 //++++++++++++++++Цикл (Р↓р0нов)++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
While Abs(P↓р0нов-P↓р0)>=power(10,-18) Do
    begin   //While Abs(P↓р0нов-P↓р0)>=power(10,-18) Do
     //Парциальное давление водяного пара
     if RadioGroup2_Зад2.ItemIndex=1 then
        begin
          P↓р0нов:= P↓р0;
          P↓р0нов:= P↓р0нов-power(10,-18);
        end
     else
          P↓р0нов:= P↓р0;
     P↓р0↑пар:=ζ↓р*P’↓p0  ;   //(1.3)
     //Объемная доля воздуха и воды
     rr↓р0↑Газ:=(P↓р0-P↓р0↑пар)/P↓р0   ;   //(1.4)
     rr↓р0↑пар:=1-rr↓р0↑Газ  ;   //(1.5)
     //Массовая доля воздуха и пара
     m↓р0↑Газ:=(rr↓р0↑Газ*μ↓р)/(rr↓р0↑Газ*μ↓р+rr↓р0↑пар*μ↓р_пар )  ;   //(1.6)
     m↓р0↑пар:=1-m↓р0↑Газ   ;   //(1.7)
     //Удельная газовая постоянная влажного воздуха
     R↓р:=8314/(rr↓р0↑Газ*μ↓р+rr↓р0↑пар*μ↓р_пар ); // (1.8)
     // Удельный объем рабочего потока перед СА, м3/кг
    // υ↓р0:= (R↓р * T↓р0) / P↓р0; // (1.9)
     // Теплоемкость
     Cp↑р0 := Cp↑рПар * m↓р0↑пар + Cp↑рГаз * m↓р0↑Газ; // (1.13)
     // Показатель адиабаты
     k↓р0 := Cp↑р0 / (Cp↑р0 - R↓р); // (1.14)

//++++++++++++++++Цикл (Р↓р0)++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
υ↓р0:=(R↓р*T↓р0)/P↓р0;
if RadioGroup2_Зад2.ItemIndex=1 then
    G↓р:=φ↓р1↑соп*f↓р1*Sqrt(2*k↓р0/(k↓р0-1)*Sqr(P↓р0)/(R↓р*T↓р0)*( power(P↓и0/P↓р0 ,2/k↓р0)-power(P↓и0/P↓р0 ,(k↓р0+1)/k↓р0) ));   //G↓р*3600     G↓р_цикл*3600

G↓р1↑кр:=φ↓р1↑соп*f↓р1*Sqrt(2*k↓р0/(k↓р0+1)*P↓р0/υ↓р0* power(2/(k↓р0+1) ,2/(k↓р0-1)))  ;  //G↓р1↑кр*3600
P↓р1↑кр:=P↓и0*power(2/(k↓р0+1),k↓р0/(k↓р0-1)) ;      //P↓р0-P↓атм
    {
if RadioGroup1_Зад2.ItemIndex=0 then
   begin
     f↓р1↑кр:=G↓р/Sqrt(2*k↓р0/(k↓р0+1)*P↓р0/υ↓р0* power(2/(k↓р0+1) ,2/(k↓р0-1)))  ;
     if f↓р1↑кр<f↓р1 then exit;
   end;
   }
if RadioGroup2_Зад2.ItemIndex=0 then
   begin   //if RadioGroup2_Зад2.ItemIndex=2 then

if RadioGroup1_Зад2.ItemIndex=1 then
   begin
   //  if G↓р1↑кр<G↓р then

      //d↓р1:=d↓р1_от ;
      f↓р1:=pi/4*Sqr(d↓р1) ;
      f↓р1↑кр:=G↓р/Sqrt(2*k↓р0/(k↓р0+1)*P↓р0/υ↓р0* power(2/(k↓р0+1) ,2/(k↓р0-1)))  ;
      if f↓р1↑кр>f↓р1 then
      begin
        f↓р1:=f↓р1↑кр    ;
       // f↓р1:=pi/4*Sqr(d↓р1)    ;
        d↓р1:=Sqrt(4*f↓р1/pi)   ;
      end;
   end;
f↓р1:=pi/4*Sqr(d↓р1)    ;
P↓р1↑кр:=P↓и0*power(2/(k↓р0+1),k↓р0/(k↓р0-1)) ;
      //P↓р1↑кр:=P↓р0*power(2/(k↓р0+1),k↓р0/(k↓р0-1)) ;
      if P↓р0нов=0 then P↓р0:=P↓и0 ;    //начальное значение должнобыть больше предпологаемого ответа (но необязательно просто считать будет дольше, я добавил логическое вырожение)  и не равно начальному шагу (у формулы можетбыть мах вохможное значение параметра (при большем она не счетае - корень из отрец числа))
      G↓р_цикл:=0  ;  //для цикла
      P↓р0Шаг№:=0 ;   //для цикла
      P↓р0Шаг1:=0 ;   //для цикла
      P↓р0Шаг2:=0 ;   //для цикла
      P↓р0_1:=0 ;   //для цикла
      G↓р_логик:=False     ;
      ii:=1;
      //Найдем шаг (он имеет такойже порядок что и начальное значение)
      if Trunc(P↓р0)<>0 then  // если число лольше либо раное 1  (целая часть не равна нулю)
        P↓р0Шаг :=power(10,(Length(FloatToStr( Trunc(P↓р0) ))-1))  //для цикла  - Шаг долженбыть тогоже порядка что и начальное значение
      else                  //в ином случае
         begin
            P↓р0Разрядность:=P↓р0 ;
            while P↓р0Разрядность<1  do
              begin
                ii:=ii*10;
                P↓р0Разрядность:=P↓р0Разрядность*10 ;
              end;
            P↓р0Шаг :=power(10,(1-Length(FloatToStr( ii ))))
         end;
      //зададим новое исходное значение  такого же порядка что и нанчальное значение (таким образом мы избавляемся от знаков в порядках меньших чем будут получеен ы далее).  Умножаем на два на случай если P↓р1 не можетбыть равно нулю  (в этом случае может - не нравется можете стереть это не нашто не влияет)
      //P↓р0:=P↓р0Шаг ;
        P↓р0:=P↓и0 ;
      ii:=1;

      //запомним исходные значеня. В цикле они будут использованы, если задоное начальное значение меньше ответа
      P↓р0Резерв:=P↓р0 ;
      P↓р0ШагРезерв:=P↓р0Шаг ;
      //While Abs(G↓р_цикл-G↓р)>=power(10,-18) Do  //при большей разницы не считает (выкидывеет из расчета) (выставлять вручную)
      While G↓р_логик=False Do  //при большей разницы не считает (выкидывеет из расчета) (выставлять вручную)
         begin
           P↓р0_3:=P↓р0_1 ;
           P↓р0_1:=P↓р0 ;
          // if G↓р<0 then
          //      P↓р0:=P↓р0-(G↓р_цикл-G↓р)/abs(G↓р_цикл-G↓р)*P↓р0Шаг  //шаг изменения
          // else
                P↓р0:=P↓р0-(G↓р_цикл-G↓р)/abs(G↓р_цикл-G↓р)*P↓р0Шаг;
           P↓р0_2:=P↓р0 ;
           P↓р0Шаг1:=P↓р0Шаг2 ;
            //if ΔG↓р=abs(G↓р-G↓р_цикл) then //Если  делфи не видет разницы между (Lн-Lн_цикл) предыдущего цикла и (Lн-Lн_цикл) из нового цикла
            //       G↓р_логик:=True ;
             ΔG↓р:=abs(G↓р-G↓р_цикл) ;  //для справки
             P↓р0Шаг№:=P↓р0Шаг№+1 ;
             P↓р0Шаг2:=P↓р0Шаг ;
             if P↓р0Шаг1>P↓р0Шаг2 then
               P↓р0Шаг№:=0 ;
             if ((P↓р0_3=P↓р0_2) or (P↓р0_3=P↓р0_1)) and (P↓р0Шаг№<>0) then
               P↓р0Шаг№:=10 ;
            if P↓р0Шаг№=10 then
                begin
                  P↓р0Шаг:=P↓р0Шаг*0.1 ;
                  P↓р0Шаг№:=0 ;
                end;
             if P↓р0<=P↓и0 then
               P↓р0:=P↓р0_1 ;
           //  if (P↓р0<=P↓и0) and (P↓р0_1:=0;) then
            // if P↓р0>P↓и0 then
             //  P↓р0:=P↓р0_1 ;
            // if (U>0) and (U<1e-6) then
            //   P↓р0:=P↓р0_1  ;
             if P↓р0Шаг<=1e-50 then  //принудительное увеличение начального значеня и шага в 10 раз в связи с невозможностью применения шага меньше power(10.-22), т.к. число значищих знаков, у числа с типом Extended,  после запятой  неможет быть больше 20 (вроде бы по теории так). Я взял  30 не значищих знаков навсякий пожарный (они выливаются в 300 кругов в цикле)
               begin
                 P↓р0:= P↓р0Резерв*power(10,ii) ;
                 P↓р0Шаг:=P↓р0ШагРезерв*power(10,ii) ;
                 G↓р_цикл:=0  ;  //для цикла
                 P↓р0Шаг№:=0 ;   //для цикла
                 P↓р0Шаг1:=0 ;   //для цикла
                 P↓р0Шаг2:=0 ;   //для цикла
                 ii:=ii+1 ;
               end;
      f↓р1↑кр:=G↓р/Sqrt(2*k↓р0/(k↓р0+1)*P↓р0/υ↓р0* power(2/(k↓р0+1) ,2/(k↓р0-1)))  ;
      if f↓р1↑кр>f↓р1 then
      begin
        f↓р1:=f↓р1↑кр    ;
       // f↓р1:=pi/4*Sqr(d↓р1)    ;
        d↓р1:=Sqrt(4*f↓р1/pi)   ;
        StringGrid_Диограм.Cells[2,jj]:=FloatToStr(№Одинак_Назван+1)+') '+'d↓р='+FloatToStr(d↓р1*1000)+'мм' ;
        Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].Title:=StringGrid_Диограм.Cells[2,jj];
        (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[1, 1] :=StringGrid_Диограм.Cells[2,jj];
      end;
     G↓р_цикл:=φ↓р1↑соп*f↓р1*Sqrt(2*k↓р0/(k↓р0-1)*Sqr(P↓р0)/(R↓р*T↓р0)*( power(P↓и0/P↓р0 ,2/k↓р0)-power(P↓и0/P↓р0 ,(k↓р0+1)/k↓р0) ));   //G↓р*3600     G↓р_цикл*3600
     if ((P↓р0_1=P↓р0) and (P↓р0_2=P↓р0) and (P↓р0_3=P↓р0)) or (G↓р_цикл-G↓р=0) then  //(φ↓диф_цикл-φ↓диф) минемальная разница для типа экстендит
            G↓р_логик:=True;
end;
 //----------------Цикл (Р↓р0)----------------------------------------------------------------------

   end;   //if RadioGroup2_Зад2.ItemIndex=2 then
    end;//While Abs(P↓р0нов-P↓р0)>=power(10,-18) Do

 //----------------Цикл (Р↓р0нов)----------------------------------------------------------------------
    //f↓р1:=pi/4*Sqr(2.05/1000)    ;
   // G↓р1↑кр:=φ↓р1↑соп*f↓р1*Sqrt(2*k↓р0/(k↓р0+1)*P↓р0/υ↓р0* power(2/(k↓р0+1) ,2/(k↓р0-1)))  ;
      if d↓р1_от<d↓р1 then d↓р1_от:=d↓р1 ;
      //ДЛЯ СПРАВКИ
     υ↓р0:= (R↓р * T↓р0) / P↓р0; // (1.9)
      f↓р1↑кр:=G↓р/Sqrt(2*k↓р0/(k↓р0+1)*P↓р0/υ↓р0* power(2/(k↓р0+1) ,2/(k↓р0-1)))  ;
      d↓р1↑кр:=Sqrt(4*f↓р1↑кр/pi)   ; //d↓р1↑кр*1000
     // Удельный объем рабочего потока перед СА, м3/кг  (для справки)
     // Критическая скорость (для справки)
     ω↓р1↑кр := Sqrt(2 * k↓р0 / (k↓р0 + 1) * P↓р0 * υ↓р0);
     //
     // Скорость рабочего потока на выходе из рабочего сопла (сечение 1-1), м/с
     ω↓р1 := φ↓р1↑соп * Sqrt(2*k↓р0/(k↓р0-1)*P↓р0*υ↓р0*( 1-power(P↓и0/P↓р0 ,(k↓р0-1)/k↓р0) ))  ;   //(1.15)
     //Действительная скорость рабочего потока на выходе из рабочего сопла (сечение 1-1), м/с
     ω↓р1↑дейст:=ω↓р1  ;   //(1.39)

     //Массовый расход
     //Коэффициент потерь в рабочем сопле
    // G↓р:=φ↓р1↑соп*(f↓р1*Sqrt(2*k↓р0/(k↓р0-1)*P↓р0/υ↓р0*( power(P↓и0/P↓р0 ,2/k↓р0)-power(P↓и0/P↓р0 ,(k↓р0+1)/k↓р0) )))  ; //G↓р*3600
   //  G↓р:=f↓р1*ω↓р1↑дейст/υ↓р0  ;   //(1.10)    G↓р*3600
      //температуру рабочего потокав сечение 1-1, К (ДЛЯ СПРАВКИ)
      T↓р1:=T↓р0-Sqr(ω↓р1↑дейст)/(2*Cp↑р0)  ; //T↓р1-273.15      T↓р0-273.15
     //Массовый расход воздуха и пара
     G↓р0↑Газ:=m↓р0↑Газ*G↓р  ;   //(1.11)  //G↓р0↑Газ*3600
     G↓р0↑пар:=m↓р0↑пар*G↓р  ;   //(1.12)    //G↓р0↑пар*3600
     	//Объемная доля пара
       rr↓р1↑пар:=rr↓р0↑пар ;   //при условии не выпадении влаги
     	//Давление насыщения
      if T↓р1-273.15>=0 then
        begin
               try
                  if T↓р1-273.15<=800 then
                     P’↓р1:=pul (5, 0, T↓р1-273.15)*1E6     //(1.2) //T↓р1-273.15    T↓р0-273.15
                  else
                     P’↓р1:=0;
                  except
                     P’↓р1:=0;
                 end;
          //Парциальное давление пара
          P↓р1↑пар:=P↓и0*rr↓р1↑пар  ;   //(1.42)
          //Давление насыщения
          try
            ζ↓р1:=P↓р1↑пар/P’↓р1 ;       //ζ↓р
          except
             ζ↓р1:=0;
          end;

        end;
             Cp↑р1:=Cp↑р0;              //хлам
             G↓р1↑пар:=G↓р0↑пар ;       //хлам
             G↓р1↑Газ:=G↓р0↑Газ ;     //хлам
             G↓р1↑влага:=0;
             m↓р1↑влага:=0;
             Cp↑рВлага:=0;
             Cp↑смВлага:=0;
             //rr↓р1↑пар:=rr↓р0↑пар ; копия
             rr↓р1↑Газ:=rr↓р0↑Газ ;       //хлам
             m↓р1↑пар:=m↓р0↑пар ;           //хлам
             m↓р1↑Газ:=m↓р0↑Газ ;         //хлам
//==========ИНЖЕКТИРУЕМЫЙ ПОТОК ПЕРЕД СА=========================================
            //Давление насыщения
                try
                 if T↓и0-273.15<=800 then
                    P’↓и0:=pul (5, 0, T↓и0-273.15)*1E6           //(1.2)     T↓и0-273.15
                 else
                    P’↓и0:=0;
                except
                 P’↓и0:=0;
                end;
            //Парциальное давление водяного пара
            P↓и0↑пар:=ζ↓и*P’↓и0     ;      //(1.3)
            //Объемная доля воздуха и воды
            rr↓и↑Газ:=(P↓и0-P↓и0↑пар)/P↓и0      ;      //(1.4)
            rr↓и↑пар:=1-rr↓и↑Газ     ;      //(1.5)
            //Массовая доля воздуха и пара
            m↓и↑Газ:=(rr↓и↑Газ*μ↓и)/(rr↓и↑Газ*μ↓и+rr↓и↑пар*μ↓и_пар )     ;      //(1.6)
            m↓и↑пар:=1-m↓и↑Газ      ;      //(1.7)
            //Удельная газовая постоянная влажного воздуха
            R↓и:=8314/(rr↓и↑Газ*μ↓и+rr↓и↑пар*μ↓и_пар )     ;      //(1.8)
            //Теплоемкость
            Cp↑и:=Cp↑иПар*m↓и↑пар+Cp↑иГаз*m↓и↑Газ     ;      //(1.13)
            //Показатель адиабаты
            k↓и:=Cp↑и/(Cp↑и-R↓и )     ;      //(1.14)
            //Удельный объем рабочего потока перед СА, м3/кг  (ДЛЯ СПРАВКИ)
            υ↓и0:=(R↓и*T↓и0)/P↓и0     ;      //(1.9)


//+++++++++++++++++++++++++++++Цикл по U+++++++++++++++++++++++++++++++++++++++++++


  d↓кс:=d↓р1*5 ;  //для цикла   d↓кс*1000  d↓р1*1000   pi/4*Sqr(d↓р1)
  f↓кснов:=0 ;  //для цикла
  f↓кс:=pi/4*Sqr(d↓кс)  ;
  f↓р2:=f↓р1 ;
  U:=U_от ;
  Нумирация:=0 ;
 try  //try While U<U_до Do
    While U<U_до Do
        begin    //While U<U_до Do
      U:=U+U_шаг ;     //G↓и*3600
      (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).RowCount:=(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).RowCount+1 ;
      G↓и:=U*G↓р          ;
      //U :=G↓и/G↓р    ;
            //Массовый расход воздуха и пара
            G↓и0↑Газ:=m↓и↑Газ*G↓и     ;      //(1.11)     //G↓и0↑Газ*3600
            G↓и0↑пар:=m↓и↑пар*G↓и     ;      //(1.12)          //G↓и0↑пар*3600
                  G↓см:=G↓и+G↓р ;    //G↓см*3600

               Выход:=False;
               f↓кснов:=0 ;
             //  f↓кс:=1.3346746876e-05 ;
//+++++++++++++++++++++++++++++Цикл по f↓кс+++++++++++++++++++++++++++++++++++++++++++
While (Abs(f↓кснов-f↓кс)>=power(10,-18)) {or (Abs(f↓кснов-f↓кс)<>0)} {or (Выход=False)}  Do    //f↓кснов>f↓кс
    begin   //While Abs(f↓кснов-f↓кс)>=power(10,-18) Do
      // f↓кс:=f↓кс-power(10,-20) ;
       f↓кснов:= f↓кс;  //Заминаем пежнее значение площади
      //Площадь инж сопла
      f↓и2:=f↓кс-f↓р2 ;    //(1.65)  //f↓р1





//++++++++++++++++Цикл (Р↓и2)++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


G↓и2↑кр:=φ↓и2↑соп*f↓и2*Sqrt(2*k↓и/(k↓и+1)*P↓и0/υ↓и0* power(2/(k↓и+1) ,2/(k↓и-1)))  ; //G↓и*3600    G↓и2↑кр*3600
P↓и2↑кр:=P↓и0*power(2/(k↓и+1),k↓и/(k↓и-1)) ;



      //P↓и2↑кр:=P↓и0*power(2/(k↓и0+1),k↓и0/(k↓и0-1)) ;
      P↓и2:=P↓и0 ;    //начальное значение должнобыть больше предпологаемого ответа (но необязательно просто считать будет дольше, я добавил логическое вырожение)  и не равно начальному шагу (у формулы можетбыть мах вохможное значение параметра (при большем она не счетае - корень из отрец числа))
      G↓и_цикл:=0  ;  //для цикла
      P↓и2Шаг№:=0 ;   //для цикла
      P↓и2Шаг1:=0 ;   //для цикла
      P↓и2Шаг2:=0 ;   //для цикла
      P↓и2_1:=0 ;
      P↓и2_2:=0 ;
      P↓и2_3:=0 ;
      G↓и_логик:=False  ;
      Выход:=False;
      ii:=1;
      //Найдем шаг (он имеет такойже порядок что и начальное значение)
      if Trunc(P↓и2)<>0 then  // если число лольше либо раное 1  (целая часть не равна нулю)
        P↓и2Шаг :=power(10,(Length(FloatToStr( Trunc(P↓и2) ))-1))  //для цикла  - Шаг долженбыть тогоже порядка что и начальное значение
      else                  //в ином случае
         begin
            P↓и2Разрядность:=P↓и2 ;
            while P↓и2Разрядность<1  do
              begin
                ii:=ii*10;
                P↓и2Разрядность:=P↓и2Разрядность*10 ;
              end;
            P↓и2Шаг :=power(10,(1-Length(FloatToStr( ii ))))
         end;
      //зададим новое исходное значение  такого же порядка что и нанчальное значение (таким образом мы избавляемся от знаков в порядках меньших чем будут получеен ы далее).  Умножаем на два на случай если P↓и2 не можетбыть равно нулю  (в этом случае может - не нравется можете стереть это не нашто не влияет)
      P↓и2:=P↓и2Шаг ;

      ii:=1;

      //запомним исходные значеня. В цикле они будут использованы, если задоное начальное значение меньше ответа
      P↓и2Резерв:=P↓и2 ;
      P↓и2ШагРезерв:=P↓и2Шаг ;
 // While Abs(G↓и_цикл-G↓и)>=power(10,-16) Do  //при большей разницы не считает (выкидывеет из расчета) (выставлять вручную)
      While G↓и_логик=False Do  //Если  делфи не видет разницы между (Lн-Lн_цикл) предыдущего цикла и (Lн-Lн_цикл) из нового цикла
         begin
           P↓и2_3:=P↓и2_1 ;
           P↓и2_1:=P↓и2 ;
           if G↓и<0 then
                P↓и2:=P↓и2-(G↓и_цикл-G↓и)/abs(G↓и_цикл-G↓и)*P↓и2Шаг  //шаг изменения
           else
                P↓и2:=P↓и2+(G↓и_цикл-G↓и)/abs(G↓и_цикл-G↓и)*P↓и2Шаг;
           P↓и2_2:=P↓и2 ;
           P↓и2Шаг1:=P↓и2Шаг2 ;
            //if ΔG↓и=abs(G↓и-G↓и_цикл) then //Если  делфи не видет разницы между (Lн-Lн_цикл) предыдущего цикла и (Lн-Lн_цикл) из нового цикла
            //       G↓и_логик:=True ;
             ΔG↓и:=abs(G↓и-G↓и_цикл) ;  //для справки
             P↓и2Шаг№:=P↓и2Шаг№+1 ;
             P↓и2Шаг2:=P↓и2Шаг ;
             if P↓и2Шаг1>P↓и2Шаг2 then
               P↓и2Шаг№:=0 ;
             if ((P↓и2_3=P↓и2_2) or (P↓и2_3=P↓и2_1)) and (P↓и2Шаг№<>0) then
               P↓и2Шаг№:=10 ;
             if P↓и2Шаг№=10 then
                begin
                  P↓и2Шаг:=P↓и2Шаг*0.1 ;
                  P↓и2Шаг№:=0 ;
                end;
             if P↓и2<P↓и2↑кр then
               P↓и2:=P↓и2_1 ;
             if P↓и2>P↓и0 then
               P↓и2:=P↓и2_1 ;
             if (U>0) and (U<1e-6) then
               P↓и2:=P↓и2_1  ;
        //     if P↓и2Шаг<=1e-25 then  //принудительное увеличение начального значеня и шага в 10 раз в связи с невозможностью применения шага меньше power(10.-22), т.к. число значищих знаков, у числа с типом Extended,  после запятой  неможет быть больше 20 (вроде бы по теории так). Я взял  30 не значищих знаков навсякий пожарный (они выливаются в 300 кругов в цикле)
        //       begin
        //         P↓и2:= P↓и2Резерв*power(10,ii) ;
         //        P↓и2Шаг:=P↓и2ШагРезерв*power(10,ii) ;
        //         G↓и_цикл:=0  ;  //для цикла
        //         P↓и2Шаг№:=0 ;   //для цикла
        //         P↓и2Шаг1:=0 ;   //для цикла
        //         P↓и2Шаг2:=0 ;   //для цикла
        //         ii:=ii+1 ;
       //        end;
      f↓и2↑кр:=G↓и/Sqrt(2*k↓и/(k↓и+1)*P↓и0/υ↓и0* power(2/(k↓и+1) ,2/(k↓и-1)))  ;
      if f↓и2↑кр>f↓и2 then
      begin
        f↓и2:=f↓и2↑кр    ;
        f↓кс:=f↓р2+f↓и2     ;
       // P↓и2:=P↓и2↑кр              ;

       // f↓и1:=pi/4*Sqr(d↓и1)    ;
        //d↓и2:=Sqrt(4*f↓и1/pi)   ;
      end;
           //G↓и_цикл:=f↓и2*P↓и2*φ↓и2↑соп/υ↓и2*power( 1-Sqr(P↓и2*φ↓и2↑соп)/(2*Cp↑и*T↓и2), 1/(k↓и-1) )  ; 	//(1.66)
            if G↓и<0 then
                  G↓и_цикл:=-φ↓и2↑соп*(f↓и2*Sqrt(2*k↓и/(k↓и-1)*P↓и0/υ↓и0*( power(P↓и2/P↓и0 ,2/k↓и)-power(P↓и2/P↓и0 ,(k↓и+1)/k↓и) )))   //G↓и*3600     G↓и_цикл*3600
            else
                  G↓и_цикл:=φ↓и2↑соп*(f↓и2*Sqrt(2*k↓и/(k↓и-1)*P↓и0/υ↓и0*( power(P↓и2/P↓и0 ,2/k↓и)-power(P↓и2/P↓и0 ,(k↓и+1)/k↓и) ))) ;  //G↓и*3600     G↓и_цикл*3600
     if ((P↓и2_1=P↓и2) and (P↓и2_2=P↓и2) and (P↓и2_3=P↓и2)) or (G↓и_цикл-G↓и=0) then  //(φ↓диф_цикл-φ↓диф) минемальная разница для типа экстендит
            G↓и_логик:=True;
     if (G↓и_логик=True) and (abs(G↓и_цикл-G↓и)>1E-17) then  //принудительный выход при очени мелькой точности
        begin
             if P↓и2>(P↓и2↑кр+P↓и0)/2 then
                  begin
                    Выход:=True;
                    U:=U+U_шаг;
                    f↓кснов:=f↓кс+power(10,-19);
                  end
            else
                 begin
                   Выход:=True;
                   U:=U_до+1;
                   f↓кснов:=f↓кс+power(10,-19);
                end;

             //Abs(f↓кснов-f↓кс)>=power(10,-18)
            //Form6.Show ;
            //Exit;
        end;
end;
 //----------------Цикл (Р↓и2)----------------------------------------------------------------------
if Выход=False then
       begin   //if Выход=False then
      	//Действительная скорость инжектируемого потока в сечение 2-2, м/с
      ω↓и2:=φ↓и2↑соп*Sqrt(2*k↓и/(k↓и-1)*P↓и0*υ↓р0*( 1-power(P↓и2/P↓и0 ,(k↓и-1)/k↓и) ))  ;   //(1.15)

      	ω↓и2↑дейст:=ω↓и2  ;   //(1.67)
      //φ↓и2↑соп   учитывает потерю скорости инжектируемого потока до сечения 2-2
      	//Температура инжектируемого потока в сечение 2-2, К  (ДЛЯ СПРАВКИ)
      	T↓и2:=T↓и0-Sqr(ω↓и2↑дейст)/(2*Cp↑и )  ;   //(1.68) T↓и2-273.15    T↓и0-273.15

//==========ДИФФУЗОР=========================================
        if  G↓и>=0 then   //не особо правельно но каму нужен инжектор работующий в обратную сторону
           begin
            	//28.8.	Массовая доля воздуха, пара и влаги рабочего и инж .газов в смеси (ПРИ U<0 Бред полный)
             	m↓см_р↑Газ:=G↓р1↑Газ/G↓см  ;   //(1.55)      //G↓см*3600  G↓р*3600
             	m↓см_р↑пар:=G↓р1↑пар/G↓см   ;   //(1.56)
             	m↓см_р↑влага:=G↓р1↑влага/G↓см  ;   //(1.57)
             	m↓см_и↑Газ:=G↓и0↑Газ/G↓см  ;   //(1.55)      //G↓см*3600
             	m↓см_и↑пар:=G↓и0↑пар/G↓см   ;   //(1.56)
             	//m↓см_и↑влага:=G↓и0↑влага/G↓см  ;   //(1.57)
            	//Теплоемкость смеси
             Cp↑см:=Cp↑иПар*m↓см_и↑пар+Cp↑иГаз*m↓см_и↑Газ+{Cp↑иВлага*m↓и↑влага}+Cp↑рПар*m↓см_р↑пар+Cp↑рГаз*m↓см_р↑Газ+Cp↑рВлага*m↓см_р↑влага  ;   //(1.58)

 //        //Объемная доля воздуха и воды
             rr↓см_р↑пар:=(m↓см_р↑пар/μ↓р_пар)/(m↓см_р↑Газ/μ↓р+m↓см_р↑пар/μ↓р_пар+m↓см_р↑влага/μ↓р_пар+m↓см_и↑Газ/μ↓и+m↓см_и↑пар/μ↓и_пар{+m↓см_и↑влага/μ↓и_пар} )  ;   //(1.60)
             rr↓см_р↑Газ:=(m↓см_р↑Газ/μ↓р)/(m↓см_р↑Газ/μ↓р+m↓см_р↑пар/μ↓р_пар+m↓см_р↑влага/μ↓р_пар+m↓см_и↑Газ/μ↓и+m↓см_и↑пар/μ↓и_пар{+m↓см_и↑влага/μ↓и_пар} )  ;   //(1.61)
             rr↓см_р↑влага:=(m↓см_р↑влага/μ↓р_пар)/(m↓см_р↑Газ/μ↓р+m↓см_р↑пар/μ↓р_пар+m↓см_р↑влага/μ↓р_пар+m↓см_и↑Газ/μ↓и+m↓см_и↑пар/μ↓и_пар{+m↓см_и↑влага/μ↓и_пар} )  ;   //(1.61)
             rr↓см_и↑пар:=(m↓см_и↑пар/μ↓и_пар)/(m↓см_р↑Газ/μ↓р+m↓см_р↑пар/μ↓р_пар+m↓см_р↑влага/μ↓р_пар+m↓см_и↑Газ/μ↓и+m↓см_и↑пар/μ↓и_пар{+m↓см_и↑влага/μ↓и_пар} )  ;   //(1.60)
             rr↓см_и↑Газ:=(m↓см_и↑Газ/μ↓и)/(m↓см_р↑Газ/μ↓р+m↓см_р↑пар/μ↓р_пар+m↓см_р↑влага/μ↓р_пар+m↓см_и↑Газ/μ↓и+m↓см_и↑пар/μ↓и_пар{+m↓см_и↑влага/μ↓и_пар} )  ;   //(1.61)
             //rr↓см_и↑влага:=(m↓см_и↑влага/μ↓и_пар)/(m↓см_р↑Газ/μ↓р+m↓см_р↑пар/μ↓р_пар+m↓см_р↑влага/μ↓р_пар+m↓см_и↑Газ/μ↓и+m↓см_и↑пар/μ↓и_пар{+m↓см_и↑влага/μ↓и_пар} )  ;   //(1.61)

             	//Удельная газовая постоянная смеси
              R↓см:=8314/(rr↓см_р↑Газ*μ↓р+rr↓см_р↑пар*μ↓р_пар+rr↓см_р↑влага*μ↓р_пар+rr↓см_и↑Газ*μ↓и+rr↓см_и↑пар*μ↓и_пар{+rr↓см_и↑влага*μ↓и_пар} )   ;   //(1.70)
          end;
       if G↓и<0 then   //не особо правельно но каму нужен инжектор работующий в обратную сторону
           begin
              Cp↑см:=Cp↑и ;
              R↓см:=R↓и ;
              T↓см4:=T↓и0 ;  //T↓см4-273.15      G↓р>abs(G↓и)  G↓р-abs(G↓и)
           end;
      	//Показатель адиабаты смеси на выходе из СА
      	k↓см:=Cp↑см/(Cp↑см-R↓см )  ;   //(1.71)
     //Температура смеси за СА

      //+++++++++++++++++++++ЦИКЛ(P↓см3 по P↓см4)+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

          if  G↓и>0 then
              begin
            	//Парциальное давление водяного пара
            	P↓см4↑пар:=(rr↓см_р↑пар+rr↓см_и↑пар)*P↓см4  ;   //(1.62)
            	//Давление насыщения
              T↓см4:=(G↓р*Cp↑р0*T↓р0+G↓и*Cp↑и*T↓и0)/(G↓см*Cp↑см) ;   //T↓см4-273.15
                try
                  begin
                  if T↓см4-273.15<=800 then
                    	P’↓см4:=pul (5, 0, T↓см4-273.15)*1E6    //(1.63)
                  else
                      P’↓см4:=0;
              	//Относительная влажность
                  ζ↓см4:=P↓см4↑пар/P’↓см4  ;   //(1.64)
                  end;
                except
                 P’↓см4:=0;
                 ζ↓см4:=0;
                end;
             end;

      	//Удельный объем рабочего потока перед СА, м3/кг
      	υ↓см4:=R↓см*T↓см4/P↓см4  ;   //(1.72)    T↓см4-273.15



//++++++++++++++++Цикл (Р↓см3)++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

P↓см3↑кр:=P↓см4*power(2/(k↓и+1),k↓и/(k↓и-1)) ;
aa:=G↓см ;
P↓р1:= P↓и0   ;
bb:=-φ↓кс*(G↓р*ω↓р1↑дейст+G↓и*ω↓и2↑дейст)-P↓р1*f↓р1-P↓и2*f↓и2 ;




      //P↓см3↑кр:=P↓см3*power(2/(k↓см+1),k↓см/(k↓см-1)) ;
      P↓см3:=P↓см4 ;    //начальное значение должнобыть больше предпологаемого ответа (но необязательно просто считать будет дольше, я добавил логическое вырожение)  и не равно начальному шагу (у формулы можетбыть мах вохможное значение параметра (при большем она не счетае - корень из отрец числа))
      G↓см_цикл:=0  ;  //для цикла
      P↓см3Шаг№:=0 ;   //для цикла
      P↓см3Шаг1:=0 ;   //для цикла
      P↓см3Шаг2:=0 ;   //для цикла
      φ↓диф_цикл:=0 ;   //для цикла
      P↓см3_1:=0 ;     //для цикла
      P↓см3_2:=0 ;     //для цикла
      P↓см3_3:=0 ;     //для цикла
      φ↓диф_логик:=False;
      ii:=1;
      //Найдем шаг (он имеет такойже порядок что и начальное значение)
      if Trunc(P↓см3)<>0 then  // если число лольше либо раное 1  (целая часть не равна нулю)
        P↓см3Шаг :=power(10,(Length(FloatToStr( Trunc(P↓см3) ))-1))  //для цикла  - Шаг долженбыть тогоже порядка что и начальное значение
      else                  //в ином случае
         begin
            P↓см3Разрядность:=P↓см3 ;
            while P↓см3Разрядность<1  do
              begin
                ii:=ii*10;
                P↓см3Разрядность:=P↓см3Разрядность*10 ;
              end;
            P↓см3Шаг :=power(10,(1-Length(FloatToStr( ii ))))
         end;
      //зададим новое исходное значение  такого же порядка что и нанчальное значение (таким образом мы избавляемся от знаков в порядках меньших чем будут получеен ы далее).  Умножаем на два на случай если P↓см3 не можетбыть равно нулю  (в этом случае может - не нравется можете стереть это не нашто не влияет)
      P↓см3:=P↓см3Шаг ;

      ii:=1;

      //запомним исходные значеня. В цикле они будут использованы, если задоное начальное значение меньше ответа
      P↓см3Резерв:=P↓см3 ;
      P↓см3ШагРезерв:=P↓см3Шаг ;
     // Δφ↓диф:=power(10,-14) ;
     // While Abs(φ↓диф_цикл-φ↓диф)=power(10,-14) Do  //при большей разницы не считает (выкидывеет из расчета) (выставлять вручную)
      While φ↓диф_логик=False Do  //Если  делфи не видет разницы между φ↓диф_цикл и φ↓диф
         begin
           P↓см3_3:=P↓см3_1 ;
           P↓см3_1:=P↓см3 ;
                P↓см3:=P↓см3+(φ↓диф_цикл-φ↓диф)/abs(φ↓диф_цикл-φ↓диф)*P↓см3Шаг  ;//шаг изменения
           P↓см3_2:=P↓см3 ;
           P↓см3Шаг1:=P↓см3Шаг2 ;
            //if ΔG↓см=abs(G↓см-G↓см_цикл) then //Если  делфи не видет разницы между (Lн-Lн_цикл) предыдущего цикла и (Lн-Lн_цикл) из нового цикла
            //       G↓см_логик:=True ;
             Δφ↓диф:=abs(φ↓диф_цикл-φ↓диф) ;  //для справки
             P↓см3Шаг№:=P↓см3Шаг№+1 ;
             P↓см3Шаг2:=P↓см3Шаг ;
             if P↓см3Шаг1>P↓см3Шаг2 then
               P↓см3Шаг№:=0 ;
             if ((P↓см3_3=P↓см3_2) or (P↓см3_3=P↓см3_1)) and (P↓см3Шаг№<>0) then
               P↓см3Шаг№:=10 ;
             if P↓см3Шаг№=10 then
                begin
                  P↓см3Шаг:=P↓см3Шаг*0.1 ;
                  P↓см3Шаг№:=0 ;
                end;
             if P↓см3<P↓см3↑кр then
               P↓см3:=P↓см3_1 ;
             if P↓см3>P↓см4 then
               P↓см3:=P↓см3_1 ;
            // if (U>0) and (U<1e-6) then
            //   P↓см3:=P↓см3_1  ;
           {  if P↓см3Шаг<=1e-50 then  //принудительное увеличение начального значеня и шага в 10 раз в связи с невозможностью применения шага меньше power(10.-22), т.к. число значищих знаков, у числа с типом Extended,  после запятой  неможет быть больше 20 (вроде бы по теории так). Я взял  30 не значищих знаков навсякий пожарный (они выливаются в 300 кругов в цикле)
               begin
                 P↓см3:= P↓см3Резерв;//*power(10,ii) ;
                 P↓см3Шаг:=P↓см3ШагРезерв;//*power(10,ii) ;
                 G↓см_цикл:=0  ;  //для цикла
                 P↓см3Шаг№:=0 ;   //для цикла
                 P↓см3Шаг1:=0 ;   //для цикла
                 P↓см3Шаг2:=0 ;   //для цикла
                 //ii:=ii+1 ;
                 //Δφ↓диф:=Δφ↓диф*10;
                Showmessage('цикл по Δφ↓диф' );
                 Exit;

               end;     }

            // P↓см3:=101723.7412   ; //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
             cc:=G↓см*υ↓см4*power(P↓см4/P↓см3 ,1/k↓см)*P↓см3 ;   //G↓см*3600
             φ↓диф_цикл:=2*aa/(-bb-Sqrt(Sqr(bb)-4*aa*cc))*Sqrt(2*k↓и/(k↓и-1)*P↓см3*υ↓см4*( P↓см4/P↓см3-power(P↓см4/P↓см3 ,1/k↓см) )) ;
            if ((P↓см3_1=P↓см3) and (P↓см3_2=P↓см3) and (P↓см3_3=P↓см3)) or (φ↓диф_цикл-φ↓диф=0) then  //(φ↓диф_цикл-φ↓диф) минемальная разница для типа экстендит
               φ↓диф_логик:=True;
         end;

 //----------------Цикл (Р↓см3)----------------------------------------------------------------------
      	//Действительная скорость инжектируемого потока в сечение 2-2, м/с
        ω↓см3:=1/φ↓диф*Sqrt(2*k↓см/(k↓см-1)*P↓см3*υ↓см4*( P↓см4/P↓см3-power(P↓см4/P↓см3 ,1/k↓см) ))  ;   //(1.15)
        ω↓см3↑дейст:=ω↓см3 ;
       	//Температура смеси в сечении 3-3  //
      	T↓см3:=T↓см4-Sqr(ω↓см3↑дейст)/(2*Cp↑см )  ;   //(1.75)   //T↓см4-273.15  T↓см3-273.15

//==========КАМЕРА СМЕШЕНИЯ=========================================
      //Давление смеси за диффузором   (ур импульса и ур аддиабаты)
      P↓р1:=P↓и0 ;  //дано
   f↓кс:=(φ↓кс*(G↓р*ω↓р1↑дейст+G↓и*ω↓и2↑дейст)-G↓см*ω↓см3↑дейст+P↓р1*f↓р1+P↓и2*f↓и2)/P↓см3  ;      //G↓см*3600
  // f↓кс:=pi/4*Sqr(d↓кс)  ;
   //Диаметра КС (для справки)
   d↓кс := Sqrt(4*f↓кс/pi)               ;  //d↓кс*1000

   // end; //  While P↓см4_логик=False Do
//-----------------------------Цикл по f↓кс-------------------------------------------



    // if (d↓кс)<=0 then G↓и:=G↓и_до ;  P↓р0

       end;//if Выход=False then


  end;      //While Abs(f↓кснов-f↓кс)>=power(10,-18) Do
    if Выход=False then
       begin   //if Выход=False then
     i_строка:=i_строка+1 ;
     i_столбец:=2 ;
      Нумирация:=Нумирация+1 ;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец-2,i_строка]:=FloatToStr(Нумирация) ;

     //(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] := Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].Title;  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(P↓р0,7));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(υ↓р0,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(P↓и0,7));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(υ↓и0,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(P↓см4,7));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(υ↓см4,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(T↓см4-273.15,4) );  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(ζ↓см4*100,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(d↓р1*1000,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(d↓кс*1000,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(G↓р*3600,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(G↓и*3600,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(U,100));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(R↓см,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(k↓см,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(Cp↑см,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(R↓р,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(k↓р0,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(Cp↑р0,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(R↓и,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(k↓и,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(Cp↑и,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(d↓р1↑кр*1000,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(P↓р1↑кр,7));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(ω↓р1↑кр,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(P↓р1,7));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(ω↓р1,4));  i_столбец:=i_столбец+1;
     (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] :=FloatToStr(RoundSignificant(T↓р1-273.15,4));  i_столбец:=i_столбец+1;

{
     i_строка:=i_строка+1 ;
     i_столбец:=2 ;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(P↓р0);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(U);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(G↓р*3600);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(G↓и*3600);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(P↓см4);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(υ↓см4);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(T↓см4);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(ζ↓см4*100);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(R↓см);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(k↓см);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(Cp↑см);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(R↓р);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(k↓р);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(Cp↑р);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(R↓и);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(k↓и);  i_столбец:=i_столбец+1;
     fORM6.StringGrid2.Cells[i_столбец, i_строка] :=FloatToStr(Cp↑и);  i_столбец:=i_столбец+1;

(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Visible:=False ;

fORM6.StringGrid2.RowCount:=fORM6.StringGrid2.RowCount-1 ;
     }
    Form6.Chart1.SeriesList[Form6.Chart1.SeriesCount-1].AddXY(U,(d↓кс*1000),'');

 // end; ////for I_список := 0 to ListBox1.Count - 1 do

       end;//if Выход=False then

end;      //While U<U_до Do

 except  //try While U<U_до Do
   U:=U_до+1;    //G↓и*3600   G↓и_до*3600
 end;   //try While U<U_до Do
(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).RowCount:=(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).RowCount-2 ;

 //(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл-Form6.RadioGroup1.Items.Count+1)) as TStringGrid).Visible:=True ;
 // Выход в заввисемости от вида расчета
    if RadioGroup1_Зад2.ItemIndex=0 then   d↓р1_Цикл_Зад2:=True ;
    if (RadioGroup1_Зад2.ItemIndex=1) and  (d↓р1<d↓р1_до)  then
        d↓р1:=d↓р1+d↓р1_шаг;
    if (RadioGroup1_Зад2.ItemIndex=1) and  (d↓р1>=d↓р1_до)  then   d↓р1_Цикл_Зад2:=True ;
    Form6.Show ;
    Form6.Chart1.Update;
    //if (RadioGroup1_Зад2.ItemIndex=1) and (P’↓p0<>0)     then   d↓р1:=d↓р1+d↓р1_шаг ;
end;  //While (d↓р1_Цикл_Зад2=False) Do
Form6.Show ;

{
G↓и*3600
G↓р*3600
ζ↓р
ζ↓и
P↓атм
d↓р1*1000
P↓см4
φ↓р1↑соп
φ↓диф
φ↓кс
φ↓и2↑соп
T↓р0-273.15
P↓и0
Cp↑рГаз
Cp↑иГаз
R↓р
R↓и
μ↓р
μ↓и
μ↓и_пар
μ↓р_пар
Cp↑рПар
Cp↑иПар
P↓р0
P’↓p0
P↓р0↑пар
rr↓р0↑Газ
rr↓р0↑пар
m↓р0↑Газ
m↓р0↑пар
R↓р
Cp↑р0
k↓р0
υ↓р0
ω↓р1↑кр
ω↓р1
ω↓р1↑дейст
T↓р1-273.15
G↓р0↑Газ*3600
G↓р0↑пар*3600
rr↓р1↑пар
P’↓р1
P↓р1↑пар
ζ↓р1
Cp↑р1
rr↓р1↑Газ
m↓р1↑пар
m↓р1↑Газ
P’↓и0
P↓и0↑пар
rr↓и↑Газ
rr↓и↑пар
m↓и↑Газ
m↓и↑пар
R↓и
Cp↑и
k↓и
υ↓и0
d↓кс*1000
f↓кс
f↓р1
U
P↓и2
ω↓и2
ω↓и2↑дейст
T↓и2-273.15
m↓см_р↑Газ
m↓см_р↑пар
m↓см_р↑влага
m↓см_и↑Газ
m↓см_и↑пар
Cp↑см
rr↓см_р↑пар
rr↓см_р↑Газ
rr↓см_р↑влага
rr↓см_и↑пар
rr↓см_и↑Газ
R↓см
k↓см
P↓см4↑пар
T↓см4-273.15
P’↓см4
ζ↓см4
υ↓см4
G↓см*3600
P↓см3
ω↓см3
ω↓см3↑дейст
T↓см3-273.15
P↓р1
f↓кс
d↓кс*1000
}
//ΔP↓р3…1 не забыть


end;



procedure TForm1.Button2Click(Sender: TObject);
var
    s:string;
    t:textfile;
    U_наибольшее,U_наименьшее,Рсм4_наибольшее,Рсм4_наименьшее:integer;
    FirstLine: string;

begin
OpenDialog1.filename := '' ;
  if OpenDialog1.Execute then
     begin   //OpenDialog1.Execute then
       if FileExists(OpenDialog1.FileName) then
          begin  //FileExists(OpenDialog1.FileName) then
          for j := 0 to OpenDialog1.Files.Count - 1 do
            begin //j := 0 to OpenDialog1.Files.Count - 1 do
            //посчитаем количество записей в файле
            assignfile(t,OpenDialog1.Files.Strings[j]);
            reset(t);
            n:=0;
            while not eof(t) do
             begin
              readln(t,s);
              n:=n+1;
             end;
            CloseFile(t);

          //  with Form8.StringGrid2 do
          //      for i:=0 to ColCount-1 do
          //         Cols[i].Clear;

            Form8.StringGrid2.RowCount:=n;
            Form8.StringGrid2.ColCount:=2;

            //грузим файл в нулевой столбец таблицы
            Form8.StringGrid2.Cols[Form8.StringGrid2.ColCount-2].LoadFromFile(OpenDialog1.Files.Strings[j]);
            //разбиваем строки по колонкам
            for i:=0 to n do
               begin
                 Form8.StringGrid2.Rows[i].Delimiter:='	';   //задаем символ-разделитель столбцов
                 Form8.StringGrid2.Rows[i].DelimitedText:=Form8.StringGrid2.Cells[Form8.StringGrid2.ColCount-2,i];
               end;
             //замена точки и запятые на разделительный знак(,)
             iiii:=0;
             iiii:=0;
              for iiii:=0 to Form8.StringGrid2.ColCount-1 do      //Form8.StringGrid2.Cells[1,4]
                for jjjj:=0 to Form8.StringGrid2.RowCount-1 do
                  Form8.StringGrid2.Cells[iiii,jjjj]:=StringReplace(Form8.StringGrid2.Cells[iiii,jjjj], '.', DecimalSeparator, [rfReplaceAll]);
             iiii:=0;
             iiii:=0;
              for iiii:=0 to Form8.StringGrid2.ColCount-1 do      //Form8.StringGrid2.Cells[1,4]
                for jjjj:=0 to Form8.StringGrid2.RowCount-1 do
                  Form8.StringGrid2.Cells[iiii,jjjj]:=StringReplace(Form8.StringGrid2.Cells[iiii,jjjj], ',', DecimalSeparator, [rfReplaceAll]);

            //Записываем тип созданую диограммы в таблицу
            jj:=StringGrid_Диограм.RowCount ;
            StringGrid_Диограм.RowCount:=StringGrid_Диограм.RowCount+1;
            StringGrid_Диограм.Cells[0,jj]:=FloatToStr(jj) ;
            StringGrid_Диограм.Cells[1,jj]:='точечный' ;
            StringGrid_Диограм.Cells[2,jj]:=ExtractFileName(OpenDialog1.Files.Strings[j]) ;

            Form6.Chart1.AddSeries(TPointSeries.Create(Self));
            //Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].pointer.style:=psDiagCross;
            //(Form1.FindComponent(Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].name) as TPointSeries).pointer.style:=psDiagCross;
            (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.Style:=psStar;      //CurSeries - это текущая серия, на одном чарте их может быть несколько. Передаю как integer
            if bbbb=26 then
         bbbb:=bbbb-25;

  case  bbbb of
        0: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=clMaroon ;
        1: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=clGreen ;
        2: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=clOlive ;
        3: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=clNavy ;
        4: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=clPurple ;
        5: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=clTeal ;
        6: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=clRed ;
        7: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=clLime ;
        8: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=clBlue ;
        9: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=RGB(158,47,225) ;
        10: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=RGB(203,86,69) ;
        11: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=clHotLight ;
        12: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=clInactiveCaptionText ;
        13: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=RGB(255,0,0)  ;
        14: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=RGB(0,128,64) ;
        15: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=RGB(255,128,0) ;
        16: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=RGB(128,0,255) ;
        17: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=RGB(97,175,175) ;
        18: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=RGB(88,205,67) ;
        19: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=RGB(43,192,230) ;
        20: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=RGB(254,18,231) ;
        21: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=RGB(213,102,60) ;
        22: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=RGB(47,158,225) ;
        23: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=RGB(225,47,109) ;
        24: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=RGB(224,228,44) ;
        25: (Form6.Chart1.Series[Form6.Chart1.SeriesCount-1] as TPointSeries).Pointer.pen.Color:=RGB(0,0,0) ;
      end;
   bbbb:=bbbb+1 ;
            Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].Title:=ExtractFileName(OpenDialog1.Files.Strings[j]);
            Form6.ListBox1.Items.Add(Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].Title);

            //U_наибольшее:=0 ;
             //U_наименьшее:=0 ;
            for i := 0 to Form8.StringGrid2.RowCount - 1 do
                   begin
                     Try  Form6.Chart1.SeriesList[Form6.chart1.SeriesCount-1].AddXY(strtofloat(Form8.StringGrid2.Cells[Form8.StringGrid2.ColCount-2,i]),strtofloat(Form8.StringGrid2.Cells[Form8.StringGrid2.ColCount-1,i]) ,'');
                      if Form6.CheckBox_Для_параметров_графика.Checked=False  then  //если на кнопку Настройка графика не разу не нажымали то
                        begin
                          if U_наибольшее<strtofloat(Form8.StringGrid2.Cells[Form8.StringGrid2.ColCount-2,i]) then U_наибольшее:=Ceil(strtofloat(Form8.StringGrid2.Cells[Form8.StringGrid2.ColCount-2,i])) ;
                          if U_наименьшее>strtofloat(Form8.StringGrid2.Cells[Form8.StringGrid2.ColCount-2,i]) then U_наименьшее:=Ceil(strtofloat(Form8.StringGrid2.Cells[Form8.StringGrid2.ColCount-2,i])) ;
                          //if Рсм4_наибольшее<strtofloat(Form8.StringGrid2.Cells[0,i]) then U_наибольшее:=Ceil(strtofloat(Form8.StringGrid2.Cells[1,i])) ;
                          //if Рсм4_наименьшее>strtofloat(Form8.StringGrid2.Cells[0,i]) then U_наименьшее:=Ceil(strtofloat(Form8.StringGrid2.Cells[1,i])) ;
                        end;
                     except

                     End;
                   end;


            //Form8.StringGrid2.ColCount:=Form8.StringGrid2.ColCount+2;
            Form8.StringGrid2.RowCount:=Form8.StringGrid2.RowCount+2;

            Form8.StringGrid2.Cells[Form8.StringGrid2.ColCount-2,Form8.StringGrid2.RowCount-2]:=ExtractFileName(OpenDialog1.Files.Strings[j]);
            Form8.StringGrid2.Cells[Form8.StringGrid2.ColCount-1,Form8.StringGrid2.RowCount-2]:='точечный';
            Form8.StringGrid2.Cells[Form8.StringGrid2.ColCount-1,Form8.StringGrid2.RowCount-1]:='Рсм, Па (изб)' ;
            Form8.StringGrid2.Cells[Form8.StringGrid2.ColCount-2,Form8.StringGrid2.RowCount-1]:='U' ;
            TStringGridHack(Form8.StringGrid2).MoveRow(Form8.StringGrid2.RowCount-2, 0);
            TStringGridHack(Form8.StringGrid2).MoveRow(Form8.StringGrid2.RowCount-1, 1);
            //Form8.StringGrid2.ColWidths[1]:=100;
            //Form8.StringGrid2.ColWidths[0]:=100;
            //Form8.StringGrid2.DefaultRowHeight;
             if Form8.StringGrid1.RowCount<Form8.StringGrid2.RowCount then
                  Form8.StringGrid1.RowCount:=Form8.StringGrid2.RowCount ;
             if (Form8.StringGrid1.Cells[0,0]<>'') or (j>0)  then
                  Form8.StringGrid1.ColCount:=Form8.StringGrid1.ColCount+2 ;
                   //передача данных в другую таблицу
                for jjjj:=0 to Form8.StringGrid2.RowCount-1 do
                  begin
                    Form8.StringGrid1.Cells[Form8.StringGrid1.ColCount-2, jjjj]:=Form8.StringGrid2.Cells[0, jjjj];
                    Form8.StringGrid1.Cells[Form8.StringGrid1.ColCount-1, jjjj]:=Form8.StringGrid2.Cells[1, jjjj];
                  end;


            end;  //j := 0 to OpenDialog1.Files.Count - 1 do    //Form8.StringGrid2.Cells[1,0]
          end; //FileExists(OpenDialog1.FileName) then

            //авто ширено колонак
            StringGrid_шир_колон(Form8.StringGrid1);
            StringGrid_шир_колон(Form8.StringGrid2);
       //Form6.Chart1.View3D:=False;   //2D график
       if Form6.CheckBox_Для_параметров_графика.Checked=False  then  //если на кнопку Настройка графика не разу не нажымали то
          begin
           Form6.Chart1.BottomAxis.Automatic:=false; // Отключение автоматического определения параметров нижней оси
           Form6.Chart1.BottomAxis.minimum:= U_наименьшее;  //Мин значение по оси Х
           Form6.Chart1.BottomAxis.maximum:= U_наибольшее;  //Мах значение по оси Х
           Form6.Chart1.BottomAxis.Increment := 0.1;
           //зададим новое исходное значение  такого же порядка что и нанчальное значение (таким образом мы избавляемся от знаков в порядках меньших чем будут получеен ы далее).  Умножаем на два на случай если P↓и2 не можетбыть равно нулю  (в этом случае может - не нравется можете стереть это не нашто не влияет)
           //Form6.Chart1.LeftAxis.Automatic:=True; // Отключение автоматического определения параметров нижней оси
           //Form6.Chart1.LeftAxis.minimum:= Рсм4_наименьшее;  //Мин значение по оси Х
           //Form6.Chart1.LeftAxis.maximum:= Рсм4_наибольшее;  //Мах значение по оси Х

           if Form6.Chart1.BottomAxis.Automatic=false then  Form7.CheckBox1.Checked:=False ;
           Form7.EditMaxH.text:=floattostr(U_наибольшее) ;
           Form7.EditMinН.text:=floattostr(U_наименьшее) ;
           Form7.EditЦДН.text:=floattostr(Form6.Chart1.BottomAxis.Increment) ;

          end;
       Form6.show;
     end;  //OpenDialog1.Execute then



end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form3.Show;
end;

//<<<<<<<<<Последовательная схема>>>>>>>>>>
procedure TForm1.Button41Click(Sender: TObject);
begin
  Form8.show ;
end;

procedure TForm1.Button4Click(Sender: TObject);
var n,i,j,sm,jmx,mx:integer;
    Нашел:boolean;
begin
//sgDelRow(StringGrid_Диограм,0) ;
      //Записываем тип созданую диограммы в таблицу

       for i := 1 to StringGrid_Диограм.RowCount- 1 do
           begin
               jj :=1 ;
               Нашел:=False ;
               while Нашел=False do
                 begin
                    if  StringGrid_Диограм.Cells[1,jj]='кривые'  then
                        begin

                          //THackGrid(StringGrid_Диограм).DeleteRow(i); //Удаление  строки, к примеру
                          // SGDeleteRow(StringGrid_Диограм, i);
                          //Form6.Chart1.Series[Round(strtofloat(StringGrid_Диограм.Cells[0,jj]))-1].Destroy;
                            Form6.Chart1.Series[jj-1].Destroy;
                          TStrGrid(StringGrid_Диограм).DeleteRow(jj); //удаляем вторую строку
                          //Form6.Chart1.Series[jj].Destroy;
                          Нашел:=True ;
                        end;
                    if  jj=StringGrid_Диограм.RowCount- 1 then
                        begin
                          Нашел:=True ;
                        end;
                  jj :=jj+1 ;
                 end;
           end;
end;



procedure TForm1.Button5Click(Sender: TObject);
begin
 //Form6.Chart1.Series[0].Destroy;
 Form6.Chart1.Series[Round(strtofloat(StringGrid_Диограм.Cells[0,2]))].Destroy;  //отчет с  нуля
end;

//Внести в список
procedure TForm1.Button6Click(Sender: TObject);
  var
  i, dubl: Integer;
begin
  ListBox1.Items.Insert(ListBox1.Items.Count, Edit_Pр0.Text);
  //ListBox1.Items.Add(Edit_Pр0.Text);
  //Удаление повтора
  i := 0;
  while (i < ListBox1.Items.Count) do
  begin
    dubl := i+1;
    while (dubl < ListBox1.Items.Count) do
    begin
      if (ListBox1.Items[i] = ListBox1.Items[dubl]) then
        ListBox1.Items.Delete(dubl)
      else
        Inc(dubl);
    end;
   Inc(i); /////////
  end;

  ListBox1.TopIndex:=ListBox1.Items.Count-1;
end;

//Отчистить список
procedure TForm1.Button7Click(Sender: TObject);
begin
  ListBox1.Clear;
end;

//Удалить выделеные значения
procedure TForm1.Button8Click(Sender: TObject);
begin
ListBox1.DeleteSelected;
end;

//<<<<<<<<<Edit количество СА>>>>>>>>>>


//<<<<<<<<<Создание формы>>>>>>>>>>
procedure TForm1.FormCreate(Sender: TObject);
begin
Application.ShowMainForm:=False;
Пересчет:=True ;
iiii:=1;
КоличествоКомпонентов:=Form1.componentCount ;
Panel44.Top:=Edit_φр1соп.Top ;
Panel45.Top:=Edit_φкс.Top ;
Panel46.Top:=Edit_φдиф.Top ;
Panel47.Top:=Edit_φи2соп.Top ;
Panel45.left:=Panel44.left ;
Panel46.left:=Panel44.left ;
Panel47.left:=Panel44.left ;
OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);

//Размер массива
//SetLength(My_Array,1000,1000000,18);
end;

//<<<<<<<<<Прорисовка формы>>>>>>>>>>
procedure TForm1.FormShow(Sender: TObject);
begin
Form6.Chart1.View3D:=False;   //2D график
Form6.Chart1.BottomAxis.Automatic:=True; // Отключение автоматического определения параметров нижней оси
//Form6.Chart1.BottomAxis.minimum:= -1;  //Мин значение по оси Х
//Form6.Chart1.BottomAxis.maximum:= 2.5;  //Мах значение по оси Х
Form6.Chart1.LeftAxis.Automatic:=True; // Отключение автоматического определения параметров нижней оси
//Form6.Chart1.LeftAxis.minimum:= 0;  //Мин значение по оси Х
//Form6.Chart1.LeftAxis.maximum:= 7000;  //Мах значение по оси Х

   Form2.StringGrid_Раб.DefaultRowHeight:=Form2.StringGrid_Ин.DefaultRowHeight;
   i:=0; //строка
   j:=1; //столбец
   Form2.StringGrid_Раб.Cells[j,i]:='Название';  i:=i+1;
   Form2.StringGrid_Раб.Cells[j,i]:='Воздух';  i:=i+1;
   i:=0; //строка
   j:=j+1;  //столбец
   Form2.StringGrid_Раб.Cells[j,i]:='Массовая доля';  i:=i+1;
   Form2.StringGrid_Раб.Cells[j,i]:='1';  i:=i+1;
   i:=0; //строка
   j:=j+1;  //столбец
   Form2.StringGrid_Раб.Cells[j,i]:='Cp [кДж/(кг*К)]';  i:=i+1;
   Form2.StringGrid_Раб.Cells[j,i]:='1,0095';  i:=i+1;
   i:=0; //строка
   j:=j+1;  //столбец
   Form2.StringGrid_Раб.Cells[j,i]:='μ [а. е. м.]';  i:=i+1;
   Form2.StringGrid_Раб.Cells[j,i]:='28,96';  i:=i+1;

   //Подпишем таблицу
   i:=0; //строка
   j:=1; //столбец
   Form2.StringGrid_Ин.Cells[j,i]:='Название';  i:=i+1;
   Form2.StringGrid_Ин.Cells[j,i]:='Воздух';  i:=i+1;
   i:=0; //строка
   j:=j+1;  //столбец
   Form2.StringGrid_Ин.Cells[j,i]:='Массовая доля';  i:=i+1;
   Form2.StringGrid_Ин.Cells[j,i]:='1';  i:=i+1;
   i:=0; //строка
   j:=j+1;  //столбец
   Form2.StringGrid_Ин.Cells[j,i]:='Cp [кДж/(кг*К)]';  i:=i+1;
   Form2.StringGrid_Ин.Cells[j,i]:='1,0095';  i:=i+1;
   i:=0; //строка
   j:=j+1;  //столбец
   Form2.StringGrid_Ин.Cells[j,i]:='μ [а. е. м.]';  i:=i+1;
   Form2.StringGrid_Ин.Cells[j,i]:='28,96';  i:=i+1;

   Form2.StringGrid1.Cells[1,0]:='Водяной пар';
   Form2.StringGrid1.Cells[2,0]:='';
   Form2.StringGrid1.Cells[3,0]:='2,044';
   Form2.StringGrid1.Cells[4,0]:='18,01528';
   Form2.StringGrid2.Cells[1,0]:='Водяной пар';
   Form2.StringGrid2.Cells[2,0]:='';
   Form2.StringGrid2.Cells[3,0]:='2,010';
   Form2.StringGrid2.Cells[4,0]:='18,01528';

   Panel12.Top:=Edit_Pр0.Top-1 ;
   Panel43.Top:=Edit_dкс.Top-1 ;
//RadioGroup1_Зад2.Action;
if RadioGroup1.ItemIndex=0 then
      begin
          Button6.Visible:=False ;
          Button7.Visible:=False ;
          Button8.Visible:=False ;
          ListBox1.Visible:=False ;
          Panel12.Visible:=False ;
          Edit_Pр0.Visible:=True ;
      end;
if RadioGroup1.ItemIndex=1 then
      begin
          Button6.Visible:=False ;
          Button7.Visible:=False ;
          Button8.Visible:=False ;
          ListBox1.Visible:=False ;
          Panel12.Visible:=True ;
          Edit_Pр0.Visible:=False ;
      end;
if RadioGroup1.ItemIndex=2 then
      begin
          Button6.Visible:=True ;
          Button7.Visible:=True ;
          Button8.Visible:=True ;
          ListBox1.Visible:=True ;
          Edit_Pр0.Visible:=True ;
          Panel12.Visible:=False ;
      end;

if RadioGroup1_Зад2.ItemIndex=0 then
      begin
          Button6_Зад2.Visible:=False ;
          Button7_Зад2.Visible:=False ;
          Button8_Зад2.Visible:=False ;
          ListBox1_Зад2.Visible:=False ;
          Panel12_Зад2.Visible:=False ;
          Edit_Зад2_dp.Visible:=True ;
          Label2_Зад2.Visible:=False ;
      end;
if RadioGroup1_Зад2.ItemIndex=1 then
      begin
          Button6_Зад2.Visible:=False ;
          Button7_Зад2.Visible:=False ;
          Button8_Зад2.Visible:=False ;
          ListBox1_Зад2.Visible:=False ;
          Panel12_Зад2.Visible:=True ;
          Edit_Зад2_dp.Visible:=False ;
          Label2_Зад2.Visible:=False ;
      end;
if RadioGroup1_Зад2.ItemIndex=2 then
      begin
          Button6_Зад2.Visible:=True ;
          Button7_Зад2.Visible:=True ;
          Button8_Зад2.Visible:=True ;
          ListBox1_Зад2.Visible:=True ;
          Edit_Зад2_dp.Visible:=True ;
          Panel12_Зад2.Visible:=False ;
          Label2_Зад2.Visible:=True ;
      end;
if RadioGroup1_Зад3.ItemIndex=0 then
      begin
          Button6_Зад3.Visible:=False ;
          Button7_Зад3.Visible:=False ;
          Button8_Зад3.Visible:=False ;
          ListBox1_Зад3.Visible:=False ;
          Panel12_Зад3.Visible:=False ;
          Edit_Зад3_dp.Visible:=True ;
          Label2_Зад3.Visible:=False ;
      end;
if RadioGroup1_Зад3.ItemIndex=1 then
      begin
          Button6_Зад3.Visible:=False ;
          Button7_Зад3.Visible:=False ;
          Button8_Зад3.Visible:=False ;
          ListBox1_Зад3.Visible:=False ;
          Panel12_Зад3.Visible:=True ;
          Edit_Зад3_dp.Visible:=False ;
          Label2_Зад3.Visible:=False ;
      end;
if RadioGroup1_Зад3.ItemIndex=2 then
      begin
          Button6_Зад3.Visible:=True ;
          Button7_Зад3.Visible:=True ;
          Button8_Зад3.Visible:=True ;
          ListBox1_Зад3.Visible:=True ;
          Edit_Зад3_dp.Visible:=True ;
          Panel12_Зад3.Visible:=False ;
          Label2_Зад3.Visible:=True ;
      end;

if RadioGroup3.ItemIndex=0 then
      begin
          Panel43.Visible:=False ;
          Edit_dкс.Visible:=True ;
      end;
if RadioGroup3.ItemIndex=1 then
      begin
          Panel43.Visible:=True ;
          Edit_dкс.Visible:=False ;
      end;
if CheckBox_φдиф.Checked=True then
    begin
      Edit_φдиф.Visible:=False;
      Panel47.Visible:=True;
    end;
if CheckBox_φдиф.Checked=False then
    begin
      Edit_φдиф.Visible:=True;
      Panel47.Visible:=False;
    end;
if CheckBox_φи2соп.Checked=True then
    begin
      Edit_φи2соп.Visible:=False;
      Panel46.Visible:=True;
    end;
if CheckBox_φи2соп.Checked=False then
    begin
      Edit_φи2соп.Visible:=True;
      Panel46.Visible:=False;
    end;if CheckBox_φкс.Checked=True then
    begin
      Edit_φкс.Visible:=False;
      Panel45.Visible:=True;
    end;
if CheckBox_φкс.Checked=False then
    begin
      Edit_φкс.Visible:=True;
      Panel45.Visible:=False;
    end;
if CheckBox_φр1соп.Checked=True then
    begin
      Edit_φр1соп.Visible:=False;
      Panel44.Visible:=True;
    end;
if CheckBox_φр1соп.Checked=False then
    begin
      Edit_φр1соп.Visible:=True;
      Panel44.Visible:=False;
    end;
  edit4_Width:=edit4.Width  ;
  edit4_Height:=edit4.Height ;
  if CheckBox5.Checked=True then
   begin
    Label52.Visible:=False;
    Panel13.Visible:=False;
    Label188.Visible:=False;
    edit4.Width:=0;
    edit4.Height:=0;
    edit4.Enabled:=False;
   end;
  if CheckBox5.Checked=False then
   begin
    Label52.Visible:=True;
    Panel13.Visible:=True;
    Label188.Visible:=True;
    edit4.Width:=edit4_Width;
    edit4.Height:=edit4_Height;
    edit4.Enabled:=True;
   end;
//-----------  График -----------
Form6.Chart1.View3D:=False;   //2D график
Form6.Chart1.BottomAxis.Automatic:=True; // Отключение автоматического определения параметров нижней оси
//Form6.Chart1.BottomAxis.minimum:= -1;  //Мин значение по оси Х
//Form6.Chart1.BottomAxis.maximum:= 2.5;  //Мах значение по оси Х
Form6.Chart1.LeftAxis.Automatic:=True; // Отключение автоматического определения параметров нижней оси
//Form6.Chart1.LeftAxis.minimum:= 0;  //Мин значение по оси Х
//Form6.Chart1.LeftAxis.maximum:= 7000;  //Мах значение по оси Х
Form7.CheckBox1.Caption:='';
//скрываем элименты
Form6.CheckBox_Для_параметров_графика.Checked:=False ;
Form6.CheckBox_Для_параметров_графика.Height:=0 ;
Form6.CheckBox_Для_параметров_графика.Width:=0 ;
Memo1.Height:=0 ;
Memo1.Width:=0 ;

Form8.StringGrid2.Height:=0 ;
Form8.StringGrid2.Width:=0 ;
Form8.StringGrid2.Top:=0 ;
Form8.StringGrid2.Left:=0 ;

//Таблиц графиков
StringGrid_Диограм.Cells[0,0]:='№'     ;
StringGrid_Диограм.Cells[1,0]:='назван'     ;
StringGrid_Диограм.Cells[2,0]:='График'     ;
StringGrid_Диограм.Cells[3,0]:='Табл'     ;
StringGrid_Диограм.ColWidths[2]:=100;
StringGrid_Диограм.ColWidths[3]:=100;

StringGrid_Диограм.Height:=0 ;
StringGrid_Диограм.Width:=0 ;
StringGrid_Диограм.Top:=0 ;
StringGrid_Диограм.Left:=0 ;

ListBox1.ScrollWidth ;
Label2.Visible:=False ;
Высота_Переключ_стр:=Form1.ClientWidth-TabSheet_Зад1.Height ;
Ширена_Переключ_стр:=Form1.ClientWidth-TabSheet_Зад1.Width ;
PageControl1.Height:=Panel18.Height+Panel18.top+Высота_Переключ_стр ;
PageControl1.Width:=Panel1.Left+Panel1.Width+2+Ширена_Переключ_стр ;
{
//Одинаковоер асположение элименов
Выравнивание_Label(Label1,Label1_Зад2);
Выравнивание_Label(Label23,Label23_Зад2);
Выравнивание_Label(Label15,Label15_Зад2);
Выравнивание_Label(Label16,Label16_Зад2);
Выравнивание_Label(Label17,Label17_Зад2);
//Выравнивание_Label(Label2,Label2_Зад2);
Выравнивание_Label(Label21,Label21_Зад2);
Выравнивание_Label(Label23,Label23_Зад2);
Выравнивание_Label(Label25,Label25_Зад2);
Выравнивание_Label(Label28,Label28_Зад2);
Выравнивание_Label(Label29,Label29_Зад2);
Выравнивание_Label(Label36,Label36_Зад2);
Выравнивание_Label(Label37,Label37_Зад2);
Выравнивание_Label(Label40,Label40_Зад2);
Выравнивание_Label(Label41,Label41_Зад2);
//Выравнивание_Label(Label46,Label46_Зад2);
//Выравнивание_Label(Label47,Label47_Зад2);
Выравнивание_Label(Label53,Label53_Зад2);
Выравнивание_Label(Label54,Label54_Зад2);
Выравнивание_Label(Label60,Label60_Зад2);
Выравнивание_Edit(Edit_Tр0,Edit_Зад2_Tр0);
Выравнивание_Edit(Edit_Tи0,Edit_Зад2_Ти0);
Выравнивание_Edit(Edit_ζр,Edit_Зад2_ζр);
Выравнивание_Edit(Edit_ζи,Edit_Зад2_ζи);
Выравнивание_Edit(Edit_dр1,Edit_Зад2_Рсм4);
Выравнивание_Edit(Edit_dкс,Edit_Зад2_Ри0);
Выравнивание_Edit(Edit_Pатм,Edit_Зад2_Ратм);
//Выравнивание_Edit(Edit_Pи0,Edit_Зад2_Gp);
Выравнивание_Edit(Edit_U_от,Edit_Зад2_U_от);
Выравнивание_Edit(Edit_U_до,Edit_Зад2_U_до);
Выравнивание_Edit(Edit_U_шаг,Edit_Зад2_U_шаг);
//Выравнивание_Edit(Edit_Pр0,Edit_Зад2_dp);
//Выравнивание_Edit(Edit_Pр0_от,Edit_Зад2_dp_от);
//Выравнивание_Edit(Edit_Pр0_до,Edit_Зад2_dp_до);
//Выравнивание_Edit(Edit_Pр0_шаг,Edit_Зад2_dp_шаг);
Выравнивание_Edit(Edit_φр1соп,Edit_Зад2_φр1соп);
Выравнивание_Edit(Edit_φкс,Edit_Зад2_φкс);
Выравнивание_Edit(Edit_φдиф,Edit_Зад2_φдиф);
Выравнивание_Edit(Edit_φи2соп,Edit_Зад2_φи2соп);
}
Выравнивание_Button(Button_Расчет,Button_Расчет_Зад2);
Выравнивание_Button(Button11,Button11_Зад2);
Выравнивание_Button(Button2,Button2_Зад2);
Выравнивание_Button(Button3,Button3_Зад2);
//Выравнивание_Button(Button6,Button6_Зад2);
//Выравнивание_Button(Button7,Button7_Зад2);
//Выравнивание_Button(Button8,Button8_Зад2);
Выравнивание_CheckBox(CheckBox2,CheckBox2_Зад2);
Выравнивание_Panel(Panel1,Panel1_Зад2);
Выравнивание_Panel(Panel6,Panel6_Зад2);
Выравнивание_Panel(Panel5,Panel5_Зад2);
Выравнивание_Panel(Panel7,Panel7_Зад2);
Выравнивание_Panel(Panel8,Panel8_Зад2);
Выравнивание_Panel(Panel9,Panel9_Зад2);
Выравнивание_Panel(Panel10,Panel10_Зад2);
Выравнивание_Panel(Panel14,Panel14_Зад2);
//Выравнивание_Panel(Panel3,Panel3_Зад2);
//Выравнивание_Panel(Panel11,Panel11_Зад2);
//Выравнивание_Panel(Panel18,Panel18_Зад2);
//Выравнивание_Panel(Panel13,Panel13_Зад2);
//Выравнивание_Panel(Panel12,Panel12_Зад2);
//Выравнивание_ListBox(ListBox1,ListBox1_Зад2);

Panel12_Зад2.Top:=Edit_Зад2_dp.Top ;

Колич_Подгон_φ:=0 ;
if CheckBox_φр1соп.Checked=True then
  Колич_Подгон_φ:=Колич_Подгон_φ+1;
if CheckBox_φкс.Checked=True then
  Колич_Подгон_φ:=Колич_Подгон_φ+1;
if CheckBox_φдиф.Checked=True then
  Колич_Подгон_φ:=Колич_Подгон_φ+1;
if CheckBox_φи2соп.Checked=True then
  Колич_Подгон_φ:=Колич_Подгон_φ+1;

if Колич_Подгон_φ>1 then
    begin
      Label176.Visible:=True;
      Edit2.Visible:=True;
    end
  else
    begin
      Label176.Visible:=False;
      Edit2.Visible:=False;
    end;

end;

procedure TForm1.Panel1Click(Sender: TObject);
begin

end;

//<<<<<<<<<Рассчитать>>>>>>>>>>
procedure TForm1.Button_РасчетClick(Sender: TObject);
var
  nn, mm : Integer;
  n,i,j,sm,jmx,mx,jjjj,iiii:integer;
  s:string;
  t:textfile;
  U_наибольшее,U_наименьшее,Рсм4_наибольшее,Рсм4_наименьшее:integer;
  FirstLine: string;
begin
StTime:=Now;  //   начальные условия (Время начала расчета)
  //снимаем время до выхода из цикла
  s_тайм:=MaskEdit1.Text;
  //Считаем миллисекунды
  m_тайм:=StrToInt(Trim(Copy(s_тайм,Pos('.',s_тайм)+1,Length(s_тайм)-Pos('.',s_тайм))));
  s_тайм:=Copy(s_тайм,1,Pos('.',s_тайм)-1); //Убираем из строки миллисекунды
  t_тайм:=StrToTime('00:'+s_тайм); //Добавляем часы
  t_тайм:=RecodeMilliSecond(t_тайм,m_тайм); //Добавляем миллисекунды
  //Выдали полученное время в Label
  Время_до_выхода:=t_тайм;

//Timer1.Interval:=strToInt(Edit4.Text)*1000;    //онимаем время с ограничителя
//sec:=strToInt(Edit4.Text);
//if   Timer1.Interval<>0 then
//    Timer1.Enabled:=True ;  //запускаем таймер

//чекет удаления предыдущего результата
Form1.CheckBox1.Enabled:=True;
Form1.CheckBox2.Enabled:=True;
Form1.CheckBox2_Зад2.Enabled:=True;
Form6.CheckBox2.Enabled:=True;
//Если список пуст то выход
if (RadioGroup1.ItemIndex=2) and (ListBox1.Count=0) then  Exit ;

//Чистка таб от расчета  если стаит галка
  if CheckBox2.Checked=True then
    begin
     AAAA:=0;
     i_поиск:= 0  ;
     j_поиск:= 0  ;
     jj_номер_Табл:= 0  ;
     for i_поиск := 1 to StringGrid_Диограм.RowCount- 1 do
           begin
               j_поиск :=1 ;
               Нашел:=False ;
               while Нашел=False do
                 begin
                    if  StringGrid_Диограм.Cells[1,j_поиск]='кривые'  then
                        begin
                          Form6.Chart1.Series[j_поиск-1].Destroy;
                          TStrGrid(StringGrid_Диограм).DeleteRow(j_поиск); //удаляем вторую строку
                          Form6.ListBox1.Items.Delete(j_поиск-1) ;
                          Нашел:=True ;
                        end;
                    if  j_поиск=StringGrid_Диограм.RowCount- 1 then
                        begin
                          Нашел:=True ;
                        end;
                  j_поиск :=j_поиск+1 ;
                 end;
           end;
     for III := КоличествоКомпонентов+Form6.RadioGroup1.Items.Count-1  downto КоличествоКомпонентов do
       begin
         if ((Form1.Components[III]).ClassType=TStringGrid)  then
         begin
        //Имя:=(Form1.Components[III] as TStringGrid).name ;
        (Form1.Components[III] as TStringGrid).Parent := nil ;       //  ;
        (Form1.Components[III] as TStringGrid).Free ;
         end;
      end;

     Form6.RadioGroup1.ItemIndex := -1;
     Form6.RadioGroup1.Items.Clear ;

    end;


//Вносим коэф скорость на Форму 6
Пересчет:=False ;
Form6.Edit1.Text:=Edit_φр1соп.Text ;
Form6.Edit2.Text:=Edit_φдиф.Text ;
Form6.Edit3.Text:=Edit_φкс.Text ;
Form6.Edit4.Text:=Edit_φи2соп.Text ;
Пересчет:=True ;
//Снимаем исходные данные
  d↓кс:=strtofloat(Edit_dкс.Text);          //[мм] Диаметр камеры смешениимя (цилиндрической)
  d↓кс_от:=strtofloat(Edit_dкс_от.Text);
  d↓кс_до:=strtofloat(Edit_dкс_до.Text);
  d↓кс_шаг:=strtofloat(Edit_dкс_шаг.Text);
  d↓р1:=strtofloat(Edit_dр1.Text);
  φ↓р1↑соп:=strtofloat(Edit_φр1соп.Text);      //0,985
  φ↓диф:=strtofloat(Edit_φдиф.text);         //0,96
  φ↓кс:=strtofloat(Edit_φкс.text);          //0,96
  φ↓и2↑соп:=strtofloat(Edit_φи2соп.text);      //0,9      !!невлияет!!
  P↓атм:=strtofloat(Edit_Pатм.Text);
  P↓р0:=strtofloat(Edit_Pр0.Text);
  P↓р0_от:=strtofloat(Edit_Pр0_от.Text);
  P↓р0_до:=strtofloat(Edit_Pр0_до.Text);
  P↓р0_шаг:=strtofloat(Edit_Pр0_шаг.Text);
  P↓и0:=strtofloat(Edit_Pи0.Text);
  T↓р0↑⁰:=strtofloat(Edit_Tр0.Text);
  T↓и0↑⁰:=strtofloat(Edit_Tи0.Text);
  ζ↓р:=strtofloat(Edit_ζр.Text);
  ζ↓и:=strtofloat(Edit_ζи.Text);
  //U:=strtofloat(Edit_U.Text);
  U_от:=strtofloat(Edit_U_от.Text);
  U_до:=strtofloat(Edit_U_до.Text);
  U_шаг:=strtofloat(Edit_U_шаг.Text);

  φ↓р1↑соп_от:=strtofloat(Edit_от_φр1соп.Text);
  φ↓р1↑соп_до:=strtofloat(Edit_до_φр1соп.Text);
  φ↓кс_от:=strtofloat(Edit_от_φкс.Text);
  φ↓кс_до:=strtofloat(Edit_до_φкс.Text);
  φ↓и2↑соп_от:=strtofloat(Edit_от_φи2соп.Text);
  φ↓и2↑соп_до:=strtofloat(Edit_до_φи2соп.Text);
  φ↓диф_от:=strtofloat(Edit_от_φдиф.Text);
  φ↓диф_до:=strtofloat(Edit_до_φдиф.Text);


  Выход_по_P↓см:=strtofloat(Edit4.Text);

  //(((Перевести в систему СИ)))
//  if d↓р1_текст<>'кр' then d↓р1:=d↓р1/1000 ;  //[мм] Диаметр выходного сечения рабочего сопла
  d↓р1:=d↓р1/1000 ;                        //[мм] Диаметр выходного сечения рабочего сопла
  d↓кс:=d↓кс/1000 ;            //[м]      //Диаметр камеры смешениимя (цилиндрической)
  d↓кс_от:=d↓кс_от/1000 ;
  d↓кс_до:=d↓кс_до/1000 ;
  d↓кс_шаг:=d↓кс_шаг/1000 ;
  P↓р0:=P↓р0*Power(10,3) ; //[Па]     //Давление рабочего потока
  P↓и0:=P↓и0*Power(10,3) ;   //[Па]     //Давление инжектируемого потока
  P↓атм:=P↓атм*Power(10,3) ;   //[Па]
  P↓р0_от:=P↓р0_от*Power(10,3) ;   //[Па]
  P↓р0_до:=P↓р0_до*Power(10,3) ;    //[Па]
  P↓р0_шаг:=P↓р0_шаг*Power(10,3) ;   //[Па]
  T↓р0↑⁰:=T↓р0↑⁰+273.15 ;//[K]      //Температура торможения рабочего газа
  T↓и0↑⁰:=T↓и0↑⁰+273.15 ;  //[K]      //Температура торможения инжектируемого газа
  ζ↓р := ζ↓р/100;
  ζ↓и := ζ↓и/100  ;

  T↓р0:=T↓р0↑⁰ ;
  T↓и0:=T↓и0↑⁰ ;
  P↓р0:=P↓р0+P↓атм           ;
  P↓и0:=P↓и0+P↓атм           ;
  P↓р0_от:=P↓р0_от+P↓атм        ;
  P↓р0_до:=P↓р0_до+P↓атм        ;
  //P↓р0_шаг:=P↓р0_шаг+P↓атм       ;



//1) Удельная теплоемкость смеси рабочего потока Cp˄Iраб
Cp↑рГаз:=0 ;
Cp↑иГаз:=0 ;
R↓р:=0 ;
R↓и:=0 ;
μ↓р:=0 ;
μ↓и:=0 ;

for  i:= 1 to Form2.StringGrid_Раб.RowCount-1 do
  begin
    if (Form2.StringGrid_Раб.Cells[1,i]<>'') and (Form2.StringGrid_Раб.Cells[1,i]<>'___') then
      begin
        //1) Удельная теплоемкость смеси рабочего  потока Cp↑рГаз
        Cp↑рГаз:=Cp↑рГаз+strtofloat(Form2.StringGrid_Раб.Cells[2,i])*strtofloat(Form2.StringGrid_Раб.Cells[3,i]) ;
        //2)	Газовая постоянная рабочего
       // R↓рГаз:=R↓р+strtofloat(Form2.StringGrid_Раб.Cells[2,i])*strtofloat(Form2.StringGrid_Раб.Cells[4,i]) ;
        //3)	Массовая доля рабочего
        μ↓р:=μ↓р+strtofloat(Form2.StringGrid_Раб.Cells[2,i])*strtofloat(Form2.StringGrid_Раб.Cells[4,i]) ;
      end;
  end;
 Cp↑рГаз:=Cp↑рГаз*1000;  //в СИ

for  i:= 1 to Form2.StringGrid_Ин.RowCount-1 do
  begin
    if (Form2.StringGrid_Ин.Cells[1,i]<>'') and (Form2.StringGrid_Ин.Cells[1,i]<>'___') then
     begin
         //1) Удельная теплоемкость смеси инжектируемого  потока Cp↑иГаз
        Cp↑иГаз:=Cp↑иГаз+strtofloat(Form2.StringGrid_Ин.Cells[2,i])*strtofloat(Form2.StringGrid_Ин.Cells[3,i]) ;
        //2)	Газовая постоянная рабочего
       // R↓иГаз:=R↓и+strtofloat(Form2.StringGrid_Ин.Cells[2,i])*strtofloat(Form2.StringGrid_Ин.Cells[4,i]) ;
        //3)	Массовая доля рабочего
        μ↓и:=μ↓и+strtofloat(Form2.StringGrid_Ин.Cells[2,i])*strtofloat(Form2.StringGrid_Ин.Cells[4,i]) ;
     end;
  end;
 Cp↑иГаз:=Cp↑иГаз*1000; //в СИ

	T↓р0:=T↓р0↑⁰	; //(1.4)
  T↓и0:=T↓и0↑⁰ ;

  μ↓и_пар:=strtofloat(Form2.StringGrid1.Cells[4,0])	;//(1.6)
	μ↓р_пар:=strtofloat(Form2.StringGrid2.Cells[4,0])	;//(1.6)
  Cp↑рПар:=strtofloat(Form2.StringGrid1.Cells[3,0])	;//(1.6)
  Cp↑иПар:=strtofloat(Form2.StringGrid2.Cells[3,0])	;//(1.6)
  Cp↑рПар:=Cp↑рПар*1000 ;
  Cp↑иПар:=Cp↑иПар*1000 ;


i_цикл:=0 ;

if RadioGroup3.ItemIndex=1 then
    d↓кс:=d↓кс_от ;

d↓кс_Цикл:=False ;

While (d↓кс_Цикл=False) Do
   begin  //While (d↓кс_Цикл=False) Do
//+===+===+===+Прогон по Рсм4+===+===+====+=====+=====+====+====+===+===+===+===+===
      if RadioGroup3.ItemIndex=0 then
            d↓кс_Цикл:=True ;

      //-----------  График -----------
      //Form6.Chart1.View3D:=False;   //2D график
      //Form6.Chart1.BottomAxis.Automatic:=True; // Отключение автоматического определения параметров нижней оси
      //Form6.Chart1.BottomAxis.minimum:= -1;  //Мин значение по оси Х
      //Form6.Chart1.BottomAxis.maximum:= 2.5;  //Мах значение по оси Х
      //Form6.Chart1.LeftAxis.Automatic:=True; // Отключение автоматического определения параметров нижней оси
      //Form6.Chart1.LeftAxis.minimum:= 0;  //Мин значение по оси Х
      //Form6.Chart1.LeftAxis.maximum:= 7000;  //Мах значение по оси Х
      P↓р0Номер:=0 ;

      P↓р0_Цикл:=False ;
      I_список:=0 ;

      if RadioGroup1.ItemIndex=1 then
         begin
           P↓р0:=P↓р0_от ;  //для цикла
           P’↓p0:= 0;  //для цикла
           P↓р0Номер:=1;
         end
        else
         begin
           P↓р0Номер:=0 ;
           P↓р0_от := 0;
           P↓р0_до := 0;
           P↓р0_шаг  := 0;
         end;

      While (P↓р0_Цикл=False) Do
           begin    //While (P↓р0_Цикл=False) Do
             Цикл_Р0;
             U:=U_от ;     //начальное значение
             U:=U-U_шаг ;
  if CheckBox5.Checked=False then  //диапозон U
      begin
         Создание_графика_Расчет;
         i_строка:=0; //обнуляем индекс номера строки для табл результатов
         Нумирация:=0;
         While U<U_до Do
           begin    //While U=U_до Do
              U:=U+U_шаг ;
              if (U>-power(10,-18)) and (U<power(10,-18)) then U:=U+U_шаг ;
              if U=-1 then U:=U+U_шаг*0.1 ;     //тогда расход смеси равен 0 (дельть на ноль не льзя)


             try
               ЦИКЛ_по_U;
             except

             end;

           if   RadioGroup2.ItemIndex=0  then   //с диффузором
               if (P↓см4-P↓и0)<=Выход_по_P↓см*1000 then U:=U_до ;
           if   RadioGroup2.ItemIndex=1  then   //без диффузором
               if (P↓см3-P↓и0)<=Выход_по_P↓см*1000 then U:=U_до ;
          end;   //While U=U_до Do
        (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).RowCount:=(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).RowCount-1 ;
     end;


  if (CheckBox5.Checked=True) and
  ((CheckBox_φр1соп.Checked=False) and (CheckBox_φкс.Checked=False) and
  (CheckBox_φдиф.Checked=False)  and (CheckBox_φи2соп.Checked=False))  then
    begin   //if (CheckBox5.Checked=True) and
           for j_U := 0 to Form8.StringGrid1.ColCount - 1 do   //столбец   ищем столбцы с потписью   'точечный'
             if  Form8.StringGrid1.Cells[j_U,0]='точечный' then
               begin  //if  Form8.StringGrid1.Cells[j_U,0]='точечный' then
               //  Timer1.Enabled:=False;
               //  Timer1.Enabled:=True ;
                 if j_U>1 then
                       StTime:=Now;  //   начальные условия (Время начала расчета)

                 Создание_графика_Расчет;
                 for i_U := 2 to Form8.StringGrid1.RowCount - 1 do  //строка
                    begin ///прогоняем расчет Рсм по всем U
                        try U:=strtofloat(Form8.StringGrid1.Cells[j_U-1,i_U]);
                        if U>0 then
                            ЦИКЛ_по_U;
                        except
                        end;
                    end;  ///прогоняем расчет Рсм по всем U
                 (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).RowCount:=(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).RowCount-1 ;
                 Считаем_СКО ;
                 //вписываем СКО
                 (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, 1] :=FloatToStr(RoundSignificant(∑ΔP↓см,10));       i_столбец:=i_столбец+1;

                               //Среднеквадротичное отклон расч. от эксп.
                                СКО_эксп_от_расч:=sqrt(∑ΔP↓см/(Число_точек-1)) ;
                               //сумма для дисперсии эксп точек
                                  jjjj:=0;
                                  //строк_расч_табл:=(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).RowCount;
                                   строк_расч_табл:=0; //обнуление
                                   ∑ΔP↓см_Эксп:=0; //обнуление
                                   P↓см_Эксп_табл:=0 ;
                                   //∑P↓см_Эксп_табл:=0 ;
                                   for jjjj:=0 to Form8.StringGrid1.RowCount-1 do //по строкам
                                   try
                                     begin
                                        if strtofloat(Form8.StringGrid1.Cells[j_U-1,jjjj])>0 then
                                            begin
                                               P↓см_Эксп_табл:=strtofloat(Form8.StringGrid1.Cells[j_U,jjjj]);
                                               СА_эксп:=∑P↓см_Эксп_табл/Число_точек ;
                                               ∑ΔP↓см_Эксп:=∑ΔP↓см_Эксп+sqr(P↓см_Эксп_табл-СА_эксп);
                                            end;
                                        if strtofloat(Form8.StringGrid1.Cells[j_U-1,jjjj])<=0 then
                                            строк_расч_табл:=строк_расч_табл+1;
                                     end;
                                   except
                                     //begin
                                       //∑ΔP↓см:=0; //борьба с гльком дейфи. он не заходил в "эксепт"
                                     //end;
                                   end;
                                //дисперсия эксп точек
                                ДИСП_эксп:=sqrt(∑ΔP↓см_Эксп/(Число_точек-1)) ;
                                //индекс корреляции
                                Корреляция:=sqrt(1-sqr(СКО_эксп_от_расч/ДИСП_эксп)) ;
                               //вписываем
                               (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, 1] :=FloatToStr(RoundSignificant(ДИСП_эксп,10));       i_столбец:=i_столбец+1;
                               (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, 1] :=FloatToStr(RoundSignificant(СКО_эксп_от_расч,10));       i_столбец:=i_столбец+1;
                               (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, 1] :=FloatToStr(RoundSignificant(Корреляция,10));       i_столбец:=i_столбец+1;

               end;  //if  Form8.StringGrid1.Cells[j_U,0]='точечный' then


    end;   //if (CheckBox5.Checked=True) and

  if (CheckBox5.Checked=True) and
  ((CheckBox_φр1соп.Checked=True) or (CheckBox_φкс.Checked=True) or
  (CheckBox_φдиф.Checked=True)  or (CheckBox_φи2соп.Checked=True)) then  //  список U по экстерименту
     begin  //if CheckBox5.Checked=True then  список U по экстерименту
           for j_U := 0 to Form8.StringGrid1.ColCount - 1 do   //столбец   ищем столбцы с потписью   'точечный'
             if  Form8.StringGrid1.Cells[j_U,0]='точечный' then
               begin  //if  Form8.StringGrid1.Cells[j_U,0]='точечный' then
               //  Timer1.Enabled:=False;
               //  Timer1.Enabled:=True ;
                 if j_U>1 then
                       StTime:=Now;  //   начальные условия (Время начала расчета)

                 Создание_графика_Расчет;

                 //∑ΔP↓см3_БольшойЦикл_1:=0;
                 //∑ΔP↓см3_БольшойЦикл_2:=0;

                 φ↓и2↑соп_БольшойЦикл_1:=0;
                 φ↓и2↑соп_БольшойЦикл_2:=0;
                 φ↓кс_БольшойЦикл_1:=0;
                 φ↓кс_БольшойЦикл_2:=0;
                 φ↓диф_БольшойЦикл_1:=0;
                 φ↓диф_БольшойЦикл_2:=0;
                 φ↓р1↑соп_БольшойЦикл_1:=0;
                 φ↓р1↑соп_БольшойЦикл_2:=0;

                 Точность_БольшойЦикл:=StrToFloat(Edit2.Text) ;
                 ∑ΔP↓см3_БольшойЦикл_логик:=False ;
                 while ∑ΔP↓см3_БольшойЦикл_логик=False  do
                   begin //while ∑ΔP↓см3_БольшойЦикл_логик=False
                      ∑ΔP↓см3_БольшойЦикл_1:=∑ΔP↓см3_БольшойЦикл_2 ;
                      φ↓р1↑соп_БольшойЦикл_1:=φ↓р1↑соп_БольшойЦикл_2;
                      φ↓и2↑соп_БольшойЦикл_1:=φ↓и2↑соп_БольшойЦикл_2;
                      φ↓кс_БольшойЦикл_1:=φ↓кс_БольшойЦикл_2;
                      φ↓диф_БольшойЦикл_1:=φ↓диф_БольшойЦикл_2;

                      Колич_Подгон_φ:=0;
                      for i_БольшойЦикл := 0 to 3 do
                         begin  //for i_БольшойЦикл := 1 to 3 do
                           //если подгон по Фи не включон пропускаем его (тем самым снижаем количество циклов)
                           case i_БольшойЦикл of
                               0:   if CheckBox_φр1соп.Checked=False then  continue  else Колич_Подгон_φ:=Колич_Подгон_φ+1;
                               1:   if CheckBox_φи2соп.Checked=False then  continue  else Колич_Подгон_φ:=Колич_Подгон_φ+1;
                               2:   if CheckBox_φкс.Checked=False    then  continue  else Колич_Подгон_φ:=Колич_Подгон_φ+1;
                               3:   if CheckBox_φдиф.Checked=False   then  continue  else Колич_Подгон_φ:=Колич_Подгон_φ+1;
                           end;
                           case i_БольшойЦикл of
                               0: CheckBox_БольшойЦикл:=CheckBox_φр1соп.Checked ;
                               1: CheckBox_БольшойЦикл:=CheckBox_φи2соп.Checked ;
                               2: CheckBox_БольшойЦикл:=CheckBox_φкс.Checked ;
                               3: CheckBox_БольшойЦикл:=CheckBox_φдиф.Checked ;
                           end;

                           case i_БольшойЦикл of
                               0: begin
                                    φ_БольшойЦикл_от:= φ↓р1↑соп_от ;
                                    φ_БольшойЦикл_до:= φ↓р1↑соп_до ;
                                  end;
                               1: begin
                                    φ_БольшойЦикл_от:= φ↓и2↑соп_от ;
                                    φ_БольшойЦикл_до:= φ↓и2↑соп_до ;
                                  end;
                               2: begin
                                    φ_БольшойЦикл_от:= φ↓кс_от ;
                                    φ_БольшойЦикл_до:= φ↓кс_до ;
                                  end;
                               3: begin
                                    φ_БольшойЦикл_от:= φ↓диф_от ;
                                    φ_БольшойЦикл_до:= φ↓диф_до ;
                                  end;
                           end; //case i_БольшойЦикл of

        {False}            if CheckBox_БольшойЦикл=False then  //НЕ подгон-ем коэфф  φи2соп
                              begin  //if CheckBox_БольшойЦикл=False then
                                 //прогоняем расчет Рсм по всем U
                                 i_строка:=0; //обнуляем индекс номера строки для табл результатов
                                 Нумирация:=0;
                                 for i_U := 2 to Form8.StringGrid1.RowCount - 1 do  //строка
                                    begin ///прогоняем расчет Рсм по всем U
                                       try U:=strtofloat(Form8.StringGrid1.Cells[j_U-1,i_U]);
                                          if U>0 then
                                                    ЦИКЛ_по_U;
                                       except
                                       end;
                                   end;  ///прогоняем расчет Рсм по всем U

                                 Считаем_СКО ;

                              end;  //if CheckBox_БольшойЦикл=False then

        {True}             if CheckBox_БольшойЦикл=True then   //подгон-ем коэфф  φи2соп
                             begin  //if CheckBox_БольшойЦикл=True then
                           case i_БольшойЦикл of
                               0: Точность_Золот:=StrToFloat(Edit_точн_φр1соп.Text) ;
                               1: Точность_Золот:=StrToFloat(Edit_точн_φи2соп.Text) ;
                               2: Точность_Золот:=StrToFloat(Edit_точн_φкс.Text) ;
                               3: Точность_Золот:=StrToFloat(Edit_точн_φдиф.Text) ;
                           end;
                               //Точность_Золот:=power(10,-18) ;
                               a_Золот:=φ_БольшойЦикл_от ;
                               b_Золот:=φ_БольшойЦикл_до ;
                               φ_Золот_Логик:=False ;
                               ∑ΔP↓см_Золот_1:=0 ;
                               ∑ΔP↓см_Золот_2:=0 ;
                               х_Золот1:=0 ;
                               х_Золот2:=0 ;
                               ∑ΔP↓см:=0 ;//обнулить
                               строк_расч_табл:=0 ;//обнулить
                               ПропЗолСеч:=(1+Sqrt(5))/2 ;
                              while φ_Золот_Логик=False do
                                 for i_золт := 1 to 2 do
                                   begin //φ_Золот_Логик=False do
                                     case i_золт of
                                      1:
                                        begin
                                           х_Золот1:= b_Золот-(b_Золот-a_Золот)/ПропЗолСеч ;
                                          // Form6.show;
                                           //Form6.Chart1.Update;
                                           Form6.Chart1.SeriesList[Form6.Chart1.SeriesCount-1].Clear;   //Form6.Chart1.SeriesList[2]
                                           case i_БольшойЦикл of
                                             0: φ↓р1↑соп:=х_Золот1;
                                             1: φ↓и2↑соп:=х_Золот1;
                                             2: φ↓кс:=х_Золот1 ;
                                             3: φ↓диф:=х_Золот1 ;
                                           end;
                                        end;
                                      2:
                                        begin
                                           х_Золот2:= a_Золот+(b_Золот-a_Золот)/ПропЗолСеч ;
                                           ////Form6.show;
                                         //  Form6.Chart1.Update;
                                           Form6.Chart1.SeriesList[Form6.Chart1.SeriesCount-1].Clear;   //Form6.Chart1.SeriesList[2]
                                           case i_БольшойЦикл of
                                             0: φ↓р1↑соп:=х_Золот2;
                                             1: φ↓и2↑соп:=х_Золот2;
                                             2: φ↓кс:=х_Золот2 ;
                                             3: φ↓диф:=х_Золот2 ;
                                           end;
                                        end;
                                     end;
                                       i_строка:=0; //обнуляем индекс номера строки для табл результатов
                                       Нумирация:=0;
                                       for i_U := 2 to Form8.StringGrid1.RowCount - 1 do  //строка
                                          begin ///прогоняем расчет Рсм по всем U
                                             try U:=strtofloat(Form8.StringGrid1.Cells[j_U-1,i_U]);
                                                if U>0 then
                                                   begin
                                                      if i_БольшойЦикл=0 then
                                                          Цикл_Р0;
                                                      ЦИКЛ_по_U;
                                                   end;
                                             except
                                             end;
                                         end;  ///прогоняем расчет Рсм по всем U

                                       //считаем СКО
                                     //  Form6.show;
                                     //  Form6.WindowState:=wsMaximized;
                                    //   Form6.PageControl1.ActivePageIndex:=1;
                                     //  Form6.Update;
                                     //  Form6.Repaint;
                                       //строк_расч_табл:=(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).RowCount;
                                       Считаем_СКО;

                                     case i_золт of
                                      1:∑ΔP↓см_Золот_1:=∑ΔP↓см ;     //∑ΔP↓см_Золот_1-∑ΔP↓см_Золот_2
                                      2:∑ΔP↓см_Золот_2:=∑ΔP↓см  ;
                                     end;
                                     if i_золт=2 then
                                        begin
                                           if ∑ΔP↓см_Золот_1>=∑ΔP↓см_Золот_2  then
                                               a_Золот:=х_Золот1
                                           else b_Золот:=х_Золот2;
                                        end;
                                     if i_золт=2 then
                                        begin  //if i_золт=2 then
                                           if abs(b_Золот-a_Золот)<Точность_Золот  then
                                                begin   //if (abs(b_Золот-a_Золот)<Точность_Золот)  then
                                                    φ_Золот_Логик:=True ;
                                                    case i_БольшойЦикл of
                                                      0: φ↓р1↑соп:=(a_Золот+b_Золот)/2;
                                                      1: φ↓и2↑соп:=(a_Золот+b_Золот)/2;
                                                      2: φ↓кс:=(a_Золот+b_Золот)/2 ;
                                                      3: φ↓диф:=(a_Золот+b_Золот)/2 ;
                                                    end;
                                                    i_строка:=0; //обнуляем индекс номера строки для табл результатов
                                                    Нумирация:=0;
                                                    for i_U := 2 to Form8.StringGrid1.RowCount - 1 do  //строка
                                                       begin ///прогоняем расчет Рсм по всем U
                                                          try U:=strtofloat(Form8.StringGrid1.Cells[j_U-1,i_U]);
                                                             if U>0 then
                                                                 begin
                                                                   if i_БольшойЦикл=0 then
                                                                       Цикл_Р0;
                                                                   ЦИКЛ_по_U;
                                                                 end;
                                                          except
                                                          end;
                                                      end;  ///прогоняем расчет Рсм по всем U

                                                    Считаем_СКО;

                                                 end;  //if (abs(b_Золот-a_Золот)<Точность_Золот)  then
                                        end; //if i_золт=2 then
                                 end; //while φ_Золот_Логик=False do

                              end;  //if CheckBox_БольшойЦикл=True then


                           ∑ΔP↓см3_БольшойЦикл_2:=∑ΔP↓см ;
                           case i_БольшойЦикл of
                               0: φ↓р1↑соп_БольшойЦикл_2:=φ↓р1↑соп ;
                               1: φ↓и2↑соп_БольшойЦикл_2:=φ↓и2↑соп ;
                               2: φ↓кс_БольшойЦикл_2:=φ↓кс ;
                               3: φ↓диф_БольшойЦикл_2:=φ↓диф ;
                           end;
                           ∑ΔP↓см_Золот_1:=0 ;//обнулит  !!!не удалять!!! нужна для обеспечения лишнего дабавления строк в табл расчета
                                  //FormatDateTime('hh:nn:ss', тест)
                         end;  //for i_БольшойЦикл := 1 to 3 do
                             if Колич_Подгон_φ=1 then  //если подгоняем только один φ то после первого прогона выходим
                                ∑ΔP↓см3_БольшойЦикл_логик:=True ;
                          //   if (abs(∑ΔP↓см3_БольшойЦикл_1-∑ΔP↓см3_БольшойЦикл_2)<=Точность_БольшойЦикл) or (∑ΔP↓см3_БольшойЦикл_1-∑ΔP↓см3_БольшойЦикл_2=0) then
                          //      ∑ΔP↓см3_БольшойЦикл_логик:=True ;

                            // Edit3.Text:=FormatDateTime('hh:nn:ss', тест); //Время расчета
                             //Edit3.update;
                             //Edit3.Repaint;
                             //Edit3.refresh ;
                             //self.Repaint;
                             //Form1.refresh ;

                             //Edit3.update;
                             //Form1.update;
                             тест:=Now-StTime ; //тест>Время_до_выхода
                             if ((abs(φ↓р1↑соп_БольшойЦикл_1-φ↓р1↑соп_БольшойЦикл_2)<=Точность_БольшойЦикл) and
                                (abs(φ↓и2↑соп_БольшойЦикл_1-φ↓и2↑соп_БольшойЦикл_2)<=Точность_БольшойЦикл) and
                                (abs(φ↓кс_БольшойЦикл_1-φ↓кс_БольшойЦикл_2)<=Точность_БольшойЦикл) and
                                (abs(φ↓диф_БольшойЦикл_1-φ↓диф_БольшойЦикл_2)<=Точность_БольшойЦикл))
                               // or (Timer1.Enabled=False) then
                                or (Now-StTime>Время_до_выхода) then
                                //    then
                                    ∑ΔP↓см3_БольшойЦикл_логик:=True ;
                      end; //while ∑ΔP↓см3_БольшойЦикл_логик=False





                        //вписываем СКО
                        (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, 1] :=FloatToStr(RoundSignificant(∑ΔP↓см,10));       i_столбец:=i_столбец+1;

                               //Среднеквадротичное отклон расч. от эксп.
                                СКО_эксп_от_расч:=sqrt(∑ΔP↓см/(Число_точек-1)) ;
                               //сумма для дисперсии эксп точек
                                  jjjj:=0;
                                  //строк_расч_табл:=(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).RowCount;
                                   строк_расч_табл:=0; //обнуление
                                   ∑ΔP↓см_Эксп:=0; //обнуление
                                   P↓см_Эксп_табл:=0 ;
                                   //∑P↓см_Эксп_табл:=0 ;
                                   for jjjj:=0 to Form8.StringGrid1.RowCount-1 do //по строкам
                                   try
                                     begin
                                        if strtofloat(Form8.StringGrid1.Cells[j_U-1,jjjj])>0 then
                                            begin
                                               P↓см_Эксп_табл:=strtofloat(Form8.StringGrid1.Cells[j_U,jjjj]);
                                               СА_эксп:=∑P↓см_Эксп_табл/Число_точек ;
                                               ∑ΔP↓см_Эксп:=∑ΔP↓см_Эксп+sqr(P↓см_Эксп_табл-СА_эксп);
                                            end;
                                        if strtofloat(Form8.StringGrid1.Cells[j_U-1,jjjj])<=0 then
                                            строк_расч_табл:=строк_расч_табл+1;
                                     end;
                                   except
                                     //begin
                                       //∑ΔP↓см:=0; //борьба с гльком дейфи. он не заходил в "эксепт"
                                     //end;
                                   end;
                                //дисперсия эксп точек
                                ДИСП_эксп:=sqrt(∑ΔP↓см_Эксп/(Число_точек-1)) ;
                                //индекс корреляции
                                Корреляция:=sqrt(1-sqr(СКО_эксп_от_расч/ДИСП_эксп)) ;
                               //вписываем
                               (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, 1] :=FloatToStr(RoundSignificant(ДИСП_эксп,10));       i_столбец:=i_столбец+1;
                               (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, 1] :=FloatToStr(RoundSignificant(СКО_эксп_от_расч,10));       i_столбец:=i_столбец+1;
                               (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, 1] :=FloatToStr(RoundSignificant(Корреляция,10));       i_столбец:=i_столбец+1;


                         //автоширена колонок
                         //StringGrid_шир_колон_результ(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid);
                         //меняем название кривой везде где она упоминается ЕСЛИ хоть один чекет подгонки включон
                         if (CheckBox_φр1соп.Checked=True) or (CheckBox_φкс.Checked=True) or (CheckBox_φдиф.Checked=True)
                         or (CheckBox_φи2соп.Checked=True) then
                            begin                                                                                                                                                                                                                                                                                                                                                             //FloatToStr(RoundSignificant(φ↓р1↑соп,StrToInt  (Copy(Edit2.Text, Length(Edit2.Text)-2, Length(Edit2.Text)))   ))+
                               jj:=StringGrid_Диограм.RowCount-1 ;
                               if CheckBox5.Checked=False then  //  НЕ снимаем со списока U по экстерименту
                                     begin
                                         StringGrid_Диограм.Cells[2,jj]:='Pр0='+FloatToStr((P↓р0-P↓атм)/1000)+'кПа  '+'Tр0='+FloatToStr(T↓р0-273.15)+'oC  '+'Tи0='+FloatToStr(T↓и0-273.15)+'oC  '+'ζр='+FloatToStr(ζ↓р*100)+'%  '+'ζи='+FloatToStr(ζ↓и*100)+'%  '+'dр1='+FloatToStr(d↓р1*100)+'мм  '+'Pатм='+FloatToStr(P↓атм/1000)+'кПа  '+'Pи0='+FloatToStr((P↓и0-P↓атм)/1000)+'кПа  '+'dкс='+FloatToStr(d↓кс*1000)+'мм  '+'φр1соп='+FloatToStr(φ↓р1↑соп)+'  '+'φкс='+FloatToStr(φ↓кс)+'  '+'φдиф='+FloatToStr(φ↓диф)+'  '+'φи2соп='+FloatToStr(φ↓и2↑соп)+'  ' ;
                                         for О_Н := 0 to StringGrid_Диограм.RowCount - 2 do
                                          if StringGrid_Диограм.Cells[2,О_Н]='Pр0='+FloatToStr((P↓р0-P↓атм)/1000)+'кПа  '+'Tр0='+FloatToStr(T↓р0-273.15)+'oC  '+'Tи0='+FloatToStr(T↓и0-273.15)+'oC  '+'ζр='+FloatToStr(ζ↓р*100)+'%  '+'ζи='+FloatToStr(ζ↓и*100)+'%  '+'dр1='+FloatToStr(d↓р1*100)+'мм  '+'Pатм='+FloatToStr(P↓атм/1000)+'кПа  '+'Pи0='+FloatToStr((P↓и0-P↓атм)/1000)+'кПа  '+'dкс='+FloatToStr(d↓кс*1000)+'мм  '+'φр1соп='+FloatToStr(φ↓р1↑соп)+'  '+'φкс='+FloatToStr(φ↓кс)+'  '+'φдиф='+FloatToStr(φ↓диф)+'  '+'φи2соп='+FloatToStr(φ↓и2↑соп)+'  '     then
                                            begin
                                              StringGrid_Диограм.Cells[2,jj]:=FloatToStr(№Одинак_Назван+1)+') '+'Pр0='+FloatToStr((P↓р0-P↓атм)/1000)+'кПа  '+'Tр0='+FloatToStr(T↓р0-273.15)+'oC  '+'Tи0='+FloatToStr(T↓и0-273.15)+'oC  '+'ζр='+FloatToStr(ζ↓р*100)+'%  '+'ζи='+FloatToStr(ζ↓и*100)+'%  '+'dр1='+FloatToStr(d↓р1*100)+'мм  '+'Pатм='+FloatToStr(P↓атм/1000)+'кПа  '+'Pи0='+FloatToStr((P↓и0-P↓атм)/1000)+'кПа  '+'dкс='+FloatToStr(d↓кс*1000)+'мм  '+'φр1соп='+FloatToStr(φ↓р1↑соп)+'  '+'φкс='+FloatToStr(φ↓кс)+'  '+'φдиф='+FloatToStr(φ↓диф)+'  '+'φи2соп='+FloatToStr(φ↓и2↑соп)+'  '      ;
                                              №Одинак_Назван:=№Одинак_Назван+1 ;
                                            end;
                                     end
                                 else     //снимаем со списока U по экстерименту
                                    begin
                                         StringGrid_Диограм.Cells[2,jj]:=Form8.StringGrid1.Cells[j_U-1,0]+' '+'|'+' '+'Pр0='+FloatToStr((P↓р0-P↓атм)/1000)+'кПа  '+'Tр0='+FloatToStr(T↓р0-273.15)+'oC  '+'Tи0='+FloatToStr(T↓и0-273.15)+'oC  '+'ζр='+FloatToStr(ζ↓р*100)+'%  '+'ζи='+FloatToStr(ζ↓и*100)+'%  '+'dр1='+FloatToStr(d↓р1*100)+'мм  '+'Pатм='+FloatToStr(P↓атм/1000)+'кПа  '+'Pи0='+FloatToStr((P↓и0-P↓атм)/1000)+'кПа  '+'dкс='+FloatToStr(d↓кс*1000)+'мм  '+'φр1соп='+FloatToStr(φ↓р1↑соп)+'  '+'φкс='+FloatToStr(φ↓кс)+'  '+'φдиф='+FloatToStr(φ↓диф)+'  '+'φи2соп='+FloatToStr(φ↓и2↑соп)+'  ' ;
                                         for О_Н := 0 to StringGrid_Диограм.RowCount - 2 do
                                          if StringGrid_Диограм.Cells[2,О_Н]=Form8.StringGrid1.Cells[j_U-1,0]+' '+'|'+' '+'Pр0='+FloatToStr((P↓р0-P↓атм)/1000)+'кПа  '+'Tр0='+FloatToStr(T↓р0-273.15)+'oC  '+'Tи0='+FloatToStr(T↓и0-273.15)+'oC  '+'ζр='+FloatToStr(ζ↓р*100)+'%  '+'ζи='+FloatToStr(ζ↓и*100)+'%  '+'dр1='+FloatToStr(d↓р1*100)+'мм  '+'Pатм='+FloatToStr(P↓атм/1000)+'кПа  '+'Pи0='+FloatToStr((P↓и0-P↓атм)/1000)+'кПа  '+'dкс='+FloatToStr(d↓кс*1000)+'мм  '+'φр1соп='+FloatToStr(φ↓р1↑соп)+'  '+'φкс='+FloatToStr(φ↓кс)+'  '+'φдиф='+FloatToStr(φ↓диф)+'  '+'φи2соп='+FloatToStr(φ↓и2↑соп)+'  '     then
                                            begin
                                              StringGrid_Диограм.Cells[2,jj]:=FloatToStr(№Одинак_Назван+1)+') '+Form8.StringGrid1.Cells[j_U-1,0]+' '+'|'+' '+'Pр0='+FloatToStr((P↓р0-P↓атм)/1000)+'кПа  '+'Tр0='+FloatToStr(T↓р0-273.15)+'oC  '+'Tи0='+FloatToStr(T↓и0-273.15)+'oC  '+'ζр='+FloatToStr(ζ↓р*100)+'%  '+'ζи='+FloatToStr(ζ↓и*100)+'%  '+'dр1='+FloatToStr(d↓р1*100)+'мм  '+'Pатм='+FloatToStr(P↓атм/1000)+'кПа  '+'Pи0='+FloatToStr((P↓и0-P↓атм)/1000)+'кПа  '+'dкс='+FloatToStr(d↓кс*1000)+'мм  '+'φр1соп='+FloatToStr(φ↓р1↑соп)+'  '+'φкс='+FloatToStr(φ↓кс)+'  '+'φдиф='+FloatToStr(φ↓диф)+'  '+'φи2соп='+FloatToStr(φ↓и2↑соп)+'  '      ;
                                              №Одинак_Назван:=№Одинак_Назван+1 ;
                                            end;
                                    end;
                               Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].Title:=StringGrid_Диограм.Cells[2,jj];
                               (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[1, 1] :=StringGrid_Диограм.Cells[2,jj];
                               Form6.ListBox1.Items[Form6.ListBox1.Items.Count-1]:=StringGrid_Диограм.Cells[2,jj];
                               Form6.radiogroup1.Items[Form6.radiogroup1.Items.Count-1]:=StringGrid_Диограм.Cells[2,jj];
                               // Form6.ListBox1.Items[ListBox1.ItemIndex]:=;
                               //удаляем последнюю строку у созданой таблицы  !!!  !!!  !!! должнабыть в конце цикла "if  Form8.StringGrid1.Cells[j_U,0]='точечный' then"
                              (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).RowCount:=(FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).RowCount-1 ;

                            end;
                         тест:=Now-StTime ; //тест>Время_до_выхода
                         Form1.update;
                         Edit3.Text:=FormatDateTime('hh:nn:ss', тест); //Время расчета
                         Edit3.update;
                         Form6.Memo1.Lines.Add(Form8.StringGrid1.Cells[j_U-1,0]+'	'+FormatDateTime('hh:nn:ss', тест)+'	'+FloatToStr(φ↓р1↑соп)+'	'+FloatToStr(φ↓и2↑соп)+'	'+FloatToStr(φ↓кс)+'	'+ FloatToStr(φ↓диф)+'	'+ FloatToStr(∑ΔP↓см)+'	'+ FloatToStr(abs(φ↓р1↑соп_БольшойЦикл_1-φ↓р1↑соп_БольшойЦикл_2))+'	'+ FloatToStr(abs(φ↓и2↑соп_БольшойЦикл_1-φ↓и2↑соп_БольшойЦикл_2))+'	'+ FloatToStr(abs(φ↓кс_БольшойЦикл_1-φ↓кс_БольшойЦикл_2))+'	'+ FloatToStr(∑ΔP↓см3_БольшойЦикл_1-∑ΔP↓см3_БольшойЦикл_2)+'	'+FloatToStr(ДИСП_эксп)+'	'+FloatToStr(СКО_эксп_от_расч)+'	'+FloatToStr(Корреляция) );
                        // Memo1.update;

               end;  //if  Form8.StringGrid1.Cells[j_U,0]='точечный' then  (столбец   ищем столбцы с потписью   'точечный')



     end; // if CheckBox5.Checked=True then  (список U по экстерименту)


//----------------Цикл (U=U_до)----------------------------------------------------------------------




//Делаем активной последнюю таблицу результатов
Form6.radiogroup1.itemindex:=Form6.radiogroup1.Items.Count-1;

 // Выход в заввисемости от вида расчета
    if RadioGroup1.ItemIndex=0 then   P↓р0_Цикл:=True ;
    if (RadioGroup1.ItemIndex=1) and  ((P↓р0-P↓атм)>=(P↓р0_до-P↓атм))  then   P↓р0_Цикл:=True ;
    if (RadioGroup1.ItemIndex=1) and (P’↓p0<>0)     then   P↓р0:=P↓р0+P↓р0_шаг ;
end;   //While (P↓р0_Цикл=False) Do
   d↓кс:=d↓кс+d↓кс_шаг ;
   if d↓кс> d↓кс_до then
       d↓кс_Цикл:=True ;
end;  //While (d↓кс_Цикл=False) Do

if  Form7.Visible= True then
    begin
  if Form7.CheckBox1.Checked=True then
     begin
       Form6.Chart1.BottomAxis.Automatic:=True  ;
       Form7.EditMaxH.Enabled:=False ;
       Form7.EditMinН.Enabled:=False ;
       Form7.EditЦДН.Enabled:=False ;
       Form6.Chart1.Update;
       Form7.EditMinН.text:=floattostr(RoundSignificant(Form6.Chart1.BottomAxis.minimum,4))  ;
       Form7.EditMaxH.text:=floattostr(RoundSignificant(Form6.Chart1.BottomAxis.maximum,4))  ;
       Form7.EditЦДН.text:=floattostr(RoundSignificant(Form6.Chart1.BottomAxis.Increment,4)) ;
     end;
  if Form7.CheckBox2.Checked=True then
     begin
       Form6.Chart1.LeftAxis.Automatic:=True  ;
       Form7.EditMaxЛ.Enabled:=false ;
       Form7.EditMinЛ.Enabled:=false ;
       Form7.EditЦДЛ.Enabled:=false ;
       Form6.Chart1.Update;
       Form7.EditMinЛ.text:=floattostr(RoundSignificant(Form6.Chart1.LeftAxis.minimum,4))  ;
       Form7.EditMaxЛ.text:=floattostr(RoundSignificant(Form6.Chart1.LeftAxis.maximum,4))  ;
       Form7.EditЦДЛ.text:=floattostr(RoundSignificant(Form6.Chart1.LeftAxis.Increment,4))  ;
     end;
    end;

//Edit3.Text:=FormatDateTime('hh:nn:ss:zzz', Now-StTime); //Время расчета Вар2
Edit3.Text:=FormatDateTime('hh:nn:ss', Now-StTime); //Время расчета Вар2

Form1.FormStyle:=fsStayOnTop;//делает окно поверх всех окон всегда
Form1.FormStyle:=fsNormal;//делает окно в нормальном режыме но в связке с предыдущим окно останетса поверх
Form6.Show ;

{
μ↓и_пар
μ↓р_пар
Cp↑рПар
Cp↑иПар
P’↓p0
P↓р0↑пар
rr↓р0↑Газ
rr↓р0↑пар
m↓р0↑Газ
m↓р0↑пар
R↓р
υ↓р0
Cp↑р0
k↓р0
ω↓р1↑кр
ω↓р1
ω↓р1↑дейст
f↓р1
G↓р*3600
T↓р1
G↓р0↑Газ*3600
G↓р0↑пар*3600
rr↓р1↑пар
P’↓р1
P↓р1↑пар
ζ↓р1
Cp↑р1
G↓р1↑пар*3600
G↓р1↑Газ*3600
G↓р1↑влага*3600
m↓р1↑влага
Cp↑рВлага
Cp↑смВлага
rr↓р1↑Газ
m↓р1↑пар
m↓р1↑Газ
P’↓и0
P↓и0↑пар
rr↓и↑Газ
rr↓и↑пар
m↓и↑Газ
m↓и↑пар
R↓и
Cp↑и
k↓и
υ↓и0
f↓кс
f↓р2
f↓и2
U_шаг
U_до
U_от
U
G↓и*3600
G↓и0↑Газ*3600
G↓и0↑пар*3600
G↓см*3600
G↓и2↑кр*3600
P↓и2↑кр
P↓и2
G↓и_цикл*3600
P↓и2Шаг№
P↓и2Шаг1
P↓и2Шаг2
P↓и2
ω↓и2
T↓и2
m↓см↑Газ
m↓см↑пар
m↓см↑влага
Cp↑см
rr↓см↑пар
rr↓см↑Газ
rr↓см↑влага
R↓см
Cp↑см
R↓см
T↓см4
k↓см
P↓см4↑кр
P↓см4
P↓см4
P↓см3
P↓см4↑пар
T↓см4
P’↓см4
ζ↓см4
υ↓см4
P↓см3↑кр
P↓см3
ω↓см3
T↓см3
P↓р1
P↓см3↑нов
P↓см4↑нов
λ↓р1↑дейст
}
//ΔP↓р3…1 не забыть


end;



procedure TForm1.Edit_Зад3_GpChange(Sender: TObject);
begin
try
 P↓р0:=strtofloat(Edit_Зад3_Pр0.Text);  //кПа
 φ↓р1↑соп:=strtofloat(Edit_Зад3_φр1соп.Text);      //0,985
 ζ↓р:=strtofloat(Edit_Зад3_ζр.Text);      //%
 G↓р:=strtofloat(Edit_Зад3_Gp.Text);      //4.1179207121;//4.86  G↓р*3600	2,2790884254       ;
 P↓атм:=strtofloat(Edit_Зад3_Ратм.Text);  //кПа
 T↓р0↑⁰:=strtofloat(Edit_Зад3_Tр0.Text);  //↑⁰С
  P↓атм:=P↓атм*Power(10,3) ;   //[Па]
  P↓р0:=P↓р0*Power(10,3) ; //[Па]     //Давление рабочего потока
  T↓р0:=T↓р0↑⁰ ;        //T↓р0-273.15
  P↓р0:=P↓р0+P↓атм           ;

  T↓р0:=T↓р0↑⁰+273.15 ;//[K]      //Температура торможения рабочего газа
  ζ↓р := ζ↓р/100;
  G↓р:=G↓р/3600        ;  //кг/c           G↓р*3600
Cp↑рГаз:=0 ;
Cp↑иГаз:=0 ;
R↓р:=0 ;
R↓и:=0 ;
μ↓р:=0 ;
μ↓и:=0 ;

for  i:= 1 to Form2.StringGrid_Раб.RowCount-1 do
  begin
    if (Form2.StringGrid_Раб.Cells[1,i]<>'') and (Form2.StringGrid_Раб.Cells[1,i]<>'___') then
      begin
        //1) Удельная теплоемкость смеси рабочего  потока Cp↑рГаз
        Cp↑рГаз:=Cp↑рГаз+strtofloat(Form2.StringGrid_Раб.Cells[2,i])*strtofloat(Form2.StringGrid_Раб.Cells[3,i]) ;
        //2)	Газовая постоянная рабочего
       // R↓рГаз:=R↓р+strtofloat(Form2.StringGrid_Раб.Cells[2,i])*strtofloat(Form2.StringGrid_Раб.Cells[4,i]) ;
        //3)	Массовая доля рабочего
        μ↓р:=μ↓р+strtofloat(Form2.StringGrid_Раб.Cells[2,i])*strtofloat(Form2.StringGrid_Раб.Cells[4,i]) ;
      end;
  end;
 Cp↑рГаз:=Cp↑рГаз*1000;  //в СИ

for  i:= 1 to Form2.StringGrid_Ин.RowCount-1 do
  begin
    if (Form2.StringGrid_Ин.Cells[1,i]<>'') and (Form2.StringGrid_Ин.Cells[1,i]<>'___') then
     begin
         //1) Удельная теплоемкость смеси инжектируемого  потока Cp↑иГаз
        Cp↑иГаз:=Cp↑иГаз+strtofloat(Form2.StringGrid_Ин.Cells[2,i])*strtofloat(Form2.StringGrid_Ин.Cells[3,i]) ;
        //2)	Газовая постоянная рабочего
       // R↓иГаз:=R↓и+strtofloat(Form2.StringGrid_Ин.Cells[2,i])*strtofloat(Form2.StringGrid_Ин.Cells[4,i]) ;
        //3)	Массовая доля рабочего
        μ↓и:=μ↓и+strtofloat(Form2.StringGrid_Ин.Cells[2,i])*strtofloat(Form2.StringGrid_Ин.Cells[4,i]) ;
     end;
  end;
 Cp↑иГаз:=Cp↑иГаз*1000; //в СИ



 //	μ↓Газ:=28.96	;//(1.5)
  μ↓и_пар:=strtofloat(Form2.StringGrid1.Cells[4,0])	;//(1.6)
	μ↓р_пар:=strtofloat(Form2.StringGrid2.Cells[4,0])	;//(1.6)
  Cp↑рПар:=strtofloat(Form2.StringGrid1.Cells[3,0])	;//(1.6)
  Cp↑иПар:=strtofloat(Form2.StringGrid2.Cells[3,0])	;//(1.6)
  Cp↑рПар:=Cp↑рПар*1000 ;
  Cp↑иПар:=Cp↑иПар*1000 ;



    //Давление насыщения
     P’↓p0:=pul (5, 0, T↓р0-273.15)*1E6;     //(1.2) //T↓р0-273.15
      //Площаь рабочего сопла
    // f↓р1:=pi/4*Sqr(d↓р1)    ;  //d↓р1*1000
    // P↓р0:=P↓атм ;   //для цикла
    // P↓р0нов:=0 ;    //для цикла

     //Парциальное давление водяного пара
    // P↓р0нов:= P↓р0;

     P↓р0↑пар:=ζ↓р*P’↓p0  ;   //(1.3)
     //Объемная доля воздуха и воды
     rr↓р0↑Газ:=(P↓р0-P↓р0↑пар)/P↓р0   ;   //(1.4)
     rr↓р0↑пар:=1-rr↓р0↑Газ  ;   //(1.5)
     //Массовая доля воздуха и пара
     m↓р0↑Газ:=(rr↓р0↑Газ*μ↓р)/(rr↓р0↑Газ*μ↓р+rr↓р0↑пар*μ↓р_пар )  ;   //(1.6)
     m↓р0↑пар:=1-m↓р0↑Газ   ;   //(1.7)
     //Удельная газовая постоянная влажного воздуха
     R↓р:=8314/(rr↓р0↑Газ*μ↓р+rr↓р0↑пар*μ↓р_пар ); // (1.8)
     // Удельный объем рабочего потока перед СА, м3/кг
    // υ↓р0:= (R↓р * T↓р0) / P↓р0; // (1.9)
     // Теплоемкость
     Cp↑р0 := Cp↑рПар * m↓р0↑пар + Cp↑рГаз * m↓р0↑Газ; // (1.13)
     // Показатель адиабаты
     k↓р0 := Cp↑р0 / (Cp↑р0 - R↓р); // (1.14)
     //удельный объем рабочего потока
     υ↓р0:=(R↓р*T↓р0)/P↓р0;
     //Площадь критического сечения рабочего сопла
     f↓р1↑кр:=G↓р/(φ↓р1↑соп*Sqrt(2*k↓р0/(k↓р0+1)*P↓р0/υ↓р0* power(2/(k↓р0+1) ,2/(k↓р0-1))))  ;
     //	диаметр критического сечения рабочего сопла
     d↓р1↑кр:= Sqrt(4*f↓р1↑кр/pi)     ;     //d↓р1↑кр*1000
           //      floattostr(RoundSignificant(Sigma,5))
     Edit1.Text:=floattostr(RoundSignificant(d↓р1↑кр*1000,3)) ;  //кПа
finally

end;
end;



//Удаление предыдущих рузультатов расчета с графика
procedure TForm1.CheckBox2Click(Sender: TObject);
begin
   if CheckBox2.Checked=True then Form6.CheckBox2.Checked:=True ;
   if CheckBox2.Checked=False then Form6.CheckBox2.Checked:=False ;
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
  if CheckBox5.Checked=True then
   begin
    Label52.Visible:=False;
    Panel13.Visible:=False;
    Label188.Visible:=False;
    edit4.Width:=0;
    edit4.Height:=0;
    edit4.Enabled:=False;
   end;
  if CheckBox5.Checked=False then
   begin
    Label52.Visible:=True;
    Panel13.Visible:=True;
    Label188.Visible:=True;
    edit4.Width:=edit4_Width;
    edit4.Height:=edit4_Height;
    edit4.Enabled:=True;
   end;
end;

procedure TForm1.CheckBox_φдифClick(Sender: TObject);
begin
if CheckBox_φдиф.Checked=True then
    begin
      Edit_φдиф.Visible:=False;
      Panel46.Visible:=True;
      CheckBox5.Checked:=True ;
    end;
if CheckBox_φдиф.Checked=False then
    begin
      Edit_φдиф.Visible:=True;
      Panel46.Visible:=False;
    end;
if (CheckBox_φр1соп.Checked=False) and (CheckBox_φкс.Checked=False) and (CheckBox_φдиф.Checked=False)
and (CheckBox_φи2соп.Checked=False) then
   begin
     CheckBox5.Checked:=False ;
   end;

Колич_Подгон_φ:=0 ;
if CheckBox_φр1соп.Checked=True then
  Колич_Подгон_φ:=Колич_Подгон_φ+1;
if CheckBox_φкс.Checked=True then
  Колич_Подгон_φ:=Колич_Подгон_φ+1;
if CheckBox_φдиф.Checked=True then
  Колич_Подгон_φ:=Колич_Подгон_φ+1;
if CheckBox_φи2соп.Checked=True then
  Колич_Подгон_φ:=Колич_Подгон_φ+1;

if Колич_Подгон_φ>1 then
    begin
      Label176.Visible:=True;
      Edit2.Visible:=True;
    end
  else
    begin
      Label176.Visible:=False;
      Edit2.Visible:=False;
    end;
end;

procedure TForm1.CheckBox_φи2сопClick(Sender: TObject);
begin
if CheckBox_φи2соп.Checked=True then
    begin
      Edit_φи2соп.Visible:=False;
      Panel47.Visible:=True;
      CheckBox5.Checked:=True ;
    end;
if CheckBox_φи2соп.Checked=False then
    begin
      Edit_φи2соп.Visible:=True;
      Panel47.Visible:=False;
    end;
if (CheckBox_φр1соп.Checked=False) and (CheckBox_φкс.Checked=False) and (CheckBox_φдиф.Checked=False)
and (CheckBox_φи2соп.Checked=False) then
   begin
     CheckBox5.Checked:=False ;
   end;

Колич_Подгон_φ:=0 ;
if CheckBox_φр1соп.Checked=True then
  Колич_Подгон_φ:=Колич_Подгон_φ+1;
if CheckBox_φкс.Checked=True then
  Колич_Подгон_φ:=Колич_Подгон_φ+1;
if CheckBox_φдиф.Checked=True then
  Колич_Подгон_φ:=Колич_Подгон_φ+1;
if CheckBox_φи2соп.Checked=True then
  Колич_Подгон_φ:=Колич_Подгон_φ+1;

if Колич_Подгон_φ>1 then
    begin
      Label176.Visible:=True;
      Edit2.Visible:=True;
    end
  else
    begin
      Label176.Visible:=False;
      Edit2.Visible:=False;
    end;
end;

procedure TForm1.CheckBox_φксClick(Sender: TObject);
begin
if CheckBox_φкс.Checked=True then
    begin
      Edit_φкс.Visible:=False;
      Panel45.Visible:=True;
      CheckBox5.Checked:=True ;
    end;
if CheckBox_φкс.Checked=False then
    begin
      Edit_φкс.Visible:=True;
      Panel45.Visible:=False;
    end;
if (CheckBox_φр1соп.Checked=False) and (CheckBox_φкс.Checked=False) and (CheckBox_φдиф.Checked=False)
and (CheckBox_φи2соп.Checked=False) then
   begin
     CheckBox5.Checked:=False ;
   end;

Колич_Подгон_φ:=0 ;
if CheckBox_φр1соп.Checked=True then
  Колич_Подгон_φ:=Колич_Подгон_φ+1;
if CheckBox_φкс.Checked=True then
  Колич_Подгон_φ:=Колич_Подгон_φ+1;
if CheckBox_φдиф.Checked=True then
  Колич_Подгон_φ:=Колич_Подгон_φ+1;
if CheckBox_φи2соп.Checked=True then
  Колич_Подгон_φ:=Колич_Подгон_φ+1;

if Колич_Подгон_φ>1 then
    begin
      Label176.Visible:=True;
      Edit2.Visible:=True;
    end
  else
    begin
      Label176.Visible:=False;
      Edit2.Visible:=False;
    end;
end;

procedure TForm1.CheckBox_φр1сопClick(Sender: TObject);
begin
if CheckBox_φр1соп.Checked=True then
    begin
      Edit_φр1соп.Visible:=False;
      Panel44.Visible:=True;
      CheckBox5.Checked:=True ;
    end;
if CheckBox_φр1соп.Checked=False then
    begin
      Edit_φр1соп.Visible:=True;
      Panel44.Visible:=False;
    end;
if (CheckBox_φр1соп.Checked=False) and (CheckBox_φкс.Checked=False) and (CheckBox_φдиф.Checked=False)
and (CheckBox_φи2соп.Checked=False) then
   begin
     CheckBox5.Checked:=False ;
   end;

Колич_Подгон_φ:=0 ;
if CheckBox_φр1соп.Checked=True then
  Колич_Подгон_φ:=Колич_Подгон_φ+1;
if CheckBox_φкс.Checked=True then
  Колич_Подгон_φ:=Колич_Подгон_φ+1;
if CheckBox_φдиф.Checked=True then
  Колич_Подгон_φ:=Колич_Подгон_φ+1;
if CheckBox_φи2соп.Checked=True then
  Колич_Подгон_φ:=Колич_Подгон_φ+1;

if Колич_Подгон_φ>1 then
    begin
      Label176.Visible:=True;
      Edit2.Visible:=True;
    end
  else
    begin
      Label176.Visible:=False;
      Edit2.Visible:=False;
    end;
end;

procedure TForm1.Edit_dксKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
      '0'..'9', #8,#11,#37,#38,#39,#40,#3,#$16,#$1A: ;  //цифры и Backspace
      #1:  Edit_dкс.SelectAll;
     #13: Edit_Pатм.SetFocus;  //Enter переход на следующий эдит
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit_dкс.Text)<>0  then  Key:=#0  ;
        end;
      '-': if Edit_dкс.SelStart <>0 then   Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;

procedure TForm1.Edit_dр1KeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
      '0'..'9', #8,#11,#37,#38,#39,#40,#3,#$16,#$1A: ;  //цифры и Backspace
      #1:  Edit_dр1.SelectAll;
     #13: Edit_dкс.SetFocus;  //Enter переход на следующий эдит
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit_dр1.Text)<>0  then  Key:=#0  ;
        end;
      '-': if Edit_dр1.SelStart <>0 then   Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;

procedure TForm1.Edit_PатмKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
      '0'..'9', #8,#11,#37,#38,#39,#40,#3,#$16,#$1A: ;  //цифры и Backspace
       #1:  Edit_Pатм.SelectAll;
     #13: Edit_Pи0.SetFocus;  //Enter переход на следующий эдит
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit_Pатм.Text)<>0  then  Key:=#0  ;
        end;
      '-': if Edit_Pатм.SelStart <>0 then   Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;

procedure TForm1.Edit_Pи0KeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
      '0'..'9', #8,#11,#37,#38,#39,#40,#3,#$16,#$1A: ;  //цифры и Backspace
      #1:  Edit_Pи0.SelectAll;
     #13:
        begin
           if RadioGroup1.ItemIndex=0 then  Edit_Pр0.SetFocus   //Enter переход на следующий эдит
           else   Edit_Pр0_от.SetFocus;
        end;
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit_Pи0.Text)<>0  then  Key:=#0  ;
        end;
      '-': if Edit_Pи0.SelStart <>0 then   Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;

procedure TForm1.Edit_Pр0KeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
      '0'..'9', #8,#11,#37,#38,#39,#40,#3,#$16,#$1A: ;  //цифры и Backspace
     #13: Edit_U_от.SetFocus;  //Enter переход на следующий эдит
     #1:  Edit_Pр0.SelectAll;
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit_Pр0.Text)<>0  then  Key:=#0  ;
        end;
      '-': if Edit_Pр0.SelStart <>0 then   Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;

procedure TForm1.Edit_Pр0_доKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
      '0'..'9', #8,#11,#37,#38,#39,#40,#3,#$16,#$1A: ;  //цифры и Backspace
     #13: Edit_Pр0_шаг.SetFocus;  //Enter переход на следующий эдит
     #1:  Edit_Pр0_до.SelectAll;
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit_Pр0_до.Text)<>0  then  Key:=#0  ;
        end;
      '-': if Edit_Pр0_до.SelStart <>0 then   Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;

procedure TForm1.Edit_Pр0_отKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
      '0'..'9', #8,#11,#37,#38,#39,#40,#3,#$16,#$1A: ;  //цифры и Backspace
     #13: Edit_Pр0_до.SetFocus;  //Enter переход на следующий эдит
     #1:  Edit_Pр0_от.SelectAll;
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit_Pр0_от.Text)<>0  then  Key:=#0  ;
        end;
      '-': if Edit_Pр0_от.SelStart <>0 then   Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;

procedure TForm1.Edit_Pр0_шагKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
      '0'..'9', #8,#11,#37,#38,#39,#40,#3,#$16,#$1A: ;  //цифры и Backspace
     #13: Edit_U_от.SetFocus;  //Enter переход на следующий эдит
     #1:  Edit_Pр0_шаг.SelectAll;
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit_Pр0_шаг.Text)<>0  then  Key:=#0  ;
        end;
      '-': if Edit_Pр0_шаг.SelStart <>0 then   Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;

procedure TForm1.Edit_Tи0KeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
      '0'..'9', #8,#11,#37,#38,#39,#40,#3,#$16,#$1A: ;  //цифры и Backspace
     #13: Edit_ζр.SetFocus;  //Enter переход на следующий эдит
     #1:  Edit_Tи0.SelectAll;
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit_Tи0.Text)<>0  then  Key:=#0  ;
        end;
      '-': if Edit_Tи0.SelStart <>0 then   Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;

procedure TForm1.Edit_Tр0KeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
     '0'..'9', #8,#11,#37,#38,#39,#40,#3,#$16,#$1A: ;  //цифры и Backspace
     #13: Edit_Tи0.SetFocus;  //Enter переход на следующий эдит
     #1:  Edit_Tр0.SelectAll;
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit_Tр0.Text)<>0  then  Key:=#0  ;
        end;
      '-': if Edit_Tр0.SelStart <>0 then   Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;

procedure TForm1.Edit_U_доKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
      '0'..'9', #8,#11,#37,#38,#39,#40,#3,#$16,#$1A: ;  //цифры и Backspace
     #13: Edit_U_шаг.SetFocus;  //Enter переход на следующий эдит
      #1:  Edit_U_до.SelectAll;
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit_U_до.Text)<>0  then  Key:=#0  ;
        end;
      '-': if Edit_U_до.SelStart <>0 then   Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;

procedure TForm1.Edit_U_отKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
      '0'..'9', #8,#11,#37,#38,#39,#40,#3,#$16,#$1A: ;  //цифры и Backspace
     #13: Edit_U_до.SetFocus;  //Enter переход на следующий эдит
     #1:  Edit_U_от.SelectAll;
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit_U_от.Text)<>0  then  Key:=#0  ;
        end;
      '-': if Edit_U_от.SelStart <>0 then   Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;

procedure TForm1.Edit_U_шагKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
      '0'..'9', #8,#11,#37,#38,#39,#40,#3,#$16,#$1A: ;  //цифры и Backspace
     #13: Edit_φр1соп.SetFocus;  //Enter переход на следующий эдит
     #1:  Edit_U_шаг.SelectAll;
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit_U_шаг.Text)<>0  then  Key:=#0  ;
        end;
      '-': if Edit_U_шаг.SelStart <>0 then   Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;

procedure TForm1.Edit_ζиKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
      '0'..'9', #8,#11,#37,#38,#39,#40,#3,#$16,#$1A: ;  //цифры и Backspace
     #13: Edit_dр1.SetFocus;  //Enter переход на следующий эдит
      #1:  Edit_ζи.SelectAll;
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit_ζи.Text)<>0  then  Key:=#0  ;
        end;
      '-': if Edit_ζи.SelStart <>0 then   Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;

procedure TForm1.Edit_ζрKeyPress(Sender: TObject; var Key: Char);
begin
 case Key of
      '0'..'9', #8,#11,#37,#38,#39,#40,#3,#$16,#$1A: ;  //цифры и Backspace
     #13: Edit_ζи.SetFocus;  //Enter переход на следующий эдит
      #1:  Edit_ζр.SelectAll;
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit_ζр.Text)<>0  then  Key:=#0  ;
        end;
      '-': if Edit_ζр.SelStart <>0 then   Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;
procedure TForm1.Edit_φдифKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
      '0'..'9', #8,#11,#37,#38,#39,#40,#3,#$16,#$1A: ;  //цифры и Backspace
     #13: Edit_φи2соп.SetFocus;  //Enter переход на следующий эдит
      #1:  Edit_φдиф.SelectAll;
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit_φдиф.Text)<>0  then  Key:=#0  ;
        end;
      '-': if Edit_φдиф.SelStart <>0 then   Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;

procedure TForm1.Edit_φи2сопKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
      '0'..'9', #8,#11,#37,#38,#39,#40,#3,#$16,#$1A: ;  //цифры и Backspace
     #13: Edit_Tр0.SetFocus;  //Enter переход на следующий эдит
     #1:  Edit_φи2соп.SelectAll;
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit_φи2соп.Text)<>0  then  Key:=#0  ;
        end;
      '-': if Edit_φи2соп.SelStart <>0 then   Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;

procedure TForm1.Edit_φксKeyPress(Sender: TObject; var Key: Char);
var Shift: TShiftState;
begin
  case Key of
      '0'..'9', #8,#11,#37,#38,#39,#40,#3,#$16,#$1A: ;  //цифры и Backspace   #3-копировать  #16-вставить #$1A-ctrl+Z  #37,#38,#39,#40-стрелочки   #9 - Tab,
      #1:  Edit_φкс.SelectAll; //ctrl+A
     #13: Edit_φдиф.SetFocus;  //Enter переход на следующий эдит
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit_φкс.Text)<>0  then  Key:=#0  ;
        end;
      '-': if Edit_φкс.SelStart <>0 then   Key:=#0  ;
     else
        Key:=#0 ; //Остальные символы не отображаются
  end;
end;

procedure TForm1.Edit_φр1сопKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
      '0'..'9', #8,#11,#37,#38,#39,#40,#3,#$16,#$1A: ;  //цифры и Backspace
     #1:  Edit_φр1соп.SelectAll;
     #13: Edit_φкс.SetFocus;  //Enter переход на следующий эдит
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit_φр1соп.Text)<>0  then  Key:=#0  ;
        end;
      '-': if Edit_φр1соп.SelStart <>0 then   Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;


end.
