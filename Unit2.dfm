object Form2: TForm2
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1057#1074#1086#1081#1089#1090#1074#1072' '#1075#1072#1079#1086#1074
  ClientHeight = 307
  ClientWidth = 681
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl2: TPageControl
    Left = 0
    Top = 0
    Width = 534
    Height = 307
    ActivePage = TabSheet3
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = #1047#1072#1076#1072#1095#1072'1'
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 528
        Height = 281
        ActivePage = TabSheet1
        TabOrder = 0
        OnChange = PageControl1Change
        object TabSheet1: TTabSheet
          Caption = #1056#1072#1073#1086#1095#1080#1081' '#1075#1072#1079
          object Label3: TLabel
            Left = 141
            Top = 5
            Width = 179
            Height = 19
            Caption = #1057#1086#1089#1090#1072#1074' '#1088#1072#1073#1086#1095#1077#1075#1086' '#1087#1086#1090#1086#1082#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object StringGrid_Раб: TStringGrid
            Left = 0
            Top = 30
            Width = 510
            Height = 176
            RowCount = 6
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowMoving, goEditing, goAlwaysShowEditor, goFixedRowClick]
            ParentFont = False
            TabOrder = 0
            OnSelectCell = StringGrid_РабSelectCell
          end
          object StringGrid1: TStringGrid
            Left = 0
            Top = 205
            Width = 508
            Height = 37
            RowCount = 1
            FixedRows = 0
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowMoving, goEditing, goAlwaysShowEditor, goFixedRowClick]
            ParentFont = False
            TabOrder = 1
            OnSelectCell = StringGrid_РабSelectCell
          end
        end
        object TabSheet2: TTabSheet
          Caption = #1048#1085#1078#1077#1082#1090#1080#1088#1091#1077#1084#1099#1081' '#1075#1072#1079
          ImageIndex = 1
          object Label4: TLabel
            Left = 117
            Top = 5
            Width = 234
            Height = 19
            Caption = #1057#1086#1089#1090#1072#1074' '#1080#1085#1078#1077#1082#1090#1080#1088#1091#1077#1084#1086#1075#1086' '#1087#1086#1090#1086#1082#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object StringGrid_Ин: TStringGrid
            Left = 0
            Top = 30
            Width = 510
            Height = 176
            RowCount = 6
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowMoving, goEditing, goFixedRowClick]
            ParentFont = False
            TabOrder = 0
            OnSelectCell = StringGrid_ИнSelectCell
          end
          object StringGrid2: TStringGrid
            Left = 0
            Top = 205
            Width = 496
            Height = 37
            RowCount = 1
            FixedRows = 0
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowMoving, goEditing, goAlwaysShowEditor, goFixedRowClick]
            ParentFont = False
            TabOrder = 1
            OnSelectCell = StringGrid_РабSelectCell
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1047#1072#1076#1072#1095#1072'2'
      ImageIndex = 1
      object Button2: TButton
        Left = 544
        Top = 32
        Width = 116
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1090#1088#1086#1082#1091
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button4: TButton
        Left = 544
        Top = 252
        Width = 116
        Height = 25
        Caption = 'OK'
        TabOrder = 1
        OnClick = Button3Click
      end
      object ComboBox2: TComboBox
        Left = 536
        Top = 71
        Width = 145
        Height = 21
        TabOrder = 2
        OnChange = ComboBox1Change
      end
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 528
        Height = 281
        ActivePage = TabSheet5
        TabOrder = 3
        object TabSheet5: TTabSheet
          Caption = #1056#1072#1073#1086#1095#1080#1081' '#1075#1072#1079
          object Label1: TLabel
            Left = 141
            Top = 5
            Width = 179
            Height = 19
            Caption = #1057#1086#1089#1090#1072#1074' '#1088#1072#1073#1086#1095#1077#1075#1086' '#1087#1086#1090#1086#1082#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object StringGrid3: TStringGrid
            Left = 0
            Top = 30
            Width = 510
            Height = 176
            ColCount = 6
            RowCount = 6
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowMoving, goEditing, goAlwaysShowEditor, goFixedRowClick]
            ParentFont = False
            TabOrder = 0
            OnSelectCell = StringGrid_РабSelectCell
          end
          object StringGrid4: TStringGrid
            Left = 0
            Top = 205
            Width = 508
            Height = 37
            ColCount = 6
            RowCount = 1
            FixedRows = 0
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowMoving, goEditing, goAlwaysShowEditor, goFixedRowClick]
            ParentFont = False
            TabOrder = 1
            OnSelectCell = StringGrid_РабSelectCell
          end
        end
        object TabSheet6: TTabSheet
          Caption = #1048#1085#1078#1077#1082#1090#1080#1088#1091#1077#1084#1099#1081' '#1075#1072#1079
          ImageIndex = 1
          object Label2: TLabel
            Left = 117
            Top = 5
            Width = 234
            Height = 19
            Caption = #1057#1086#1089#1090#1072#1074' '#1080#1085#1078#1077#1082#1090#1080#1088#1091#1077#1084#1086#1075#1086' '#1087#1086#1090#1086#1082#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object StringGrid5: TStringGrid
            Left = 5
            Top = 30
            Width = 510
            Height = 176
            ColCount = 6
            RowCount = 6
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowMoving, goEditing, goFixedRowClick]
            ParentFont = False
            TabOrder = 0
            OnSelectCell = StringGrid_ИнSelectCell
          end
          object StringGrid6: TStringGrid
            Left = 0
            Top = 205
            Width = 496
            Height = 37
            ColCount = 6
            RowCount = 1
            FixedRows = 0
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowMoving, goEditing, goAlwaysShowEditor, goFixedRowClick]
            ParentFont = False
            TabOrder = 1
            OnSelectCell = StringGrid_РабSelectCell
          end
        end
      end
    end
  end
  object Button1: TButton
    Left = 544
    Top = 32
    Width = 116
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1090#1088#1086#1082#1091
    TabOrder = 1
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 536
    Top = 71
    Width = 145
    Height = 21
    TabOrder = 2
    OnChange = ComboBox1Change
  end
  object Button3: TButton
    Left = 540
    Top = 265
    Width = 116
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = Button3Click
  end
end
