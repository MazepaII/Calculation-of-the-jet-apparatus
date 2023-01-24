unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls,ExtDlgs;

type
  TForm8 = class(TForm)
    StringGrid2: TStringGrid;
    StringGrid1: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    SaveTextFileDialog1: TSaveTextFileDialog;
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit1, Unit6;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
//  SGCopyToCLP(StringGrid1, True); //выделение
Form6.SGCopyToCLP(StringGrid1, False); //все €чейки
//  SGCopyToCLP(StringGrid1, False, 1, 1, 3, 2); //диапазон, 6 €чеек

end;

procedure TForm8.Button2Click(Sender: TObject);
var
f: textfile;
i_сохран,j_сохран: integer;
название_файла,„етыри_знака: string;
begin
SaveTextFileDialog1.filename := '!!!не чего не вписывать!!!' ;
SaveTextFileDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  if SaveTextFileDialog1.Execute then
     begin   //SaveTextFileDialog1.Execute then
       //if FileExists(SaveTextFileDialog1.FileName) then
            for i_сохран:= 0 to StringGrid1.colcount-1 do
               begin
                   try
                     begin
                       название_файла:=StringGrid1.Cells[(i_сохран+1)*2-2,0] ;
                       „етыри_знака:=Copy(название_файла,Length(название_файла)-3,Length(название_файла)) ;
                       if „етыри_знака='.txt' then  //добавим '.txt' если нужно
                          название_файла:=StringGrid1.Cells[(i_сохран+1)*2-2,0]
                       else
                          название_файла:=StringGrid1.Cells[(i_сохран+1)*2-2,0]+'.txt' ;

                       assignfile(f, StringGrid1.Cells[(i_сохран+1)*2-2,0]);
                       rewrite(f);
                       for j_сохран:= 2 to stringgrid1.RowCount - 1 do
                          begin
                             if stringgrid1.Cells[(i_сохран+1)*2-2, j_сохран]<>'' then
                                begin
                                  write(f, stringgrid1.Cells[(i_сохран+1)*2-2, j_сохран], '	');
                                  write(f, stringgrid1.Cells[(i_сохран+1)*2-1, j_сохран], '');
                                  writeln(f);
                                end;
                          end;
                      closefile(f);
                     end;
                   Except
                   end;
               end;
     end;   //SaveTextFileDialog1.Execute then

end;

procedure TForm8.FormCreate(Sender: TObject);
begin
StringGrid1.Left:= 0;
StringGrid1.top:= 0;
Button1.Height:=Button2.Height ;
StringGrid1.Height:= ClientHeight-Button1.Height;
StringGrid1.Width:= ClientWidth ;
StringGrid2.Height:= 0;
StringGrid2.Width:= 0 ;
Button1.Left:= 0;
Button1.Top:=StringGrid1.Height ;
Button1.Width:=ClientWidth div 2  ;
Button2.Left:= Button1.Width;
Button2.Top:=Button1.top ;
Button2.Width:=ClientWidth div 2  ;
end;

procedure TForm8.FormResize(Sender: TObject);
begin
StringGrid1.Height:= ClientHeight-Button1.Height;
StringGrid1.Width:= ClientWidth ;
Button1.Top:=StringGrid1.Height ;
Button1.Width:=ClientWidth div 2  ;
Button2.Left:= Button1.Width;
Button2.Top:=Button1.top ;
Button2.Width:=ClientWidth div 2  ;
//StringGrid2.Height:= ClientHeight;
//StringGrid2.Width:= ClientWidth;
end;

end.
