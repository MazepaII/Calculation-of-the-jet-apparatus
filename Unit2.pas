unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm2 = class(TForm)
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label3: TLabel;
    StringGrid_Раб: TStringGrid;
    StringGrid1: TStringGrid;
    TabSheet2: TTabSheet;
    Label4: TLabel;
    StringGrid_Ин: TStringGrid;
    StringGrid2: TStringGrid;
    TabSheet4: TTabSheet;
    Button2: TButton;
    Button4: TButton;
    ComboBox2: TComboBox;
    PageControl3: TPageControl;
    TabSheet5: TTabSheet;
    Label1: TLabel;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    TabSheet6: TTabSheet;
    Label2: TLabel;
    StringGrid5: TStringGrid;
    StringGrid6: TStringGrid;
    Button1: TButton;
    ComboBox1: TComboBox;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure StringGrid_РабSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StringGrid_ИнSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  Колич_Запусков : integer;
  ACol_раб,ARow_раб,i : integer;
  St: TStringGrid;


implementation

{$R *.dfm}


procedure TForm2.Button1Click(Sender: TObject);
begin
if PageControl1.ActivePage=TabSheet1 then
      begin
        StringGrid_Раб.RowCount:=StringGrid_Раб.RowCount+1 ;
        exit ;
      end;
if PageControl1.ActivePage=TabSheet2 then
      begin
        StringGrid_Ин.RowCount:=StringGrid_Ин.RowCount+1 ;
        exit ;
      end;
end;

//<<<<<<<<<OK>>>>>>>>>>
procedure TForm2.Button3Click(Sender: TObject);
begin
Close;
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
  {Перебросим выбранное в значение из ComboBox в grid}
  StringGrid_Раб.Cells[StringGrid_Раб.Col,StringGrid_Раб.Row] := ComboBox1.Items[ComboBox1.ItemIndex];
  ComboBox1.Visible := False;
 if  PageControl1.tabindex=0  then  StringGrid_Раб.SetFocus;
 if  PageControl1.tabindex=1  then  StringGrid_ин.SetFocus;
  {Перебросим выбранное в значение из ComboBox в grid}
 // ComboBox1.Visible := False;
 if  PageControl1.tabindex=0  then St:= StringGrid_Раб;
 if  PageControl1.tabindex=1  then St:= StringGrid_ин ;
 with  St do
  begin
  Cells[Col,Row] := ComboBox1.Items[ComboBox1.ItemIndex];
  if ComboBox1.Text='Вода (Н₂О)' then begin
     i:=2;      Cells[i,ARow_раб]:='1';  i:=i+1;
     Cells[i,ARow_раб]:='2,2460';  i:=i+1;
     Cells[i,ARow_раб]:='18,01528';  i:=i+1;
     end;
  if ComboBox1.Text='Водород (Н₂)' then begin
     i:=2;      Cells[i,ARow_раб]:='1';  i:=i+1;
     Cells[i,ARow_раб]:='14,945';  i:=i+1;
     Cells[i,ARow_раб]:='2,01588';  i:=i+1;
     end;
  if ComboBox1.Text='Углекислый газ (СО₂)' then begin
     i:=2;      Cells[i,ARow_раб]:='1';  i:=i+1;
     Cells[i,ARow_раб]:='1,165';  i:=i+1;
     Cells[i,ARow_раб]:='44,01088';  i:=i+1;
     end;
  if ComboBox1.Text='(СО)' then begin
     i:=2;      Cells[i,ARow_раб]:='1';  i:=i+1;
     Cells[i,ARow_раб]:='1,21';  i:=i+1;
     Cells[i,ARow_раб]:='28,01094';  i:=i+1;
     end;
  if ComboBox1.Text='Метан (СН₄)' then begin
     i:=2;      Cells[i,ARow_раб]:='1';  i:=i+1;
     Cells[i,ARow_раб]:='4,610';  i:=i+1;
     Cells[i,ARow_раб]:='16,04276';  i:=i+1;
     end;
  if ComboBox1.Text='Кислород (О₂)' then begin
     i:=2;      Cells[i,ARow_раб]:='1';  i:=i+1;
     Cells[i,ARow_раб]:='1,083';  i:=i+1;
     Cells[i,ARow_раб]:='31,99988';  i:=i+1;
     end;
  if ComboBox1.Text='Азот (N₂)'  then begin
     i:=2;      Cells[i,ARow_раб]:='1';  i:=i+1;
     Cells[i,ARow_раб]:='1,158';  i:=i+1;
     Cells[i,ARow_раб]:='28,0134';  i:=i+1;
     end;
  if ComboBox1.Text='Воздух' then begin
     i:=2;      Cells[i,ARow_раб]:='1';  i:=i+1;
     Cells[i,ARow_раб]:='1,0095';  i:=i+1;
     Cells[i,ARow_раб]:='28,96';  i:=i+1;
     end;
  if ComboBox1.Text='___' then begin
     i:=2;      Cells[i,ARow_раб]:='';  i:=i+1;
     Cells[i,ARow_раб]:='';  i:=i+1;
     Cells[i,ARow_раб]:='';  i:=i+1;
     end;
  end;
 if  PageControl1.tabindex=0  then  StringGrid_Раб.SetFocus;
 if  PageControl1.tabindex=1  then  StringGrid_ин.SetFocus;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
