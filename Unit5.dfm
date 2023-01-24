object Form5: TForm5
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Form5'
  ClientHeight = 401
  ClientWidth = 661
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 339
    Width = 48
    Height = 13
    Caption = #1082#1086#1101#1092' '#1080#1085#1078
  end
  object StringGrid_Результ: TStringGrid
    Left = 0
    Top = 0
    Width = 557
    Height = 321
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goEditing]
    TabOrder = 0
  end
  object Edit_U: TEdit
    Left = 112
    Top = 336
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object MainMenu1: TMainMenu
    Left = 584
    Top = 152
    object N1: TMenuItem
      Caption = #1082#1086#1087#1080#1088#1086#1074#1072#1090#1100
      ShortCut = 16451
      Visible = False
      OnClick = N1Click
    end
  end
end
