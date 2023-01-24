unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, jpeg, OleCtnrs, Math,plmn, TeEngine,
  TeeProcs, Chart, Series, ComCtrls, clipbrd  ;

type
  TStrGrid = class(TStringGrid);
  TForm6 = class(TForm)
    PageControl2: TPageControl;
    TabSheet_Зад1: TTabSheet;
    TabSheet_Зад2: TTabSheet;
    PageControl1: TPageControl;
    TabSheet_З1_Граф: TTabSheet;
    Label2: TLabel;
    Chart1: TChart;
    Button1: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Panel17: TPanel;
    Label69: TLabel;
    Label70: TLabel;
    Panel15: TPanel;
    Label63: TLabel;
    Label64: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel4: TPanel;
    Label61: TLabel;
    Label62: TLabel;
    Panel16: TPanel;
    Label65: TLabel;
    Label66: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    CheckBox2: TCheckBox;
    CheckBox_Для_параметров_графика: TCheckBox;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ListBox1: TListBox;
    Button8: TButton;
    TabSheet_З1_Резу: TTabSheet;
    StringGrid1: TStringGrid;
    ScrollBox1: TScrollBox;
    RadioGroup1: TRadioGroup;
    PageControl3: TPageControl;
    TabSheet1: TTabSheet;
    Label4: TLabel;
    Chart2: TChart;
    Button5: TButton;
    Panel2: TPanel;
    Label5: TLabel;
    Panel3: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Panel5: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Panel6: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Panel7: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    CheckBox1: TCheckBox;
    CheckBox3: TCheckBox;
    Button6: TButton;
    Button7: TButton;
    Button9: TButton;
    ListBox2: TListBox;
    Button10: TButton;
    TabSheet2: TTabSheet;
    Label14: TLabel;
    StringGrid2: TStringGrid;
    ScrollBox2: TScrollBox;
    RadioGroup2: TRadioGroup;
    Button11: TButton;
    Label3: TLabel;
    StatusBar1: TStatusBar;
    CheckBox4: TCheckBox;
    Memo1: TMemo;
    CheckBox5: TCheckBox;
    procedure FormResize(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure ListBox1KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CheckBox4Click(Sender: TObject);
    procedure Chart1MouseEnter(Sender: TObject);
    procedure Memo1MouseEnter(Sender: TObject);
    procedure ListBox1MouseEnter(Sender: TObject);
    procedure Chart1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
procedure SGCopyToCLP(SG: TStringGrid; CopySel: Boolean; CL: integer = -1;   RT: integer = -1; CR: integer = -1; RB: integer = -1);
  end;

var
  Form6: TForm6;
  i_поиск,j_поиск,Высота_листа,Шарина_листа,i_Form6,III,Высота_листа_Зад,Ширена_листа_Зад,i_СТОЛБ,j_списка : integer;
  хлам1,хлам2: string;
  Нашел,Удаляем_расчетны : Boolean;
implementation

{$R *.dfm}

uses Unit1, Unit7, Unit8;

//копирование ттабл в буфер обмена
procedure TForm6.SGCopyToCLP(SG: TStringGrid; CopySel: Boolean; CL: integer = -1;
  RT: integer = -1; CR: integer = -1; RB: integer = -1);
var
  i, j: Integer;
  s: string;
begin
  s := '';
  with SG do
  begin
    if CopySel then
    begin
      CL := Selection.Left;
      CR := Selection.Right;
      RT := Selection.Top;
      RB := Selection.Bottom;
    end;
    //при необходимости FixedRows и FixedCols можно заменить на 0
    if (CL < FixedCols) or (CL > CR) or (CL >= ColCount) then
      CL := 0;    //CL := FixedCols;
    if (CR < FixedCols) or (CL > CR) or (CR >= ColCount) then
      CR := ColCount - 1;
    if (RT < FixedRows) or (RT > RB) or (RT >= RowCount) then
      RT := 0; //RT := FixedRows;
    if (RB < FixedCols) or (RT > RB) or (RB >= RowCount) then
      RB := RowCount - 1;
    for i := RT to RB do
    begin
      for j := CL to CR do
      begin
        s := s + Cells[j, i];
        if j < CR then
          s := s + #9;
      end;
      s := s + #13#10;
  end;
  end;
  ClipBoard.AsText := s;
end;

//Удалении столбца
procedure RemoveColumn(SG : TStringGrid; ColNumber : integer);
var Column : integer;
begin
ColNumber := abs(ColNumber);
if ColNumber <= SG.ColCount then begin
    for Column := ColNumber to SG.ColCount - 2 do begin
       SG.Cols[Column].Assign(SG.Cols[Column + 1]);
       SG.Colwidths[Column] := SG.Colwidths[Column + 1];
    end;
    SG.ColCount := SG.ColCount - 1;
end;
end;

procedure TForm6.Button11Click(Sender: TObject);
  var i_стр_списка: integer;
begin
 for i_стр_списка := 0 to ListBox1.Items.Count - 1 do
    if ListBox1.Selected[i_стр_списка] = true  then
          begin
            if Form1.StringGrid_Диограм.Cells[1,i_стр_списка+1]='кривые' then
                begin
                //  SGCopyToCLP(StringGrid1, True); //выделение
                  SGCopyToCLP((Form1.FindComponent(Form1.StringGrid_Диограм.Cells[3,i_стр_списка+1]) as TStringGrid), False); //все ячейки
                //  SGCopyToCLP(StringGrid1, False, 1, 1, 3, 2); //диапазон, 6 ячеек
                end

end;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
Form7.show;
CheckBox_Для_параметров_графика.Checked:=True ;
end;

//Отчистить график
procedure TForm6.Button2Click(Sender: TObject);
begin
iiii:=1;
AAAA:=0;
i_поиск:= 0  ;
j_поиск:= 0  ;
jj_номер_Табл:= 0  ;
Form6.Chart1.RemoveAllSeries  ;
Form1.StringGrid_Диограм.RowCount:=1;
ListBox1.Items.Clear;
Form6.radiogroup1.Width:=0;
Form6.radiogroup1.Height:=0;
    // for III := КоличествоКомпонентов+Form6.RadioGroup1.Items.Count-1  downto КоличествоКомпонентов do
       for III := Form1.componentCount-1  downto КоличествоКомпонентов do
       begin
         if (Form1.Components[III]).ClassType=TStringGrid then
         begin
      //  Имя:=(Form1.Components[III] ).name ;
        (Form1.Components[III] as TStringGrid).Parent := nil ;       //  ;
        (Form1.Components[III] as TStringGrid).Free ;
         end;
      end;

     Form6.RadioGroup1.ItemIndex := -1;
     Form6.RadioGroup1.Items.Clear ;

Form1.CheckBox1.Enabled:=False;
Form1.CheckBox2.Enabled:=False;
Form1.CheckBox2_Зад2.Enabled:=False;
Form6.CheckBox2.Enabled:=False;
//чистем таблицу  сточками
Form8.StringGrid1.RowCount:=3;
Form8.StringGrid1.ColCount:=2;
with Form8.StringGrid1 do
  for i_СТОЛБ:=0 to ColCount-1 do
      Cols[i_СТОЛБ].Clear;
end;

//Удалить рассчетные кривые
procedure TForm6.Button3Click(Sender: TObject);
begin
Form6.radiogroup1.Width:=0;
Form6.radiogroup1.Height:=0;
     i_поиск:= 0  ;
     j_поиск:= 0  ;
     jj_номер_Табл:= 0  ;
       for i_поиск := 1 to Form1.StringGrid_Диограм.RowCount- 1 do
           begin
               j_поиск :=1 ;
               Нашел:=False ;
               while Нашел=False do
                 begin
                    if  Form1.StringGrid_Диограм.Cells[1,j_поиск]='кривые'  then
                        begin
                          Chart1.Series[j_поиск-1].Destroy;
                          TStrGrid(Form1.StringGrid_Диограм).DeleteRow(j_поиск); //удаляем вторую строку
                          ListBox1.Items.Delete(j_поиск-1) ;
                          Нашел:=True ;
                        end;
                    if  j_поиск=Form1.StringGrid_Диограм.RowCount- 1 then
                        begin
                          Нашел:=True ;
                        end;
                  j_поиск :=j_поиск+1 ;
                 end;
           end;
    for III := Form1.componentCount-1  downto КоличествоКомпонентов-1 do
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

if Form6.Chart1.SeriesCount=0 then
     begin
       Form1.CheckBox1.Enabled:=False;
       Form1.CheckBox2.Enabled:=False;
       Form1.CheckBox2_Зад2.Enabled:=False;
       Form6.CheckBox2.Enabled:=False;
       i_поиск:= 0  ;
       j_поиск:= 0  ;
       AAAA:=0;
       jj_номер_Табл:= 0  ;
       Form6.Chart1.RemoveAllSeries  ;
       Form1.StringGrid_Диограм.RowCount:=1;
       ListBox1.Items.Clear;
       Form6.radiogroup1.Width:=0;
       Form6.radiogroup1.Height:=0;
           // for III := КоличествоКомпонентов+Form6.RadioGroup1.Items.Count-1  downto КоличествоКомпонентов do
              for III := Form1.componentCount-1  downto КоличествоКомпонентов do
              begin
                if (Form1.Components[III]).ClassType=TStringGrid then
                begin
             //  Имя:=(Form1.Components[III] ).name ;
               (Form1.Components[III] as TStringGrid).Parent := nil ;       //  ;
               (Form1.Components[III] as TStringGrid).Free ;
                end;
             end;

     Form6.RadioGroup1.ItemIndex := -1;
     Form6.RadioGroup1.Items.Clear ;

     end;
end;

//Удалить Экспериментальные данные
procedure TForm6.Button4Click(Sender: TObject);
begin
     i_поиск:= 0  ;
     j_поиск:= 0  ;
       for i_поиск := 1 to Form1.StringGrid_Диограм.RowCount- 1 do
           begin
               j_поиск :=1 ;
               Нашел:=False ;
               while Нашел=False do
                 begin
                    if  Form1.StringGrid_Диограм.Cells[1,j_поиск]<>'кривые'  then
                        begin
                          Chart1.Series[j_поиск-1].Destroy;
                          TStrGrid(Form1.StringGrid_Диограм).DeleteRow(j_поиск); //удаляем вторую строку
                          ListBox1.Items.Delete(j_поиск-1) ;
                          Нашел:=True ;
                        end;
                    if  j_поиск=Form1.StringGrid_Диограм.RowCount- 1 then
                        begin
                          Нашел:=True ;
                        end;
                  j_поиск :=j_поиск+1 ;
                 end;
           end;
if Form6.Chart1.SeriesCount=0 then
     begin
       Form1.CheckBox1.Enabled:=False;
       Form1.CheckBox2.Enabled:=False;
       Form1.CheckBox2_Зад2.Enabled:=False;
       Form6.CheckBox2.Enabled:=False;
       i_поиск:= 0  ;
       j_поиск:= 0  ;
       AAAA:=0;
       jj_номер_Табл:= 0  ;
       Form6.Chart1.RemoveAllSeries  ;
       Form1.StringGrid_Диограм.RowCount:=1;
       ListBox1.Items.Clear;
       Form6.radiogroup1.Width:=0;
       Form6.radiogroup1.Height:=0;
           // for III := КоличествоКомпонентов+Form6.RadioGroup1.Items.Count-1  downto КоличествоКомпонентов do
              for III := Form1.componentCount-1  downto КоличествоКомпонентов do
              begin
                if (Form1.Components[III]).ClassType=TStringGrid then
                begin
             //  Имя:=(Form1.Components[III] ).name ;
               (Form1.Components[III] as TStringGrid).Parent := nil ;       //  ;
               (Form1.Components[III] as TStringGrid).Free ;
                end;
             end;

     Form6.RadioGroup1.ItemIndex := -1;
     Form6.RadioGroup1.Items.Clear ;

     end;

//чистем таблицу  сточками
Form8.StringGrid1.RowCount:=3;
Form8.StringGrid1.ColCount:=2;
with Form8.StringGrid1 do
  for i_СТОЛБ:=0 to ColCount-1 do
      Cols[i_СТОЛБ].Clear;
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
for III := 1 to jj_номер_Табл do
   (Form1.FindComponent('myStringGrid'+FloatToStr(III)) as TStringGrid).Visible:=False ;       //myStringGrid1.Visible
  Form6.RadioGroup1.Items.Clear
end;

procedure TForm6.Button8Click(Sender: TObject);
  var i_стр_списка,j_стр_списка,cip,iiii,jjjj,i_стр_списка_Штук,j_списка_Штук: integer;
begin
//↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓Удалять можно только 1 кривую
cip:=0;
for i_стр_списка := 0 to ListBox1.Items.Count - 1 do
  begin
      if ListBox1.Selected[i_стр_списка] = true then
         cip:=cip+1 ;
  end;
  if  cip>1 then
        begin
           Application.Messagebox('Можно удолять только по одной','Ахтунг !!!', mb_iconerror or mb_ok);
           Exit;
        end;
///↑↑↑↑↑↑↑↑↑↑↑↑Удалять можно только 1 кривую
///
i_стр_списка_Штук:=0 ;
j_списка_Штук:=0;
try

  begin
   for i_стр_списка_Штук:=(ListBox1.Items.Count - 1)  DownTo   0  do
    begin  //i_стр_списка := 0 to ListBox1.Items.Count - 1 do
    if ListBox1.Selected[i_стр_списка_Штук] = true  then
          begin  //ListBox1.Selected[i_стр_списка] = true  then
             Chart1.Series[i_стр_списка_Штук].Destroy;
            if Form1.StringGrid_Диограм.Cells[1,i_стр_списка_Штук+1]='кривые' then
                begin   //='кривые'
                  for  j_списка_Штук:=radiogroup1.Items.Count - 1 DownTo 0   do
                    begin
                    if RadioGroup1.Items[j_списка_Штук]=Form1.StringGrid_Диограм.Cells[2,i_стр_списка_Штук+1]  then
                       begin
                       //  if RadioGroup1.ItemIndex=j_списка_Штук then
                       //     begin
                       //     RadioGroup1.ItemIndex:=radiogroup1.Items.Count - 1 ;
                       //     (Form1.FindComponent(Form1.StringGrid_Диограм.Cells[3,i_стр_списка_Штук+1]) as TStringGrid).visible:=True ;
                       //     end;
                         RadioGroup1.Items.Delete(j_списка_Штук);
                         RadioGroup1.ItemIndex:=radiogroup1.Items.Count - 1 ;
                         Form6.resize;
                       end;
                    end;
                  (Form1.FindComponent(Form1.StringGrid_Диограм.Cells[3,i_стр_списка_Штук+1]) as TStringGrid).Parent := nil ;
                  (Form1.FindComponent(Form1.StringGrid_Диограм.Cells[3,i_стр_списка_Штук+1]) as TStringGrid).Free ;
                  Form6.radiogroup1.Height:=Form6.radiogroup1.Height-Round(Label3.Canvas.TextHeight(Form1.StringGrid_Диограм.Cells[2,i_стр_списка_Штук+1])*2)  ;
                  TStrGrid(Form1.StringGrid_Диограм).DeleteRow(i_стр_списка_Штук+1); //удаляем  строк
                  ListBox1.DeleteSelected;

                  Удаляем_расчетны:=True ;
                  for III := Form1.componentCount-1  downto КоличествоКомпонентов-1 do
                     if ((Form1.Components[III]).ClassType=TLineSeries)  then
                       begin
                         Удаляем_расчетны:=False ;
                       end;
                  if Удаляем_расчетны=True then
                     Button3.Click ;
                end; //='кривые'

            if Form1.StringGrid_Диограм.Cells[1,i_стр_списка_Штук+1]='точечный' then // если не кривая
               begin
                  //Удаляем точки из таблицы
                  for iiii:=Form8.StringGrid1.ColCount-1 DownTo 0 do      //Form8.StringGrid2.Cells[1,4]
                  // begin
                      //хлам1:=Form8.StringGrid1.Cells[iiii,0];
                      //хлам2:=Form1.StringGrid_Диограм.Cells[2,i_стр_списка+1];
                      if (Form8.StringGrid1.Cells[iiii,0]=Form1.StringGrid_Диограм.Cells[2,i_стр_списка_Штук+1]) and (Form8.StringGrid1.ColCount<>2) then
                               begin  //ищем такое женазван название кривой что и  списке
                                  RemoveColumn(Form8.StringGrid1,iiii);
                                  RemoveColumn(Form8.StringGrid1,iiii);
                                  TStrGrid(Form1.StringGrid_Диограм).DeleteRow(i_стр_списка_Штук+1); //удаляем вторую строку
                                  ListBox1.DeleteSelected;
                                  Exit;
                               end;
                  // end;
                  if Form8.StringGrid1.ColCount=2 then
                       begin   // если всего 2 колонки
                          //чистем таблицу  с точками
                          Form8.StringGrid1.RowCount:=3;
                          Form8.StringGrid1.ColCount:=2;
                          with Form8.StringGrid1 do
                            for i_СТОЛБ:=0 to ColCount-1 do
                                Cols[i_СТОЛБ].Clear;

                          TStrGrid(Form1.StringGrid_Диограм).DeleteRow(i_стр_списка_Штук+1); //удаляем  строку
                          ListBox1.DeleteSelected;
                          Exit;
                       end; // если всего 2 колонки
               end;
                  if Form6.Chart1.SeriesCount=0 then
                       begin
                         Form1.CheckBox1.Enabled:=False;
                         Form1.CheckBox2.Enabled:=False;
                         Form1.CheckBox2_Зад2.Enabled:=False;
                         Form6.CheckBox2.Enabled:=False;
                         i_поиск:= 0  ;
                         j_поиск:= 0  ;
                         jj_номер_Табл:= 0  ;
                         Form6.Chart1.RemoveAllSeries  ;
                         Form1.StringGrid_Диограм.RowCount:=1;
                         ListBox1.Items.Clear;
                         StringGrid1.Visible:=True;
                         Form6.radiogroup1.Width:=0;
                         Form6.radiogroup1.Height:=0;
                             // for III := КоличествоКомпонентов+Form6.RadioGroup1.Items.Count-1  downto КоличествоКомпонентов do
                                for III := Form1.componentCount-1  downto КоличествоКомпонентов do
                                  begin
                                   if (Form1.Components[III]).ClassType=TStringGrid then
                                     begin
                                  //  Имя:=(Form1.Components[III] ).name ;
                                     (Form1.Components[III] as TStringGrid).Parent := nil ;       //  ;
                                     (Form1.Components[III] as TStringGrid).Free ;
                                    end;
                                 end;

                       Form6.RadioGroup1.ItemIndex := -1;
                       Form6.RadioGroup1.Items.Clear ;
                     end;
          end;  //ListBox1.Selected[i_стр_списка] = true  then
    end; //i_стр_списка := 0 to ListBox1.Items.Count - 1 do
  end;
Except

end;

end;

procedure TForm6.Chart1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i,jj: integer;
    tmpX,tmpY:Double;
//Координаты Графика
      gx,gy,I_стерка,J_стерка,J_U_запомн,J_Pсм_запомн,j_граф: integer;
      metka1, metka2, metka3,табл_U,табл_Pсм: string;
      Key: Word ;
      Разница_U_мышь,Разница_U_мышь_1,Разница_U_мышь_2,Разница_Pсм_мышь,
      Разница_Pсм_мышь_1,Разница_Pсм_мышь_2,Разница_U_строка,Разница_Pсм_строка,
      табл_U_число,табл_Pсм_число,metka1_число,metka2_число,Разница_U_процент,Разница_Pсм_процент,Табл_U_сравн,Табл_Pсм_сравн,
      Табл_U_сравн_X,Табл_U_сравн_Y,Табл_Pсм_сравн_X,Табл_Pсм_сравн_Y,Разница_U_процент_X,Разница_U_процент_Y,Разница_Pсм_процент_X,Разница_Pсм_процент_Y:Extended    ;
      U_наибольшее,U_наименьшее,Рсм4_наибольшее,Рсм4_наименьшее,J_запомн:integer;
begin
If Button=mbMiddle  then   //mbMiddle mbRight
  begin //If Key=VK_RBUTTON  then
      gx:=x; gy:=y;
      Chart1.Repaint;
      //if Chart1.Series[i].GetCursorValueIndex<>-1 then
        for i:=0 to Chart1.SeriesCount-1 do
          if (Chart1.Series[i].GetCursorValueIndex<>-1) and (Chart1.Series[i].ClassType=TPointSeries) and (Chart1.Series[i].Visible=True) then
           begin   // for i:=0 to Chart1.SeriesCount-1 do
                Chart1.Series[i].GetCursorValues(tmpX,tmpY);
                metka1:= Chart1.Series[i].GetHorizAxis.LabelValue(tmpX);
                metka2:= Chart1.Series[i].GetVertAxis.LabelValue(tmpY);
                metka1:= StringReplace(metka1,' ','',[rfReplaceAll]);
                metka2:= StringReplace(metka2,' ','',[rfReplaceAll]);
                metka1_число:=StrToFloat(metka1);
                metka2_число:=StrToFloat(metka2);

               StatusBar1.Panels[0].Text:= 'U= '+ metka1;
               StatusBar1.Panels[1].Text:= 'Pсм= '+ metka2+' Па';
               Разница_U_мышь:=power(10,18);
               Разница_Pсм_мышь:=power(10,18);
               Разница_U_строка:=0 ;
               Разница_Pсм_строка:=Разница_Pсм_строка ;
               J_U_запомн:=0;
               J_Pсм_запомн:=1;
                   for J_стерка := 0 to Form8.StringGrid1.RowCount-1 do
                      begin // for J_стерка := 0 to Form8.StringGrid1.RowCount-1 do
                        try
                          begin
                            табл_U_число:=StrToFloat(Form8.StringGrid1.Cells[(i+1)*2-2,J_стерка]) ;
                            табл_Pсм_число:=StrToFloat(Form8.StringGrid1.Cells[(i+1)*2-1,J_стерка])  ;

                            Разница_U_строка:=abs((metka1_число-табл_U_число)/metka1_число*100) ;
                            Разница_Pсм_строка:=abs((metka2_число-табл_Pсм_число)/metka2_число*100);
                            if  Разница_U_мышь>(Разница_U_строка+Разница_Pсм_строка) then
                              begin
                                Разница_U_мышь:=(Разница_U_строка+Разница_Pсм_строка) ;
                                J_запомн:=J_стерка ;
                              end;
                          end;
                        Except

                      end; // for J_стерка := 0 to Form8.StringGrid1.RowCount-1 do

                  end; // for i:=0 to Chart1.SeriesCount-1 do



                    Form8.StringGrid1.Cells[(i+1)*2-2,J_запомн]:='';
                    Form8.StringGrid1.Cells[(i+1)*2-1,J_запомн]:='';
                    Chart1.Series[i].Clear;
                     for j_граф := 0 to Form8.StringGrid1.RowCount - 1 do
                         begin
                           Try
                             begin
                             Form6.Chart1.SeriesList[i].AddXY(strtofloat(Form8.StringGrid1.Cells[(i+1)*2-2,j_граф]),strtofloat(Form8.StringGrid1.Cells[(i+1)*2-1,j_граф]) ,'');
                            if Form6.CheckBox_Для_параметров_графика.Checked=False  then  //если на кнопку Настройка графика не разу не нажымали то
                              begin
                                if U_наибольшее<strtofloat(Form8.StringGrid1.Cells[(i+1)*2-2,j_граф]) then U_наибольшее:=Ceil(strtofloat(Form8.StringGrid1.Cells[(i+1)*2-2,j_граф])) ;
                                if U_наименьшее>strtofloat(Form8.StringGrid1.Cells[(i+1)*2-2,j_граф]) then U_наименьшее:=Ceil(strtofloat(Form8.StringGrid1.Cells[(i+1)*2-2,j_граф])) ;
                                //if Рсм4_наибольшее<strtofloat(Form8.StringGrid2.Cells[0,j_граф]) then U_наибольшее:=Ceil(strtofloat(Form8.StringGrid2.Cells[1,j_граф])) ;
                                //if Рсм4_наименьшее>strtofloat(Form8.StringGrid2.Cells[0,j_граф]) then U_наименьшее:=Ceil(strtofloat(Form8.StringGrid2.Cells[1,j_граф])) ;
                              end;
                             end;
                           except

                          End;
                         end;






               if (Chart1.Series[i].GetCursorValueIndex<>-1) and (Chart1.Series[i].Visible=True) then
                 begin
                   metka3:= Chart1.Series[i].Title;
                   StatusBar1.Panels[2].Text:= 'Название: ' + metka3;
                   ListBox1.Selected[i] := true  ;
                  // if Memo1.Lines[Memo1.Lines.Count-1]<>metka3 then
                   //      Memo1.Lines.Add(metka3);
                   Exit ;
                 end;
               if Chart1.Series[i].GetCursorValueIndex=-1 then
                    begin
                     StatusBar1.Panels[2].Text:= 'Название:';
                     ListBox1.Selected[i] := False  ;
                     //Memo1.Clear;
                    end;
           end ;  // for i:=0 to Chart1.SeriesCount-1 do
  end ; //If Key=VK_RBUTTON  then

end;

procedure TForm6.Chart1MouseEnter(Sender: TObject);
begin
if (CheckBox4.Checked=True) and (Form6.active) then
      ListBox1.SetFocus;
end;

procedure TForm6.Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var i,jj: integer;
    tmpX,tmpY:Double;
//Координаты Графика
      gx,gy: integer;
      metka1, metka2, metka3: string;
      Key: Char ;
begin
  if (CheckBox4.Checked=True) and (Form6.active) then
    begin      //if CheckBox4.Checked=True then
      gx:=x; gy:=y;
      Chart1.Repaint;

      for i:=0 to Chart1.SeriesCount-1 do
        begin   // for i:=0 to Chart1.SeriesCount-1 do
          Chart1.Series[i].GetCursorValues(tmpX,tmpY);
          metka1:= Chart1.Series[i].GetHorizAxis.LabelValue(tmpX);
          metka2:= Chart1.Series[i].GetVertAxis.LabelValue(tmpY);

         StatusBar1.Panels[0].Text:= 'U= '+ Chart1.Series[i].GetHorizAxis.LabelValue(tmpX);
         StatusBar1.Panels[1].Text:= 'Pсм= '+ Chart1.Series[i].GetVertAxis.LabelValue(tmpY)+' Па';

         if (Chart1.Series[i].GetCursorValueIndex<>-1) and (Chart1.Series[i].Visible=True) then
           begin
             metka3:= Chart1.Series[i].Title;
             StatusBar1.Panels[2].Text:= 'Название: ' + metka3;
             ListBox1.Selected[i] := true  ;
             Chart1.Series[i].Pen.Width:=3;
             if (Chart1.Series[i].ClassType=TPointSeries) and (CheckBox5.Checked=False) then
                 (Chart1.Series[i] as TPointSeries).Pointer.Size:=7;
            // if Memo1.Lines[Memo1.Lines.Count-1]<>metka3 then
            //       Memo1.Lines.Add(metka3);
             Exit ;
           end;
         if Chart1.Series[i].GetCursorValueIndex=-1 then
              begin
               StatusBar1.Panels[2].Text:= 'Название:';
               ListBox1.Selected[i] := False  ;
               Chart1.Series[i].Pen.Width:=1;
               if (Chart1.Series[i].ClassType=TPointSeries) and (CheckBox5.Checked=False) then
                   (Chart1.Series[i] as TPointSeries).Pointer.Size:=4;
               //Memo1.Clear;
              end;
 end ;  // for i:=0 to Chart1.SeriesCount-1 do

    end;  //if CheckBox4.Checked=True then
end;




procedure TForm6.CheckBox2Click(Sender: TObject);
begin
   if CheckBox2.Checked=True then Form1.CheckBox2.Checked:=True ;
   if CheckBox2.Checked=False then Form1.CheckBox2.Checked:=False ;
end;

procedure TForm6.CheckBox4Click(Sender: TObject);
begin
  ListBox1.SetFocus;
end;

procedure TForm6.CheckBox5Click(Sender: TObject);
var i_стр_списка,j_стр_списка: integer;
begin
//  if CheckBox5.Checked=True then
//       CheckBox4.Checked:=False;
if CheckBox5.Checked=False then
   for i_стр_списка:= 0 to ListBox1.Items.Count - 1 do
      begin
        Chart1.Series[i_стр_списка].Pen.Width:=1;
        Chart1.Series[i_стр_списка].Visible:=True;
        if Chart1.Series[i_стр_списка].ClassType=TPointSeries then
            (Chart1.Series[i_стр_списка] as TPointSeries).Pointer.Size:=4;
      end;
end;

procedure TForm6.Edit1Change(Sender: TObject);
begin
if (Пересчет=True) and (Form1.CheckBox_φи2соп.Checked=False) then
    begin
      try φ↓р1↑соп:=strtofloat(Edit1.Text); except exit;  end;
      try φ↓диф:=strtofloat(Edit2.Text); except exit;  end;
      try φ↓кс:=strtofloat(Edit3.Text); except exit;  end;
      try φ↓и2↑соп:=strtofloat(Edit4.Text); except exit;  end;
      if (φ↓р1↑соп<0) or (φ↓диф<0) or (φ↓кс<0) or (φ↓и2↑соп<0)
         or (φ↓р1↑соп>1) or (φ↓диф>1) or (φ↓кс>1) or (φ↓и2↑соп>1) then exit;

      Form1.Edit_φр1соп.Text:=Edit1.Text ;
      Form1.Edit_φдиф.Text:=Edit2.Text ;
      Form1.Edit_φкс.Text:=Edit3.Text ;
      Form1.Edit_φи2соп.Text:=Edit4.Text ;
      Form1.Button_Расчет.Click ;
    end;
end;

procedure TForm6.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
     '0'..'9', #8: ;  //цифры и Backspace
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit1.Text)<>0  then  Key:=#0  ;
        end;
      '-':    Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;

