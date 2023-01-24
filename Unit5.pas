unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Clipbrd, Menus, StdCtrls;

type
  TForm5 = class(TForm)
    StringGrid_Результ: TStringGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Edit_U: TEdit;
    Label1: TLabel;
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

//Процедура
//ККопирует содержимое ячеек StringGrid в ClipBoard в формате, позволяющем
//вставку, например, в Word или Excel. При CopySel=True копирует выделение,
//иначе всю таблицу или указанный диапазон (CL- левый столбец и т.д.).
procedure SGCopyToCLP(SG: TStringGrid; CopySel: Boolean; CL: integer = -1;
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
      CL := FixedCols;
    if (CR < FixedCols) or (CL > CR) or (CR >= ColCount) then
      CR := ColCount - 1;
    if (RT < FixedRows) or (RT > RB) or (RT >= RowCount) then
      RT := FixedRows;
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


//Меню
procedure TForm5.N1Click(Sender: TObject);
begin
SGCopyToCLP(StringGrid_Результ, False); //все ячейки
//SGCopyToCLP(StringGrid_Результ, True); //выделение
//SGCopyToCLP(StringGrid_Результ, False, 1, 1, 3, 2); //диапазон, 6 ячеек
end;

end.