// Ширена столбцов

StringGrid_Раб.left := 0;
StringGrid_Ин.left := StringGrid_Раб.left;
StringGrid_Ин.Width := StringGrid_Раб.Width;
StringGrid_Ин.Height := StringGrid_Раб.Height;
StringGrid_Раб.ColWidths[0] := 10;
StringGrid_Раб.ColWidths[1] := 130;
StringGrid_Раб.ColWidths[2] := 95;
StringGrid_Раб.ColWidths[3] := 95;
StringGrid_Раб.ColWidths[4] := 85;

StringGrid_Ин.ColWidths[0] := 10;
StringGrid_Ин.ColWidths[1] := 130;
StringGrid_Ин.ColWidths[2] := 95;
StringGrid_Ин.ColWidths[3] := 95;
StringGrid_Ин.ColWidths[4] := 85;

StringGrid1.Width := StringGrid_Раб.Width;
StringGrid2.Width := StringGrid_Ин.Width;
StringGrid1.Top := StringGrid_Раб.Height+StringGrid_Раб.Top;
StringGrid2.Top := StringGrid_Ин.Height+StringGrid_Раб.Top;
for  i:= 0 to StringGrid_Раб.ColCount- 1 do
         StringGrid1.ColWidths[i] := StringGrid_Раб.ColWidths[i];