procedure TForm6.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
     '0'..'9', #8: ;  //цифры и Backspace
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit2.Text)<>0  then  Key:=#0  ;
        end;
      '-':    Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;

procedure TForm6.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
     '0'..'9', #8: ;  //цифры и Backspace
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit3.Text)<>0  then  Key:=#0  ;
        end;
      '-':    Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;

procedure TForm6.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
     '0'..'9', #8: ;  //цифры и Backspace
     '.',',':
        begin
          key:=DecimalSeparator ;
          if pos(DecimalSeparator,Edit4.Text)<>0  then  Key:=#0  ;
        end;
      '-':    Key:=#0  ;
     else Key:=#0 ; //Остальные символы не отображаются
  end;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin

ListBox1.Left:= 0;
Label2.Left:= 0;
PageControl1.Left:= 0;
PageControl1.top:= 0;
PageControl2.Left:= 0;
PageControl2.top:= 0;
PageControl2.Height:= ClientHeight;
PageControl2.Width:= ClientWidth;
PageControl1.Height:= TabSheet_Зад1.ClientHeight;
PageControl1.Width:= TabSheet_Зад1.ClientWidth;

//ListBox1.Width:=TabSheet_З1_Граф.ClientWidth -Button8.Width - Button11.Width -1  ;
ListBox1.Width:=TabSheet_З1_Граф.ClientWidth -Button8.Width - Button11.Width -1 ;
ListBox1.top:=TabSheet_З1_Граф.ClientHeight-ListBox1.Height-StatusBar1.Height-Memo1.Height   ;
Chart1.top:=Panel1.Height+Panel1.top;
Chart1.Width:=TabSheet_З1_Граф.ClientWidth;
Chart1.Height:=TabSheet_З1_Граф.ClientHeight-Panel1.Height-Panel1.top-ListBox1.Height-Label2.Height{-Высота_листа};
Label2.left:=0;
Label2.top:=Chart1.Height+Chart1.top;
ListBox1.left:=0;
//ListBox1.top:=Chart1.Height+Chart1.top+Label2.Height   ;
Button11.top:=ListBox1.top ;
Button11.left:=ListBox1.Width+ListBox1.left ;
Button11.Height:=ListBox1.Height ;
Button8.left:= Button11.left+Button11.Width+2;
Button8.top:= Button11.top;
Button8.Height:=Button11.Height ;

