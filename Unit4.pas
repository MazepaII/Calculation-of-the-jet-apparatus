unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TSplashForm = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashForm: TSplashForm;

implementation

uses Unit1;

{$R *.dfm}

procedure TSplashForm.Timer1Timer(Sender: TObject);
begin
Timer1.Enabled:=false;
SplashForm.Close;
Application.ShowMainForm:=True;
Form1.show;
end;

end.