for  i:= 0 to StringGrid_Раб.ColCount- 1 do
         StringGrid2.ColWidths[i] := StringGrid_Ин.ColWidths[i];

  {Высоту combobox'а не изменишь, так что вместо combobox'а
  будем изменять высоту строки grid'а !}
  StringGrid_Раб.DefaultRowHeight := ComboBox1.Height; {Спрятать combobox}
  ComboBox1.Visible := False;
  ComboBox1.Items.Add('Вода (Н₂О)');
  ComboBox1.Items.Add('Водород (Н₂)');
  ComboBox1.Items.Add('Углекислый газ (СО₂)');
  ComboBox1.Items.Add('(СО)');
  ComboBox1.Items.Add('Метан (СН₄)');
  ComboBox1.Items.Add('Кислород (О₂)');
  ComboBox1.Items.Add('Азот (N₂)');
  ComboBox1.Items.Add('Воздух');
  ComboBox1.Items.Add('___');
  ComboBox1.ItemIndex:=8 ;
end;

procedure TForm2.FormShow(Sender: TObject);
var i,j : integer;
begin
 //StringGrid_Раб.Selection := TGridRect(rect(0, 0, 0, 0));
 Button3.SetFocus;



{if Колич_Запусков=0 then
  begin
   Колич_Запусков:=1 ;
   //Подпишем таблицу
   i:=0; //строка
   j:=1; //столбец
   StringGrid_Раб.Cells[j,i]:='Название';  i:=i+1;
   StringGrid_Раб.Cells[j,i]:='Вода (Н₂О)';  i:=i+1;
   StringGrid_Раб.Cells[j,i]:='Водород (Н₂) ';  i:=i+1;
   StringGrid_Раб.Cells[j,i]:='Углекислый газ (СО₂)';  i:=i+1;
   StringGrid_Раб.Cells[j,i]:='(СО)';  i:=i+1;
   StringGrid_Раб.Cells[j,i]:='Метан (СН₄)';  i:=i+1;
   i:=0; //строка
   j:=2;  //столбец
   StringGrid_Раб.Cells[j,i]:='Массовая доля';  i:=i+1;
   StringGrid_Раб.Cells[j,i]:='0,281';  i:=i+1;
   StringGrid_Раб.Cells[j,i]:='0,011';  i:=i+1;
   StringGrid_Раб.Cells[j,i]:='0,056';  i:=i+1;
   StringGrid_Раб.Cells[j,i]:='0,603';  i:=i+1;
   StringGrid_Раб.Cells[j,i]:='0,049';  i:=i+1;
   i:=0; //строка
   j:=3;  //столбец
   StringGrid_Раб.Cells[j,i]:='Cp [кДж/(кг*К)]';  i:=i+1;
   StringGrid_Раб.Cells[j,i]:='2,2460';  i:=i+1;
   StringGrid_Раб.Cells[j,i]:='14,945';  i:=i+1;
   StringGrid_Раб.Cells[j,i]:='1,165';  i:=i+1;
   StringGrid_Раб.Cells[j,i]:='1,21';  i:=i+1;
   StringGrid_Раб.Cells[j,i]:='4,610*1000';  i:=i+1;
   i:=0; //строка
   j:=4;  //столбец
   StringGrid_Раб.Cells[j,i]:='R [Дж/(кг*К)]';  i:=i+1;
   StringGrid_Раб.Cells[j,i]:='458,6';  i:=i+1;
   StringGrid_Раб.Cells[j,i]:='4601,95';  i:=i+1;
   StringGrid_Раб.Cells[j,i]:='451,95';  i:=i+1;
   StringGrid_Раб.Cells[j,i]:='192,3';  i:=i+1;
   StringGrid_Раб.Cells[j,i]:='564,2';  i:=i+1;

   //Подпишем таблицу
   i:=0; //строка
   j:=1; //столбец
   StringGrid_Ин.Cells[j,i]:='Название';  i:=i+1;
   StringGrid_Ин.Cells[j,i]:='Кислород (О₂)';  i:=i+1;
   StringGrid_Ин.Cells[j,i]:='Азот (N₂) ';  i:=i+1;
   StringGrid_Ин.Cells[j,i]:='Вода (Н₂О)';  i:=i+1;
   StringGrid_Ин.Cells[j,i]:='Углекислый газ (СО₂)';  i:=i+1;
   i:=0; //строка
   j:=2;  //столбец
   StringGrid_Ин.Cells[j,i]:='Массовая доля';  i:=i+1;
   StringGrid_Ин.Cells[j,i]:='0,099';  i:=i+1;
   StringGrid_Ин.Cells[j,i]:='0,623';  i:=i+1;
   StringGrid_Ин.Cells[j,i]:='0,120';  i:=i+1;
   StringGrid_Ин.Cells[j,i]:='0,158';  i:=i+1;
   i:=0; //строка
   j:=3;  //столбец
   StringGrid_Ин.Cells[j,i]:='Cp [кДж/(кг*К)]';  i:=i+1;
   StringGrid_Ин.Cells[j,i]:='1,083';  i:=i+1;
   StringGrid_Ин.Cells[j,i]:='1,158';  i:=i+1;
   StringGrid_Ин.Cells[j,i]:='2,2691';  i:=i+1;
   StringGrid_Ин.Cells[j,i]:='1,22';  i:=i+1;
   i:=0; //строка
   j:=4;  //столбец
   StringGrid_Ин.Cells[j,i]:='R [Дж/(кг*К)]';  i:=i+1;
   StringGrid_Ин.Cells[j,i]:='275,5';  i:=i+1;
   StringGrid_Ин.Cells[j,i]:='314,95';  i:=i+1;
   StringGrid_Ин.Cells[j,i]:='459,9';  i:=i+1;
   StringGrid_Ин.Cells[j,i]:='200,2';  i:=i+1;
  end;  }
end;

procedure TForm2.PageControl1Change(Sender: TObject);
begin
 if  PageControl1.tabindex=0  then
   begin
    StringGrid_Раб.Selection := TGridRect(rect(0, 0, 0, 0));
    Button3.SetFocus;
    ComboBox1.Visible:=False ;
    StringGrid_Раб.Cells[0,0]:='';
   end;
 if  PageControl1.tabindex=1  then
   begin
    StringGrid_Ин.Selection := TGridRect(rect(0, 0, 0, 0));
    Button3.SetFocus;
    ComboBox1.Visible:=False ;
    StringGrid_Ин.Cells[0,0]:='';
   Form2.StringGrid_Ин.Cells[1,0]:='Название';  i:=i+1;
   Form2.StringGrid_Ин.Cells[2,0]:='Массовая доля';  i:=i+1;
   Form2.StringGrid_Ин.Cells[3,0]:='Cp [кДж/(кг*К)]';  i:=i+1;
   Form2.StringGrid_Ин.Cells[5,0]:='μ [а. е. м.]';  i:=i+1;
   end;
end;

procedure TForm2.StringGrid_ИнSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  R: TRect;
begin

  if ((ACol = 1) and (ARow <> 0)) then
  begin
    StringGrid_Ин.Cells[0,0]:='';
    //Ширина и положение ComboBox должно соответствовать ячейке StringGrid
    R := StringGrid_Ин.CellRect(ACol, ARow);
    R.Left := R.Left + StringGrid_Ин.Left;
    R.Right := R.Right + StringGrid_Ин.Left;
    R.Top := R.Top + StringGrid_Ин.Top;
    R.Bottom := R.Bottom + StringGrid_Ин.Top;
    ComboBox1.Left := R.Left + 1+(PageControl2.ClientWidth-PageControl3.Width)*2 ;
    ComboBox1.Top := R.Top + 1+StringGrid_Ин.RowHeights[0]+Form2.ClientHeight-PageControl3.ClientHeight+(PageControl2.Width-PageControl2.ClientWidth)*2;
    ComboBox1.Width := (R.Right + 1) - R.Left;
    ComboBox1.Height := (R.Bottom + 1) - R.Top;// Покажем combobox
    for  i:= 0 to 100-1 do
       if StringGrid_Ин.Cells[ACol, ARow]=ComboBox1.Items[i] then  ComboBox1.ItemIndex:=i ;
    ComboBox1.Visible := True;
    ACol_раб:=ACol ;
    ARow_раб:=ARow ;
    ComboBox1.SetFocus;

  end;
  CanSelect := True;

end;

procedure TForm2.StringGrid_РабSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);

