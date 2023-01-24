unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Math;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Label23: TLabel;
    EditЦДН: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditMinН: TEdit;
    EditMaxH: TEdit;
    Label9: TLabel;
    CheckBox1: TCheckBox;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    EditЦДЛ: TEdit;
    EditMinЛ: TEdit;
    EditMaxЛ: TEdit;
    CheckBox2: TCheckBox;
    procedure CheckBox1Click(Sender: TObject);
    procedure EditMaxHChange(Sender: TObject);
    procedure EditMinНChange(Sender: TObject);
    procedure EditЦДНChange(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure EditMaxЛChange(Sender: TObject);
    procedure EditMinЛChange(Sender: TObject);
    procedure EditЦДЛChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  //Процидуры
function RoundSignificant(num: Extended; col: integer): Extended;  //Округлить

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit6, Unit1;

{$R *.dfm}

//ОКРКГЛЕНИЕ чисел       ([([([(((ПРОЦИДУРА)]))])])
function TForm7.RoundSignificant(num: Extended; col: integer): Extended;
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
//Нижняя ось авто настройки
procedure TForm7.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked=False then
     begin
       Form6.Chart1.BottomAxis.Automatic:=false ;
       EditMaxH.Enabled:=True ;
       EditMinН.Enabled:=True ;
       EditЦДН.Enabled:=True ;
       Form6.Chart1.Update;
       Form6.Chart1.BottomAxis.minimum:= strtofloat(EditMinН.text);
       Form6.Chart1.BottomAxis.maximum:= strtofloat(EditMaxH.text);
       Form6.Chart1.BottomAxis.Increment:= strtofloat(EditЦДН.text);
       exit;
     end;
  if CheckBox1.Checked=True then
     begin
       Form6.Chart1.BottomAxis.Automatic:=True  ;
       EditMaxH.Enabled:=False ;
       EditMinН.Enabled:=False ;
       EditЦДН.Enabled:=False ;
       Form6.Chart1.Update;
       EditMinН.text:=floattostr(RoundSignificant(Form6.Chart1.BottomAxis.minimum,4))  ;
       EditMaxH.text:=floattostr(RoundSignificant(Form6.Chart1.BottomAxis.maximum,4))  ;
       EditЦДН.text:=floattostr(RoundSignificant(Form6.Chart1.BottomAxis.Increment,4)) ;
       exit;
     end;
end;
//Левая ось авто настройки
procedure TForm7.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked=False then
     begin
       Form6.Chart1.LeftAxis.Automatic:=false ;
       EditMaxЛ.Enabled:=True ;
       EditMinЛ.Enabled:=True ;
       EditЦДЛ.Enabled:=True ;
       Form6.Chart1.Update;
       Form6.Chart1.LeftAxis.minimum:= strtofloat(EditMinЛ.text);
       Form6.Chart1.LeftAxis.maximum:= strtofloat(EditMaxЛ.text);
       Form6.Chart1.LeftAxis.Increment:= strtofloat(EditЦДЛ.text);

       exit;
     end;
  if CheckBox2.Checked=True then
     begin
       Form6.Chart1.LeftAxis.Automatic:=True  ;
       EditMaxЛ.Enabled:=false ;
       EditMinЛ.Enabled:=false ;
       EditЦДЛ.Enabled:=false ;
       Form6.Chart1.Update;
       EditMinЛ.text:=floattostr(RoundSignificant(Form6.Chart1.LeftAxis.minimum,4))  ;
       EditMaxЛ.text:=floattostr(RoundSignificant(Form6.Chart1.LeftAxis.maximum,4))  ;
       EditЦДЛ.text:=floattostr(RoundSignificant(Form6.Chart1.LeftAxis.Increment,4))  ;
       exit;
     end;
end;

//Нижняя ось Минемальное значение
procedure TForm7.EditMinНChange(Sender: TObject);
begin
  try Form6.Chart1.BottomAxis.minimum:= strtofloat(EditMinН.text);  except (* Application.Messagebox('Минемальное значение должно быть меньше максимального','Ахтунг !!!', mb_iconerror or mb_ok); *) end;
end;
//Нижняя ось Максимальное значение
procedure TForm7.EditMaxHChange(Sender: TObject);
begin
  try Form6.Chart1.BottomAxis.maximum:= strtofloat(EditMaxH.text);  except (* Application.Messagebox('Максимальное значение должно быть больше минемального','Ахтунг !!!', mb_iconerror or mb_ok); *) end;
end;
//Нижняя ось Цена деления
procedure TForm7.EditЦДНChange(Sender: TObject);
begin
  try Form6.Chart1.BottomAxis.Increment:= strtofloat(EditЦДН.text);  except   end;
end;


procedure TForm7.FormShow(Sender: TObject);
begin
  if CheckBox2.Checked=False then
     begin
       Form6.Chart1.LeftAxis.Automatic:=false ;
       EditMaxЛ.Enabled:=True ;
       EditMinЛ.Enabled:=True ;
       EditЦДЛ.Enabled:=True ;
       Form6.Chart1.Update;
       Form6.Chart1.LeftAxis.minimum:= strtofloat(EditMinЛ.text);
       Form6.Chart1.LeftAxis.maximum:= strtofloat(EditMaxЛ.text);
       Form6.Chart1.LeftAxis.Increment:= strtofloat(EditЦДЛ.text);
       exit;
     end;
  if CheckBox2.Checked=True then
     begin
       Form6.Chart1.LeftAxis.Automatic:=True  ;
       EditMaxЛ.Enabled:=false ;
       EditMinЛ.Enabled:=false ;
       EditЦДЛ.Enabled:=false ;
       Form6.Chart1.Update;
       EditMinЛ.text:=floattostr(RoundSignificant(Form6.Chart1.LeftAxis.minimum,4))  ;
       EditMaxЛ.text:=floattostr(RoundSignificant(Form6.Chart1.LeftAxis.maximum,4))  ;
       EditЦДЛ.text:=floattostr(RoundSignificant(Form6.Chart1.LeftAxis.Increment,4))  ;
       exit;
     end;
end;

//Левая ось Минемальное значение
procedure TForm7.EditMinЛChange(Sender: TObject);
begin
  try Form6.Chart1.LeftAxis.minimum:= strtofloat(EditMinЛ.text);  except Application.Messagebox('Минемальное значение должно быть меньше максимального','Ахтунг !!!', mb_iconerror or mb_ok);  end;
end;
//Левая ось Максимальное значение
procedure TForm7.EditMaxЛChange(Sender: TObject);
begin
  try Form6.Chart1.LeftAxis.maximum:= strtofloat(EditMaxЛ.text);  except Application.Messagebox('Максимальное значение должно быть больше минемального','Ахтунг !!!', mb_iconerror or mb_ok);  end;
end;
//Левая ось Цена деления
procedure TForm7.EditЦДЛChange(Sender: TObject);
begin
  try Form6.Chart1.LeftAxis.Increment:= strtofloat(EditЦДЛ.text);  except   end;
end;


end.