//Высота_листа:=PageControl1.Height-TabSheet1.Height    ;
//Шарина_листа:=PageControl1.Width-TabSheet1.Width    ;
i_Form6:=0;
StringGrid1.Cells[i_Form6,0]:='№';  i_Form6:=i_Form6+1;
StringGrid1.Cells[i_Form6,0]:='Название';  i_Form6:=i_Form6+1;
StringGrid1.Cells[i_Form6,0]:='Pp0, Па';  i_Form6:=i_Form6+1;
StringGrid1.Cells[i_Form6,0]:='U';  i_Form6:=i_Form6+1;
StringGrid1.Cells[i_Form6,0]:='Gp, кг/ч';  i_Form6:=i_Form6+1;
StringGrid1.Cells[i_Form6,0]:='Gи, кг/ч';  i_Form6:=i_Form6+1;
StringGrid1.Cells[i_Form6,0]:='Рсм4, Па';  i_Form6:=i_Form6+1;
StringGrid1.Cells[i_Form6,0]:='υсм4';  i_Form6:=i_Form6+1;
StringGrid1.Cells[i_Form6,0]:='Тсм4';  i_Form6:=i_Form6+1;
StringGrid1.Cells[i_Form6,0]:='ξсм4';  i_Form6:=i_Form6+1;
StringGrid1.Cells[i_Form6,0]:='Rсм';  i_Form6:=i_Form6+1;
StringGrid1.Cells[i_Form6,0]:='kсм';  i_Form6:=i_Form6+1;
StringGrid1.Cells[i_Form6,0]:='Cpсм';  i_Form6:=i_Form6+1;
StringGrid1.Cells[i_Form6,0]:='Rр';  i_Form6:=i_Form6+1;
StringGrid1.Cells[i_Form6,0]:='kр';  i_Form6:=i_Form6+1;
StringGrid1.Cells[i_Form6,0]:='Cpр';  i_Form6:=i_Form6+1;
StringGrid1.Cells[i_Form6,0]:='Rи';  i_Form6:=i_Form6+1;
StringGrid1.Cells[i_Form6,0]:='kи';  i_Form6:=i_Form6+1;
StringGrid1.Cells[i_Form6,0]:='Cpи';  i_Form6:=i_Form6+1;
StringGrid1.ColCount:=i_Form6;
Label3.Left:=0;
Label3.top:=StringGrid1.Height+StringGrid1.top ;
RadioGroup1.top:=0;
RadioGroup1.Left:=0;
//RadioGroup1.Width:=Label3.Width;
ScrollBox1.top:=Label3.top+Label3.Height;
ScrollBox1.Left:=0;
ScrollBox1.Width:=TabSheet_З1_Резу.ClientWidth ;
ScrollBox1.Height:=ListBox1.Height+Memo1.Height;
//ScrollBox1.Width:=Round(RadioGroup1.Width*1.2);
StringGrid1.top:=0;
StringGrid1.Left:=0 ;
StringGrid1.Height:= TabSheet_З1_Резу.ClientHeight-ScrollBox1.Height-Label3.Height;
StringGrid1.Width:= TabSheet_З1_Резу.ClientWidth{-Шарина_листа};
Memo1.top:=ListBox1.top+ListBox1.Width;
Memo1.Width:=TabSheet_З1_Граф.ClientWidth;

