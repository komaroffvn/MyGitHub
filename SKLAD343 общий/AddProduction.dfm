object AddProductionForm: TAddProductionForm
  Left = 425
  Top = 292
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1088#1086#1076#1091#1082#1094#1080#1102
  ClientHeight = 397
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object TLabel
    Left = 8
    Top = 48
    Width = 3
    Height = 13
  end
  object Label1: TLabel
    Left = 8
    Top = 57
    Width = 173
    Height = 16
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 205
    Width = 63
    Height = 16
    Caption = #1062#1077#1085#1072', '#1088#1091#1073
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 154
    Width = 106
    Height = 16
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086', '#1096#1090'.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 108
    Width = 180
    Height = 16
    Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1085#1072' '#1089#1082#1083#1072#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 251
    Width = 72
    Height = 16
    Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 299
    Width = 72
    Height = 16
    Caption = #1044#1086#1075#1086#1074#1086#1088' '#8470
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 8
    Width = 142
    Height = 16
    Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 336
    Top = 0
    Width = 305
    Height = 353
    Caption = #1060#1086#1090#1086' '#1090#1086#1074#1072#1088#1072' (295x295)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object DBText1: TDBText
      Left = -144
      Top = 232
      Width = 65
      Height = 17
    end
    object BitBtn1: TBitBtn
      Left = 88
      Top = 317
      Width = 129
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1092#1086#1090#1086
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object DBImage1: TDBImage
      Left = 3
      Top = 16
      Width = 295
      Height = 295
      DataField = 'screenshots'
      DataSource = Form1.DataSource2
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = -224
      Top = 232
      Width = 121
      Height = 24
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = -160
      Top = 240
      Width = 121
      Height = 24
      TabOrder = 3
    end
  end
  object Button1: TButton
    Left = 8
    Top = 364
    Width = 81
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 249
    Top = 364
    Width = 81
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = Button2Click
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 224
    Width = 322
    Height = 21
    DataField = 'price'
    DataSource = Form1.DataSource2
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 172
    Width = 322
    Height = 21
    DataField = 'counts'
    DataSource = Form1.DataSource2
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 127
    Width = 322
    Height = 21
    DataField = 'project_begin'
    DataSource = Form1.DataSource2
    MaxLength = 8
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 74
    Width = 322
    Height = 21
    DataField = 'tovName'
    DataSource = Form1.DataSource2
    TabOrder = 6
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 270
    Width = 322
    Height = 21
    DataField = 'postName'
    DataSource = Form1.DataSource2
    KeyField = 'postName'
    ListField = 'postName'
    ListSource = Form10.DataSource1
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 8
    Top = 319
    Width = 322
    Height = 21
    DataField = 'dogovor'
    DataSource = Form1.DataSource2
    TabOrder = 8
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 8
    Top = 28
    Width = 322
    Height = 21
    DataField = 'catName'
    DataSource = Form1.DataSource2
    KeyField = 'catName'
    ListField = 'catName'
    ListSource = Form5.DataSource1
    TabOrder = 9
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 144
    Top = 352
  end
end
