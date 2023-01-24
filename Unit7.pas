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
    Edit���: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditMin�: TEdit;
    EditMaxH: TEdit;
    Label9: TLabel;
    CheckBox1: TCheckBox;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Edit���: TEdit;
    EditMin�: TEdit;
    EditMax�: TEdit;
    CheckBox2: TCheckBox;
    procedure CheckBox1Click(Sender: TObject);
    procedure EditMaxHChange(Sender: TObject);
    procedure EditMin�Change(Sender: TObject);
    procedure Edit���Change(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure EditMax�Change(Sender: TObject);
    procedure EditMin�Change(Sender: TObject);
    procedure Edit���Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  //���������
function RoundSignificant(num: Extended; col: integer): Extended;  //���������

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit6, Unit1;

{$R *.dfm}

//���������� �����       ([([([(((���������)]))])])
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
//������ ��� ���� ���������
procedure TForm7.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked=False then
     begin
       Form6.Chart1.BottomAxis.Automatic:=false ;
       EditMaxH.Enabled:=True ;
       EditMin�.Enabled:=True ;
       Edit���.Enabled:=True ;
       Form6.Chart1.Update;
       Form6.Chart1.BottomAxis.minimum:= strtofloat(EditMin�.text);
       Form6.Chart1.BottomAxis.maximum:= strtofloat(EditMaxH.text);
       Form6.Chart1.BottomAxis.Increment:= strtofloat(Edit���.text);
       exit;
     end;
  if CheckBox1.Checked=True then
     begin
       Form6.Chart1.BottomAxis.Automatic:=True  ;
       EditMaxH.Enabled:=False ;
       EditMin�.Enabled:=False ;
       Edit���.Enabled:=False ;
       Form6.Chart1.Update;
       EditMin�.text:=floattostr(RoundSignificant(Form6.Chart1.BottomAxis.minimum,4))  ;
       EditMaxH.text:=floattostr(RoundSignificant(Form6.Chart1.BottomAxis.maximum,4))  ;
       Edit���.text:=floattostr(RoundSignificant(Form6.Chart1.BottomAxis.Increment,4)) ;
       exit;
     end;
end;
//����� ��� ���� ���������
procedure TForm7.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked=False then
     begin
       Form6.Chart1.LeftAxis.Automatic:=false ;
       EditMax�.Enabled:=True ;
       EditMin�.Enabled:=True ;
       Edit���.Enabled:=True ;
       Form6.Chart1.Update;
       Form6.Chart1.LeftAxis.minimum:= strtofloat(EditMin�.text);
       Form6.Chart1.LeftAxis.maximum:= strtofloat(EditMax�.text);
       Form6.Chart1.LeftAxis.Increment:= strtofloat(Edit���.text);

       exit;
     end;
  if CheckBox2.Checked=True then
     begin
       Form6.Chart1.LeftAxis.Automatic:=True  ;
       EditMax�.Enabled:=false ;
       EditMin�.Enabled:=false ;
       Edit���.Enabled:=false ;
       Form6.Chart1.Update;
       EditMin�.text:=floattostr(RoundSignificant(Form6.Chart1.LeftAxis.minimum,4))  ;
       EditMax�.text:=floattostr(RoundSignificant(Form6.Chart1.LeftAxis.maximum,4))  ;
       Edit���.text:=floattostr(RoundSignificant(Form6.Chart1.LeftAxis.Increment,4))  ;
       exit;
     end;
end;

//������ ��� ����������� ��������
procedure TForm7.EditMin�Change(Sender: TObject);
begin
  try Form6.Chart1.BottomAxis.minimum:= strtofloat(EditMin�.text);  except (* Application.Messagebox('����������� �������� ������ ���� ������ �������������','������ !!!', mb_iconerror or mb_ok); *) end;
end;
//������ ��� ������������ ��������
procedure TForm7.EditMaxHChange(Sender: TObject);
begin
  try Form6.Chart1.BottomAxis.maximum:= strtofloat(EditMaxH.text);  except (* Application.Messagebox('������������ �������� ������ ���� ������ ������������','������ !!!', mb_iconerror or mb_ok); *) end;
end;
//������ ��� ���� �������
procedure TForm7.Edit���Change(Sender: TObject);
begin
  try Form6.Chart1.BottomAxis.Increment:= strtofloat(Edit���.text);  except   end;
end;


procedure TForm7.FormShow(Sender: TObject);
begin
  if CheckBox2.Checked=False then
     begin
       Form6.Chart1.LeftAxis.Automatic:=false ;
       EditMax�.Enabled:=True ;
       EditMin�.Enabled:=True ;
       Edit���.Enabled:=True ;
       Form6.Chart1.Update;
       Form6.Chart1.LeftAxis.minimum:= strtofloat(EditMin�.text);
       Form6.Chart1.LeftAxis.maximum:= strtofloat(EditMax�.text);
       Form6.Chart1.LeftAxis.Increment:= strtofloat(Edit���.text);
       exit;
     end;
  if CheckBox2.Checked=True then
     begin
       Form6.Chart1.LeftAxis.Automatic:=True  ;
       EditMax�.Enabled:=false ;
       EditMin�.Enabled:=false ;
       Edit���.Enabled:=false ;
       Form6.Chart1.Update;
       EditMin�.text:=floattostr(RoundSignificant(Form6.Chart1.LeftAxis.minimum,4))  ;
       EditMax�.text:=floattostr(RoundSignificant(Form6.Chart1.LeftAxis.maximum,4))  ;
       Edit���.text:=floattostr(RoundSignificant(Form6.Chart1.LeftAxis.Increment,4))  ;
       exit;
     end;
end;

//����� ��� ����������� ��������
procedure TForm7.EditMin�Change(Sender: TObject);
begin
  try Form6.Chart1.LeftAxis.minimum:= strtofloat(EditMin�.text);  except Application.Messagebox('����������� �������� ������ ���� ������ �������������','������ !!!', mb_iconerror or mb_ok);  end;
end;
//����� ��� ������������ ��������
procedure TForm7.EditMax�Change(Sender: TObject);
begin
  try Form6.Chart1.LeftAxis.maximum:= strtofloat(EditMax�.text);  except Application.Messagebox('������������ �������� ������ ���� ������ ������������','������ !!!', mb_iconerror or mb_ok);  end;
end;
//����� ��� ���� �������
procedure TForm7.Edit���Change(Sender: TObject);
begin
  try Form6.Chart1.LeftAxis.Increment:= strtofloat(Edit���.text);  except   end;
end;


end.