CheckBox4.Height:=Button3.Top+Button3.Height ;
CheckBox4.Left:=Button3.Left+Button3.Width+8 ;
CheckBox5.Top:=Button4.Top;
CheckBox5.Height:=Button3.Height ;
CheckBox5.Left:=Button3.Left+Button3.Width+8 ;
{
PageControl2.Width:= ClientWidth;
PageControl2.Height:= ClientHeight;
Высота_листа_Зад:=Form6.ClientHeight-Form6.TabSheet3.Height ;
Ширена_листа_Зад:=Form6.ClientWidth-Form6.TabSheet3.Width ;
PageControl1.Height:=TabSheet3.Height    ;
PageControl1.Width:=TabSheet3.Width    ;
Высота_листа:=PageControl1.Height-TabSheet1.Height    ;
Шарина_листа:=PageControl1.Width-TabSheet1.Width    ;
Высота_листа:=Высота_листа+Ширена_листа_Зад ;
Шарина_листа:=Шарина_листа+Высота_листа_Зад ;
  }

//StringGrid2.Height:=TabSheet4.Height ;
end;

procedure TForm6.FormResize(Sender: TObject);
begin
//PageControl2.Width:= ClientWidth;
//PageControl2.Height:= ClientHeight;

PageControl2.Width:=ClientWidth    ;
PageControl2.Height:=ClientHeight  ;
PageControl1.Width:= TabSheet_Зад1.ClientWidth;//-Шарина_листа;
PageControl1.Height:= TabSheet_Зад1.ClientHeight;//-Высота_листа;
//Chart1.Width:=TabSheet_З1_Граф.ClientWidth-ListBox1.Width-ListBox1.Left;
//Chart1.Height:=TabSheet_З1_Граф.ClientHeight-Panel1.Height-Panel1.top{-Высота_листа};