var
  R: TRect;
begin

  if ((ACol = 1) and (ARow <> 0)) then
  begin
   Form2.StringGrid_Раб.Cells[1,0]:='Название';  i:=i+1;
   Form2.StringGrid_Раб.Cells[2,0]:='Массовая доля';  i:=i+1;
   Form2.StringGrid_Раб.Cells[3,0]:='Cp [кДж/(кг*К)]';  i:=i+1;
   Form2.StringGrid_Раб.Cells[5,0]:='μ [а. е. м.]';  i:=i+1;
    StringGrid_Раб.Cells[0,0]:='';
    //Ширина и положение ComboBox должно соответствовать ячейке StringGrid
    R := StringGrid_Раб.CellRect(ACol, ARow);
    R.Left := R.Left + StringGrid_Раб.Left;
    R.Right := R.Right + StringGrid_Раб.Left;
    R.Top := R.Top + StringGrid_Раб.Top;
    R.Bottom := R.Bottom + StringGrid_Раб.Top;
    ComboBox1.Left := R.Left +1+(PageControl2.ClientWidth-PageControl3.Width)*2 ;
    ComboBox1.Top := R.Top + 1+StringGrid_Раб.RowHeights[0]+Form2.ClientHeight-PageControl3.ClientHeight+(PageControl2.Width-PageControl2.ClientWidth)*2;
    ComboBox1.Width := (R.Right + 1) - R.Left;
    ComboBox1.Height := (R.Bottom + 1) - R.Top;
    //Покажем combobox
    for  i:= 0 to 100-1 do
       if (StringGrid_Раб.Cells[ACol, ARow]=ComboBox1.Items[i])   then  ComboBox1.ItemIndex:=i ;
    ComboBox1.Visible := True;
    ACol_раб:=ACol ;
    ARow_раб:=ARow ;
    ComboBox1.SetFocus;

  end;
  CanSelect := True;

end;

end.
