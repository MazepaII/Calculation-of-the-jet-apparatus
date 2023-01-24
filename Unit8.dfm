object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Form8'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid2: TStringGrid
    Left = 0
    Top = 0
    Width = 609
    Height = 291
    ColCount = 2
    FixedCols = 0
    FixedRows = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goEditing]
    TabOrder = 0
    ColWidths = (
      64
      64)
  end
  object StringGrid1: TStringGrid
    Left = 224
    Top = 0
    Width = 337
    Height = 291
    ColCount = 2
    FixedCols = 0
    FixedRows = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goEditing]
    TabOrder = 1
    ColWidths = (
      64
      64)
  end
  object Button1: TButton
    Left = 0
    Top = 274
    Width = 310
    Height = 25
    Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1091' '#1074' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072' '
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 312
    Top = 274
    Width = 324
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1088#1080#1074#1099#1077' '#1074' '#1092#1072#1081#1083#1099
    TabOrder = 3
    OnClick = Button2Click
  end
  object SaveTextFileDialog1: TSaveTextFileDialog
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090' (txt)|*.txt'
    Left = 496
    Top = 24
  end
end