ListBox1.Width:=TabSheet_З1_Граф.ClientWidth -Button8.Width - Button11.Width -1 ;
ListBox1.top:=TabSheet_З1_Граф.ClientHeight-ListBox1.Height-StatusBar1.Height-Memo1.Height   ;

Chart1.top:=Panel1.Height+Panel1.top;
Chart1.Width:=TabSheet_З1_Граф.ClientWidth;
Chart1.Height:=TabSheet_З1_Граф.ClientHeight-Panel1.Height-Panel1.top-ListBox1.Height-Label2.Height-StatusBar1.Height-Memo1.Height{-Высота_листа};
Label2.left:=0;
Label2.top:=Chart1.Height+Chart1.top;
ListBox1.left:=0;
//ListBox1.top:=Chart1.Height+Chart1.top+Label2.Height   ;
Button11.top:=ListBox1.top ;
Button11.left:=ListBox1.Width+ListBox1.left ;
Button11.Height:=ListBox1.Height ;
Button8.left:= Button11.left+Button11.Width+2;
Button8.top:= Button11.top;
Button8.Height:=Button11.Height ;
Memo1.left:=0;
Memo1.top:=Button8.top+Button8.Height;
Memo1.Width:=TabSheet_З1_Граф.ClientWidth;


//ScrollBox1.Width:=RadioGroup1.Width * 3 div 2 ;
if (RadioGroup1.Items.Count=0) and (StringGrid1.Visible=False )then
              StringGrid1.Visible:=True ;
