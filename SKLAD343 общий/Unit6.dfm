object Form6: TForm6
  Left = 0
  Top = 0
  Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100' '#1041#1044
  ClientHeight = 85
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 55
    Height = 13
    Caption = #1055#1091#1090#1100' '#1082' '#1041#1044':'
  end
  object Edit1: TEdit
    Left = 79
    Top = 8
    Width = 300
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 397
    Top = 8
    Width = 75
    Height = 25
    Caption = #1054#1073#1079#1086#1088
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 397
    Top = 48
    Width = 75
    Height = 25
    Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object OpenDialog1: TOpenDialog
    FileName = '*.mdb'
    Left = 24
    Top = 40
  end
end
