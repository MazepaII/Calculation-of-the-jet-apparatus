unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Clipbrd, Menus, StdCtrls;

type
  TForm5 = class(TForm)
    StringGrid_�������: TStringGrid;
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

//���������
//��������� ���������� ����� StringGrid � ClipBoard � �������, �����������
//�������, ��������, � Word ��� Excel. ��� CopySel=True �������� ���������,
//����� ��� ������� ��� ��������� �������� (CL- ����� ������� � �.�.).
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
    //��� ������������� FixedRows � FixedCols ����� �������� �� 0
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


//����
procedure TForm5.N1Click(Sender: TObject);
begin
SGCopyToCLP(StringGrid_�������, False); //��� ������
//SGCopyToCLP(StringGrid_�������, True); //���������
//SGCopyToCLP(StringGrid_�������, False, 1, 1, 3, 2); //��������, 6 �����
end;

end.