if (RadioGroup1.Items.Count<>0) and (StringGrid1.Visible=True )then
              StringGrid1.Visible:=False ;

if RadioGroup1.Items.Count=0 then
  begin
  StringGrid1.Width:= TabSheet_З1_Резу.ClientWidth{-Шарина_листа};
  StringGrid1.Height:= TabSheet_З1_Резу.ClientHeight-ScrollBox1.Height-Label3.Height;
  Label3.top:=StringGrid1.Height+StringGrid1.top ;
  ScrollBox1.top:=Label3.Height+Label3.top;
  ScrollBox1.Width:=TabSheet_З1_Резу.ClientWidth  ;
  end
  else
   begin // else
     for III := Form1.componentCount-1  downto КоличествоКомпонентов-1 do
       begin
         //Имя:=(Form1.Components[III] ).name ;
         if ((Form1.Components[III]).ClassType=TStringGrid)  then
             if (Form1.Components[III] as TStringGrid).Cells[1, 1]=RadioGroup1.Items[Form6.RadioGroup1.ItemIndex]  then
                  begin
                 //Ячейка:=(Form1.Components[III] as TStringGrid).Cells[1, 1] ;
                  //(Form1.Components[III] as TStringGrid).Left:=ScrollBox1.Left+ScrollBox1.Width ;
                  (Form1.Components[III] as TStringGrid).Width:= TabSheet_З1_Резу.ClientWidth{-Шарина_листа};
                  (Form1.Components[III] as TStringGrid).Height:= TabSheet_З1_Резу.ClientHeight-ScrollBox1.Height-Label3.Height-StatusBar1.Height{-Высота_листа};
                   Label3.top:=(Form1.Components[III] as TStringGrid).Height+(Form1.Components[III] as TStringGrid).top ;
                   ScrollBox1.top:=Label3.Height+Label3.top;
                   ScrollBox1.Width:=TabSheet_З1_Резу.ClientWidth  ;
                  // ScrollBox1.Height:=(Form1.Components[III] as TStringGrid).Height div 2 ;
                  //Имя:=(Form1.Components[III] ).name ;
                 //(Form1.FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл-Form6.RadioGroup1.Items.Count+Form6.RadioGroup1.ItemIndex+1)) as TStringGrid).Visible:=True ;
                      //(Form1.FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл-Form6.RadioGroup1.Items.Count+Form6.RadioGroup1.ItemIndex+1)) as TStringGrid).Visible:=True ;
                  (Form1.Components[III] as TStringGrid).Visible:=True ;
                  end;//Chart1.top:=Panel1.Height+Panel1.top
       end;
     end;  // else
