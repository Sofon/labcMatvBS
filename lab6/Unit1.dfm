object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1047#1072#1076#1072#1095#1072' 6'
  ClientHeight = 428
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 32
    Width = 37
    Height = 13
    Caption = #1057#1090#1088#1086#1082#1080
  end
  object Label2: TLabel
    Left = 264
    Top = 32
    Width = 45
    Height = 13
    Caption = #1057#1090#1086#1083#1073#1094#1099
  end
  object Label3: TLabel
    Left = 64
    Top = 312
    Width = 32
    Height = 13
    Caption = #1054#1090#1074#1077#1090
  end
  object Button1: TButton
    Left = 64
    Top = 359
    Width = 161
    Height = 41
    Caption = #1056#1077#1096#1080#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 338
    Top = 359
    Width = 161
    Height = 41
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 112
    Top = 32
    Width = 113
    Height = 21
    TabOrder = 2
    Text = '4'
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 338
    Top = 32
    Width = 113
    Height = 21
    TabOrder = 3
    Text = '4'
    OnChange = Edit2Change
  end
  object RadioGroup1: TRadioGroup
    Left = 112
    Top = 215
    Width = 361
    Height = 66
    Caption = #1042#1074#1086#1076' '#1084#1072#1090#1088#1080#1094#1099
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      #1048#1079' '#1092#1072#1081#1083#1072
      #1048#1079' '#1089#1077#1090#1082#1080' '#1089#1090#1088#1086#1082)
    TabOrder = 4
  end
  object StringGrid1: TStringGrid
    Left = 112
    Top = 72
    Width = 361
    Height = 129
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 5
    ColWidths = (
      64
      64
      65
      64
      64)
  end
  object UpDown1: TUpDown
    Left = 225
    Top = 32
    Width = 16
    Height = 21
    Associate = Edit1
    Min = 1
    Max = 20
    Position = 4
    TabOrder = 6
  end
  object UpDown2: TUpDown
    Left = 451
    Top = 32
    Width = 16
    Height = 21
    Associate = Edit2
    Min = 1
    Max = 20
    Position = 4
    TabOrder = 7
  end
  object Edit3: TEdit
    Left = 496
    Top = 80
    Width = 42
    Height = 21
    ReadOnly = True
    TabOrder = 8
    Text = '0'
    OnChange = Edit3Change
  end
  object Edit4: TEdit
    Left = 496
    Top = 128
    Width = 42
    Height = 21
    ReadOnly = True
    TabOrder = 9
    Text = '1'
    OnChange = Edit4Change
  end
  object UpDown3: TUpDown
    Left = 538
    Top = 80
    Width = 16
    Height = 21
    Associate = Edit3
    TabOrder = 10
  end
  object UpDown4: TUpDown
    Left = 538
    Top = 128
    Width = 16
    Height = 21
    Associate = Edit4
    Min = 1
    Position = 1
    TabOrder = 11
  end
  object OpenDialog1: TOpenDialog
    Left = 80
    Top = 240
  end
end
