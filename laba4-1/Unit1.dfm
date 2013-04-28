object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1055#1088#1080#1073#1083#1080#1078#1077#1085#1085#1099#1077' '#1074#1099#1095#1080#1089#1083#1077#1085#1080#1103': '#1087#1086#1080#1089#1082' '#1082#1086#1088#1085#1103' '#1076#1074#1091#1084#1103' '#1084#1077#1090#1086#1076#1072#1084#1080
  ClientHeight = 572
  ClientWidth = 768
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
    Top = 16
    Width = 176
    Height = 13
    Caption = #1054#1090#1088#1077#1079#1086#1082' AB '#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' N '#1090#1086#1095#1085' E'
  end
  object Label2: TLabel
    Left = 16
    Top = 51
    Width = 7
    Height = 13
    Caption = 'A'
  end
  object Label4: TLabel
    Left = 16
    Top = 91
    Width = 6
    Height = 13
    Caption = 'B'
  end
  object Label5: TLabel
    Left = 16
    Top = 128
    Width = 7
    Height = 13
    Caption = 'N'
  end
  object Label6: TLabel
    Left = 280
    Top = 16
    Width = 102
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1086#1095#1077#1082' K'
  end
  object Label7: TLabel
    Left = 248
    Top = 51
    Width = 6
    Height = 13
    Caption = 'K'
  end
  object Edit1: TEdit
    Left = 40
    Top = 48
    Width = 129
    Height = 21
    TabOrder = 0
    Text = '0,01'
    OnExit = Edit1Exit
  end
  object Edit2: TEdit
    Left = 40
    Top = 88
    Width = 129
    Height = 21
    TabOrder = 1
    Text = '1,99'
    OnExit = Edit2Exit
  end
  object Edit3: TEdit
    Left = 40
    Top = 128
    Width = 97
    Height = 21
    ReadOnly = True
    TabOrder = 2
    Text = '7'
  end
  object Edit4: TEdit
    Left = 280
    Top = 48
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 3
    Text = '3'
  end
  object Button1: TButton
    Left = 280
    Top = 82
    Width = 137
    Height = 33
    Caption = #1055#1086#1076#1089#1095#1080#1090#1072#1090#1100
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 40
    Top = 168
    Width = 129
    Height = 41
    Caption = #1043#1088#1072#1092#1080#1082
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 40
    Top = 488
    Width = 129
    Height = 33
    Caption = #1053#1072#1081#1090#1080' '#1082#1086#1088#1077#1085#1100
    TabOrder = 6
    OnClick = Button3Click
  end
  object UpDown1: TUpDown
    Left = 137
    Top = 128
    Width = 16
    Height = 21
    Associate = Edit3
    Min = 1
    Max = 7
    Position = 7
    TabOrder = 7
  end
  object UpDown2: TUpDown
    Left = 401
    Top = 48
    Width = 16
    Height = 21
    Associate = Edit4
    Min = 2
    Max = 200
    Position = 3
    TabOrder = 8
  end
  object StringGrid1: TStringGrid
    Left = 440
    Top = 16
    Width = 265
    Height = 99
    ColCount = 4
    RowCount = 2
    FixedRows = 0
    TabOrder = 9
    RowHeights = (
      24
      23)
  end
  object StringGrid2: TStringGrid
    Left = 32
    Top = 232
    Width = 193
    Height = 225
    RowCount = 8
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
    TabOrder = 10
  end
  object Chart1: TChart
    Left = 288
    Top = 184
    Width = 457
    Height = 337
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      #1043#1088#1072#1092#1080#1082' '#1092#1091#1085#1082#1094#1080#1080)
    View3D = False
    TabOrder = 11
    object Label3: TLabel
      Left = -128
      Top = -19
      Width = 31
      Height = 13
      Caption = 'Label3'
    end
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Title = #1043#1088#1072#1092#1080#1082' '#1092#1091#1085#1082#1094#1080#1080
      OnClick = Series1Click
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = 4227072
      Title = #1054#1089#1100' '#1061
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series3: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = 10485760
      Title = #1054#1089#1100' Y'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Edit5: TEdit
    Left = 192
    Top = 128
    Width = 25
    Height = 21
    TabOrder = 12
    Text = '1'
  end
  object UpDown3: TUpDown
    Left = 217
    Top = 128
    Width = 16
    Height = 21
    Associate = Edit5
    Min = 1
    Max = 2
    Position = 1
    TabOrder = 13
  end
end