end;

procedure TForm6.FormShow(Sender: TObject);
begin
//TStringGrid(Form1.Components[Form1.componentCount-radiogroup1.ItemIndex]).Visible:=True ;
//Form6.Release;
 StringGrid1.Left:=0 ;
 if PageControl1.ActivePage=TabSheet_З1_Граф then
    ListBox1.SetFocus;
 //Ширена_листа_Зад:=ClientWidth-TabSheet5.Width;
//Высота_листа_Зад:=ClientHeight-TabSheet5.Height;
end;

procedure TForm6.ListBox1Click(Sender: TObject);
  var i_стр_списка,j_стр_списка,Длина_строки,j_строки,Номер_буквы: integer;
      Название_блокнота:String ;
begin
for i_стр_списка := 0 to ListBox1.Items.Count - 1 do
      begin
        Chart1.Series[i_стр_списка].Pen.Width:=1;
        if CheckBox5.Checked=True then
           Chart1.Series[i_стр_списка].Visible:=False;
        if Chart1.Series[i_стр_списка].ClassType=TPointSeries then
            (Chart1.Series[i_стр_списка] as TPointSeries).Pointer.Size:=4;
      end;

for i_стр_списка := 0 to ListBox1.Items.Count - 1 do
    if ListBox1.Selected[i_стр_списка] = true  then
          begin
            Chart1.Series[i_стр_списка].Pen.Width:=5;
        if CheckBox5.Checked=True then
            begin
               Chart1.Series[i_стр_списка].Visible:=True;
             //http://www.cyberforum.ru/delphi-beginners/thread112106.html
             //  Длина_строки:=length(Chart1.Series[i_стр_списка].Title)   ;
             //  for j_строки:= 0 to Длина_строки do
             //     begin
            //          Номер_буквы:= pos(':', Длина_строки);
            //          while Номер_буквы <> 0 do
            //              begin
            //                Название_блокнота:=Copy(Длина_строки, 0, Номер_буквы);
            //                for i_стр_списка := 0 to ListBox1.Items.Count - 1 do
            //                     begin
            //
           //                      end;
           //               end;
                 end;
            if Chart1.Series[i_стр_списка].ClassType=TPointSeries then
               (Chart1.Series[i_стр_списка] as TPointSeries).Pointer.Size:=7;
          end;
