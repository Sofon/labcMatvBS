object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1089#1095#1077#1090' '#1084#1072#1089#1089#1080#1074#1072
  ClientHeight = 346
  ClientWidth = 466
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
    Left = 24
    Top = 8
    Width = 129
    Height = 21
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1101#1083#1077#1084#1077#1085#1090#1086#1074
  end
  object Label2: TLabel
    Left = 64
    Top = 288
    Width = 57
    Height = 13
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090':'
  end
  object Label3: TLabel
    Left = 176
    Top = 288
    Width = 65
    Height = 13
    Caption = #1053#1077' '#1088#1077#1096#1072#1083#1072#1089#1100
  end
  object Edit1: TEdit
    Left = 170
    Top = 8
    Width = 49
    Height = 21
    ReadOnly = True
    TabOrder = 0
    Text = '4'
  end
  object UpDown1: TUpDown
    Left = 225
    Top = 8
    Width = 16
    Height = 21
    Associate = Edit1
    Min = 1
    Max = 20
    Position = 4
    TabOrder = 1
    OnClick = UpDown1Click
  end
  object StringGrid1: TStringGrid
    Left = 24
    Top = 80
    Width = 417
    Height = 89
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 2
  end
  object Button1: TButton
    Left = 136
    Top = 199
    Width = 169
    Height = 42
    Caption = #1056#1077#1096#1080#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
end
