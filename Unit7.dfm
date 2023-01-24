object Form7: TForm7
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Form7'
  ClientHeight = 373
  ClientWidth = 394
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 66
    Top = 0
    Width = 277
    Height = 29
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1086#1089#1077#1081' '#1075#1088#1072#1092#1080#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 1
    Top = 51
    Width = 393
    Height = 158
    BorderStyle = bsSingle
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object Label23: TLabel
      Left = 11
      Top = 61
      Width = 165
      Height = 19
      Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 1
      Top = 1
      Width = 103
      Height = 22
      Caption = #1053#1080#1078#1085#1103#1103' '#1086#1089#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 11
      Top = 96
      Width = 160
      Height = 19
      Caption = #1052#1080#1085#1077#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 11
      Top = 131
      Width = 93
      Height = 19
      Caption = #1062#1077#1085#1072' '#1076#1077#1083#1077#1085#1080#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 12
      Top = 29
      Width = 107
      Height = 19
      Caption = #1040#1074#1090#1086' '#1085#1072#1089#1090#1088#1086#1081#1082#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object EditЦДН: TEdit
      Left = 272
      Top = 127
      Width = 120
      Height = 27
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0,1'
      OnChange = EditЦДНChange
    end
    object EditMinН: TEdit
      Left = 272
      Top = 92
      Width = 120
      Height = 27
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '-1'
      OnChange = EditMinНChange
    end
    object EditMaxH: TEdit
      Left = 272
      Top = 57
      Width = 120
      Height = 27
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '2'
      OnChange = EditMaxHChange
    end
    object CheckBox1: TCheckBox
      Left = 272
      Top = 32
      Width = 97
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = CheckBox1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 215
    Width = 393
    Height = 158
    BorderStyle = bsSingle
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    object Label5: TLabel
      Left = 11
      Top = 61
      Width = 165
      Height = 19
      Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 1
      Top = 1
      Width = 87
      Height = 22
      Caption = #1051#1077#1074#1072#1103' '#1086#1089#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 11
      Top = 96
      Width = 160
      Height = 19
      Caption = #1052#1080#1085#1077#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 11
      Top = 131
      Width = 93
      Height = 19
      Caption = #1062#1077#1085#1072' '#1076#1077#1083#1077#1085#1080#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 12
      Top = 29
      Width = 107
      Height = 19
      Caption = #1040#1074#1090#1086' '#1085#1072#1089#1090#1088#1086#1081#1082#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object EditЦДЛ: TEdit
      Left = 273
      Top = 127
      Width = 120
      Height = 27
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '100'
      OnChange = EditЦДЛChange
    end
    object EditMinЛ: TEdit
      Left = 273
      Top = 92
      Width = 120
      Height = 27
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0'
      OnChange = EditMinЛChange
    end
    object EditMaxЛ: TEdit
      Left = 273
      Top = 55
      Width = 120
      Height = 27
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '7000'
      OnChange = EditMaxЛChange
    end
    object CheckBox2: TCheckBox
      Left = 272
      Top = 32
      Width = 97
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = CheckBox2Click
    end
  end
end