end;

procedure TForm6.ListBox1KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
   #8 : if ListBox1.Focused=True then Button8.Click  ;
end;

end;

procedure TForm6.ListBox1MouseEnter(Sender: TObject);
begin
if Form6.active then
  ListBox1.SetFocus;
end;

procedure TForm6.Memo1MouseEnter(Sender: TObject);
begin
if Form6.active then
  Memo1.SetFocus;
end;

procedure TForm6.RadioGroup1Click(Sender: TObject);
begin
//(Form1.FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл-Form6.RadioGroup1.Items.Count+1)) as TStringGrid).Visible:=True ;
 // for III := 131  to Form1.componentCount-1 do
 //   Имя:=(Form1.Components[III]).name ;
for III := Form1.componentCount-1  downto КоличествоКомпонентов-1 do  //    Form6.TabSheet2.componentCount
  begin
    if (Form1.Components[III]).ClassType=TStringGrid then
        begin
         (Form1.Components[III] as TStringGrid).Visible:=False ;
          //Имя:=(Form1.Components[III] as TStringGrid).name ;
          //Ячейка:=(Form1.Components[III] as TStringGrid).Cells[1, 1] ;
        end;
  end;
if   (Form6.radiogroup1.Items.Count=1)  then
      (Form1.FindComponent('myStringGrid1') as TStringGrid).Visible:=True ;
 //Имя:=(Form1.Components[КоличествоКомпонентов+Form6.RadioGroup1.ItemIndex*2+1] ).name ;
for III := Form1.componentCount-1  downto КоличествоКомпонентов-1 do
  begin
    //Имя:=(Form1.Components[III] ).name ;
    if ((Form1.Components[III]).ClassType=TStringGrid)  then
        if (Form1.Components[III] as TStringGrid).Cells[1, 1]=RadioGroup1.Items[Form6.RadioGroup1.ItemIndex]  then
             begin
                 //Ячейка:=(Form1.Components[III] as TStringGrid).Cells[1, 1] ;
                  //(Form1.Components[III] as TStringGrid).Left:=ScrollBox1.Left+ScrollBox1.Width ;
                  (Form1.Components[III] as TStringGrid).Width:= TabSheet_З1_Резу.ClientWidth{-Шарина_листа};
                  (Form1.Components[III] as TStringGrid).Height:= TabSheet_З1_Резу.ClientHeight-ScrollBox1.Height-Label3.Height{-Высота_листа};
                   Label3.top:=(Form1.Components[III] as TStringGrid).Height+(Form1.Components[III] as TStringGrid).top ;
                   ScrollBox1.top:=Label3.Height+Label3.top;
                   ScrollBox1.Width:=TabSheet_З1_Резу.ClientWidth  ;
                  // ScrollBox1.Height:=(Form1.Components[III] as TStringGrid).Height div 2 ;
                  //Имя:=(Form1.Components[III] ).name ;
                 //(Form1.FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл-Form6.RadioGroup1.Items.Count+Form6.RadioGroup1.ItemIndex+1)) as TStringGrid).Visible:=True ;
                      //(Form1.FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл-Form6.RadioGroup1.Items.Count+Form6.RadioGroup1.ItemIndex+1)) as TStringGrid).Visible:=True ;
                  (Form1.Components[III] as TStringGrid).Visible:=True ;
             end;

     //    ((Form1.Components[III]).
     //                                 (FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл)) as TStringGrid).Cells[i_столбец, i_строка] := Form6.Chart1.Series[Form6.Chart1.SeriesCount-1].Title;
  end;
 //(Form1.Components[КоличествоКомпонентов+Form6.RadioGroup1.ItemIndex*2+1] as TStringGrid).Width:= ClientWidth-Шарина_листа-(Label3.Left+Label3.Width);
 //(Form1.Components[КоличествоКомпонентов+Form6.RadioGroup1.ItemIndex*2+1] as TStringGrid).Height:= ClientHeight-Высота_листа;
//(Form1.FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл-Form6.RadioGroup1.Items.Count+Form6.RadioGroup1.ItemIndex+1)) as TStringGrid).Visible:=True ;
//(Form1.FindComponent('myStringGrid'+FloatToStr(jj_номер_Табл-Form6.RadioGroup1.Items.Count+Form6.RadioGroup1.ItemIndex+1)) as TStringGrid).Visible:=True ;
// (Form1.Components[КоличествоКомпонентов+Form6.RadioGroup1.ItemIndex*2+1] as TStringGrid).Visible:=True ;
end;

end.
