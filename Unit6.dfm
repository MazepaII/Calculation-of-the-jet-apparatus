object Form6: TForm6
  Left = 0
  Top = 0
  Caption = #1047#1072#1074#1080#1089#1080#1084#1086#1089#1090#1100' '#1056#1089#1084'4=f(U)'
  ClientHeight = 681
  ClientWidth = 804
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl2: TPageControl
    Left = 0
    Top = 0
    Width = 784
    Height = 636
    ActivePage = TabSheet_Зад1
    Style = tsButtons
    TabOrder = 0
    object TabSheet_Зад1: TTabSheet
      Caption = #1047#1072#1076#1072#1095#1072' 1'
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 784
        Height = 610
        ActivePage = TabSheet_З1_Граф
        TabOrder = 0
        object TabSheet_З1_Граф: TTabSheet
          Caption = #1043#1088#1072#1092#1080#1082
          object Label2: TLabel
            Left = 0
            Top = 370
            Width = 118
            Height = 19
            Caption = #1057#1087#1080#1089#1086#1082' '#1079#1085#1072#1095#1077#1085#1080#1081
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Chart1: TChart
            Left = 3
            Top = 110
            Width = 758
            Height = 258
            Legend.LegendStyle = lsSeries
            Legend.Visible = False
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -19
            Title.Font.Name = 'Times New Roman'
            Title.Text.Strings = (
              #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072' '#1089#1090#1088#1091#1081#1085#1086#1075#1086' '#1072#1087#1087#1072#1088#1072#1090#1072' ('#1057#1040')')
            BottomAxis.LabelsFont.Name = 'Times New Roman'
            BottomAxis.Title.Caption = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090' '#1080#1085#1078#1077#1082#1094#1080#1080#1080' (U)'
            BottomAxis.Title.Font.Height = -16
            BottomAxis.Title.Font.Name = 'Times New Roman'
            BottomAxis.Title.Font.Style = [fsBold]
            LeftAxis.MinorTickCount = 2
            LeftAxis.Title.Caption = #1044#1072#1074#1083#1077#1085#1080#1077' '#1075#1072#1079#1072' '#1079#1072' '#1057#1040' ('#1056#1089#1084'4), '#1055#1072
            LeftAxis.Title.Font.Height = -16
            LeftAxis.Title.Font.Name = 'Times New Roman'
            LeftAxis.Title.Font.Style = [fsBold]
            View3D = False
            Zoom.Animated = True
            Zoom.Pen.Color = -1
            Zoom.Pen.Mode = pmNotXor
            Color = clWindow
            TabOrder = 0
            OnMouseDown = Chart1MouseDown
            OnMouseEnter = Chart1MouseEnter
            OnMouseMove = Chart1MouseMove
            PrintMargins = (
              27
              15
              27
              15)
            ColorPaletteIndex = 13
          end
          object Button1: TButton
            Left = 378
            Top = 3
            Width = 75
            Height = 47
            Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1075#1088#1072#1092#1080#1082#1072
            TabOrder = 1
            WordWrap = True
            OnClick = Button1Click
          end
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 375
            Height = 105
            AutoSize = True
            Color = clWindow
            ParentBackground = False
            TabOrder = 2
            object Label1: TLabel
              Left = 6
              Top = 1
              Width = 331
              Height = 38
              Caption = 
                #1055#1088#1080' '#1080#1079#1084#1077#1085#1077#1085#1080#1080' '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1086#1074' '#1089#1082#1086#1088#1086#1089#1090#1080' '#1086#1089#1091#1097#1077#1089#1090#1074#1083#1103#1077#1090#1089#1103' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082 +
                #1080#1081' '#1087#1077#1088#1077#1089#1095#1077#1090' '#1079#1072#1076#1072#1095#1080
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object Panel17: TPanel
              Left = 1
              Top = 45
              Width = 20
              Height = 22
              AutoSize = True
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 0
              object Label69: TLabel
                Left = 0
                Top = 0
                Width = 9
                Height = 19
                Caption = #966
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
              end
              object Label70: TLabel
                Left = 8
                Top = 8
                Width = 12
                Height = 14
                Caption = #1088'1'
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
              end
            end
            object Panel15: TPanel
              Left = 1
              Top = 72
              Width = 26
              Height = 22
              AutoSize = True
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 1
              object Label63: TLabel
                Left = 0
                Top = 0
                Width = 9
                Height = 19
                Caption = #966
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
              end
              object Label64: TLabel
                Left = 8
                Top = 8
                Width = 18
                Height = 14
                Caption = #1076#1080#1092
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
              end
            end
            object Edit1: TEdit
              Left = 47
              Top = 46
              Width = 77
              Height = 21
              TabOrder = 2
              Text = '0,99'
              OnChange = Edit1Change
              OnKeyPress = Edit1KeyPress
            end
            object Edit2: TEdit
              Left = 47
              Top = 73
              Width = 77
              Height = 21
              TabOrder = 3
              Text = '0,95'
              OnChange = Edit1Change
              OnKeyPress = Edit2KeyPress
            end
            object Panel4: TPanel
              Left = 141
              Top = 45
              Width = 18
              Height = 22
              AutoSize = True
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 4
              object Label61: TLabel
                Left = 0
                Top = 0
                Width = 9
                Height = 19
                Caption = #966
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
              end
              object Label62: TLabel
                Left = 8
                Top = 8
                Width = 10
                Height = 14
                Caption = #1082#1089
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
              end
            end
            object Panel16: TPanel
              Left = 141
              Top = 72
              Width = 20
              Height = 22
              AutoSize = True
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 5
              object Label65: TLabel
                Left = 0
                Top = 0
                Width = 9
                Height = 19
                Caption = #966
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
              end
              object Label66: TLabel
                Left = 8
                Top = 8
                Width = 12
                Height = 14
                Caption = #1080'2'
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
              end
            end
            object Edit3: TEdit
              Left = 174
              Top = 46
              Width = 77
              Height = 21
              TabOrder = 6
              Text = '0,84'
              OnChange = Edit1Change
              OnKeyPress = Edit3KeyPress
            end
            object Edit4: TEdit
              Left = 174
              Top = 73
              Width = 77
              Height = 21
              TabOrder = 7
              Text = '0,97'
              OnChange = Edit1Change
              OnKeyPress = Edit4KeyPress
            end
            object CheckBox2: TCheckBox
              Left = 256
              Top = 44
              Width = 118
              Height = 60
              Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1087#1088#1077#1076#1099#1076#1091#1097#1080#1093' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074' '#1088#1072#1089#1095#1077#1090#1072' '#1089' '#1075#1088#1072#1092#1080#1082#1072
              Color = clWindow
              Enabled = False
              ParentColor = False
              TabOrder = 8
              WordWrap = True
              OnClick = CheckBox2Click
            end
          end
          object CheckBox_Для_параметров_графика: TCheckBox
            Left = 590
            Top = 123
            Width = 161
            Height = 17
            Caption = #1044#1083#1103' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074' '#1075#1088#1072#1092#1080#1082#1072
            TabOrder = 3
          end
          object Button2: TButton
            Left = 380
            Top = 57
            Width = 72
            Height = 47
            Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1075#1088#1072#1092#1080#1082
            TabOrder = 4
            WordWrap = True
            OnClick = Button2Click
          end
          object Button3: TButton
            Left = 468
            Top = 3
            Width = 124
            Height = 47
            Caption = #1059#1076#1072#1083#1080#1090#1100' '#1088#1072#1089#1089#1095#1077#1090#1085#1099#1077' '#1082#1088#1080#1074#1099#1077
            TabOrder = 5
            WordWrap = True
            OnClick = Button3Click
          end
          object Button4: TButton
            Left = 468
            Top = 56
            Width = 124
            Height = 48
            Caption = #1059#1076#1072#1083#1080#1090#1100' '#1101#1082#1089#1087#1077#1088#1080#1084#1077#1085#1090#1072#1083#1100#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
            TabOrder = 6
            WordWrap = True
            OnClick = Button4Click
          end
          object ListBox1: TListBox
            Left = -2
            Top = 391
            Width = 532
            Height = 82
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            MultiSelect = True
            ParentFont = False
            TabOrder = 7
            OnClick = ListBox1Click
            OnKeyPress = ListBox1KeyPress
            OnMouseEnter = ListBox1MouseEnter
          end
          object Button8: TButton
            Left = 657
            Top = 392
            Width = 114
            Height = 81
            Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1077' '#1075#1088#1072#1092#1080#1082#1080
            TabOrder = 8
            WordWrap = True
            OnClick = Button8Click
          end
          object Button11: TButton
            Left = 536
            Top = 392
            Width = 114
            Height = 81
            Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072' '#1074#1099#1073#1088#1072#1085#1099#1077' '#1080#1079' '#1089#1087#1080#1089#1082#1072' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1088#1072#1089#1095#1077#1090#1072' '
            TabOrder = 9
            WordWrap = True
            OnClick = Button11Click
          end
          object CheckBox4: TCheckBox
            Left = 598
            Top = 7
            Width = 246
            Height = 41
            Caption = #1057#1085#1103#1090#1080#1077' '#1076#1072#1085#1085#1099#1093' '#1087#1088#1080' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1080' '#1084#1099#1096#1080
            TabOrder = 10
            WordWrap = True
            OnClick = CheckBox4Click
          end
          object Memo1: TMemo
            Left = -10
            Top = 479
            Width = 771
            Height = 90
            ScrollBars = ssBoth
            TabOrder = 11
            OnMouseEnter = Memo1MouseEnter
          end
          object CheckBox5: TCheckBox
            Left = 598
            Top = 56
            Width = 222
            Height = 49
            Caption = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1090#1086#1083#1100#1082#1086' '#1074#1099#1073#1088#1072#1085#1099#1077' '#1074' '#1089#1087#1080#1089#1082#1077' '#1082#1088#1080#1074#1099#1077
            TabOrder = 12
            WordWrap = True
            OnClick = CheckBox5Click
          end
        end
        object TabSheet_З1_Резу: TTabSheet
          Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1088#1072#1089#1095#1077#1090#1072
          ImageIndex = 1
          object Label3: TLabel
            Left = 0
            Top = 358
            Width = 118
            Height = 19
            Caption = #1057#1087#1080#1089#1086#1082' '#1079#1085#1072#1095#1077#1085#1080#1081
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object StringGrid1: TStringGrid
            Tag = -1
            Left = 0
            Top = 0
            Width = 792
            Height = 361
            RowCount = 2
            TabOrder = 0
            RowHeights = (
              24
              24)
          end
          object ScrollBox1: TScrollBox
            Left = 0
            Top = 383
            Width = 776
            Height = 95
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object RadioGroup1: TRadioGroup
              Left = 0
              Top = 0
              Width = 136
              Height = 0
              DragKind = dkDock
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Touch.ParentTabletOptions = False
              Touch.TabletOptions = [toPressAndHold]
              OnClick = RadioGroup1Click
            end
          end
        end
      end
    end
    object TabSheet_Зад2: TTabSheet
      Caption = #1047#1072#1076#1072#1095#1072'2'
      ImageIndex = 1
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 784
        Height = 505
        ActivePage = TabSheet1
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = #1043#1088#1072#1092#1080#1082
          object Label4: TLabel
            Left = 1
            Top = 104
            Width = 118
            Height = 19
            Caption = #1057#1087#1080#1089#1086#1082' '#1079#1085#1072#1095#1077#1085#1080#1081
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object Chart2: TChart
            Left = 130
            Top = 87
            Width = 537
            Height = 387
            Legend.LegendStyle = lsSeries
            Title.Text.Strings = (
              '')
            Title.Visible = False
            BottomAxis.Title.Caption = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090' '#1080#1085#1078#1077#1082#1094#1080#1080#1080' (U)'
            BottomAxis.Title.Font.Height = -16
            BottomAxis.Title.Font.Name = 'Times New Roman'
            BottomAxis.Title.Font.Style = [fsBold]
            LeftAxis.Title.Caption = #1044#1072#1074#1083#1077#1085#1080#1077' '#1075#1072#1079#1072' '#1079#1072' '#1057#1040' ('#1056#1089#1084'4), '#1055#1072
            LeftAxis.Title.Font.Height = -16
            LeftAxis.Title.Font.Name = 'Times New Roman'
            LeftAxis.Title.Font.Style = [fsBold]
            View3D = False
            Zoom.Animated = True
            Zoom.Pen.Color = -1
            Zoom.Pen.Mode = pmNotXor
            Color = clWindow
            TabOrder = 0
            PrintMargins = (
              27
              15
              27
              15)
            ColorPaletteIndex = 13
          end
          object Button5: TButton
            Left = 378
            Top = 3
            Width = 75
            Height = 47
            Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1075#1088#1072#1092#1080#1082#1072
            TabOrder = 1
            WordWrap = True
            OnClick = Button1Click
          end
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 375
            Height = 99
            AutoSize = True
            Color = clWindow
            ParentBackground = False
            TabOrder = 2
            object Label5: TLabel
              Left = 9
              Top = 1
              Width = 331
              Height = 38
              Caption = 
                #1055#1088#1080' '#1080#1079#1084#1077#1085#1077#1085#1080#1080' '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1086#1074' '#1089#1082#1086#1088#1086#1089#1090#1080' '#1086#1089#1091#1097#1077#1089#1090#1074#1083#1103#1077#1090#1089#1103' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082 +
                #1080#1081' '#1087#1077#1088#1077#1089#1095#1077#1090' '#1079#1072#1076#1072#1095#1080
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object Panel3: TPanel
              Left = 1
              Top = 42
              Width = 20
              Height = 22
              AutoSize = True
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 0
              object Label6: TLabel
                Left = 0
                Top = 0
                Width = 9
                Height = 19
                Caption = #966
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
              end
              object Label7: TLabel
                Left = 8
                Top = 8
                Width = 12
                Height = 14
                Caption = #1088'1'
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
              end
            end
            object Panel5: TPanel
              Left = 1
              Top = 69
              Width = 26
              Height = 22
              AutoSize = True
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 1
              object Label8: TLabel
                Left = 0
                Top = 0
                Width = 9
                Height = 19
                Caption = #966
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
              end
              object Label9: TLabel
                Left = 8
                Top = 8
                Width = 18
                Height = 14
                Caption = #1076#1080#1092
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
              end
            end
            object Edit5: TEdit
              Left = 47
              Top = 43
              Width = 77
              Height = 21
              TabOrder = 2
              Text = '0,99'
              OnChange = Edit1Change
              OnKeyPress = Edit1KeyPress
            end
            object Edit6: TEdit
              Left = 47
              Top = 70
              Width = 77
              Height = 21
              TabOrder = 3
              Text = '0,95'
              OnChange = Edit1Change
              OnKeyPress = Edit2KeyPress
            end
            object Panel6: TPanel
              Left = 141
              Top = 42
              Width = 18
              Height = 22
              AutoSize = True
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 4
              object Label10: TLabel
                Left = 0
                Top = 0
                Width = 9
                Height = 19
                Caption = #966
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
              end
              object Label11: TLabel
                Left = 8
                Top = 8
                Width = 10
                Height = 14
                Caption = #1082#1089
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
              end
            end
            object Panel7: TPanel
              Left = 141
              Top = 69
              Width = 20
              Height = 22
              AutoSize = True
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 5
              object Label12: TLabel
                Left = 0
                Top = 0
                Width = 9
                Height = 19
                Caption = #966
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
              end
              object Label13: TLabel
                Left = 8
                Top = 8
                Width = 12
                Height = 14
                Caption = #1080'2'
                Font.Charset = RUSSIAN_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
              end
            end
            object Edit7: TEdit
              Left = 174
              Top = 43
              Width = 77
              Height = 21
              TabOrder = 6
              Text = '0,84'
              OnChange = Edit1Change
              OnKeyPress = Edit3KeyPress
            end
            object Edit8: TEdit
              Left = 174
              Top = 70
              Width = 77
              Height = 21
              TabOrder = 7
              Text = '0,97'
              OnChange = Edit1Change
              OnKeyPress = Edit4KeyPress
            end
            object CheckBox1: TCheckBox
              Left = 256
              Top = 38
              Width = 118
              Height = 60
              Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1087#1088#1077#1076#1099#1076#1091#1097#1080#1093' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074' '#1088#1072#1089#1095#1077#1090#1072' '#1089' '#1075#1088#1072#1092#1080#1082#1072
              Color = clWindow
              ParentColor = False
              TabOrder = 8
              WordWrap = True
              OnClick = CheckBox2Click
            end
          end
          object CheckBox3: TCheckBox
            Left = 608
            Top = 33
            Width = 161
            Height = 17
            Caption = #1044#1083#1103' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074' '#1075#1088#1072#1092#1080#1082#1072
            TabOrder = 3
          end
          object Button6: TButton
            Left = 381
            Top = 56
            Width = 72
            Height = 47
            Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1075#1088#1072#1092#1080#1082
            TabOrder = 4
            WordWrap = True
            OnClick = Button2Click
          end
          object Button7: TButton
            Left = 468
            Top = 3
            Width = 124
            Height = 47
            Caption = #1059#1076#1072#1083#1080#1090#1100' '#1088#1072#1089#1089#1095#1077#1090#1085#1099#1077' '#1082#1088#1080#1074#1099#1077
            TabOrder = 5
            WordWrap = True
            OnClick = Button3Click
          end
          object Button9: TButton
            Left = 468
            Top = 56
            Width = 124
            Height = 48
            Caption = #1059#1076#1072#1083#1080#1090#1100' '#1101#1082#1089#1087#1077#1088#1080#1084#1077#1085#1090#1072#1083#1100#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
            TabOrder = 6
            WordWrap = True
            OnClick = Button4Click
          end
          object ListBox2: TListBox
            Left = 1
            Top = 127
            Width = 118
            Height = 61
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnKeyPress = ListBox1KeyPress
          end
          object Button10: TButton
            Left = 1
            Top = 194
            Width = 114
            Height = 45
            Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1077' '#1075#1088#1072#1092#1080#1082#1080
            TabOrder = 8
            WordWrap = True
            OnClick = Button8Click
          end
        end
        object TabSheet2: TTabSheet
          Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1088#1072#1089#1095#1077#1090#1072
          ImageIndex = 1
          object Label14: TLabel
            Left = 0
            Top = 0
            Width = 118
            Height = 19
            Caption = #1057#1087#1080#1089#1086#1082' '#1079#1085#1072#1095#1077#1085#1080#1081
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          object StringGrid2: TStringGrid
            Tag = -1
            Left = 142
            Top = 0
            Width = 649
            Height = 377
            RowCount = 2
            TabOrder = 0
          end
          object ScrollBox2: TScrollBox
            Left = 0
            Top = 25
            Width = 140
            Height = 245
            TabOrder = 1
            object RadioGroup2: TRadioGroup
              Left = 0
              Top = 0
              Width = 136
              Height = 0
              DragKind = dkDock
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Touch.ParentTabletOptions = False
              Touch.TabletOptions = [toPressAndHold]
              OnClick = RadioGroup1Click
            end
          end
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 662
    Width = 804
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
end
