object Form10: TForm10
  Left = 0
  Top = 0
  Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
  ClientHeight = 514
  ClientWidth = 890
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
  object DBNavigator1: TDBNavigator
    Left = 264
    Top = 471
    Width = 360
    Height = 34
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 8
    Width = 889
    Height = 457
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 776
    Top = 472
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=db.mdb;Persist Secu' +
      'rity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 712
    Top = 472
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'postavschik'
    Left = 840
    Top = 472
    object ADOTable1IDpost: TAutoIncField
      DisplayLabel = 'ID'
      DisplayWidth = 5
      FieldName = 'ID-post'
      ReadOnly = True
      Visible = False
    end
    object ADOTable1postName: TWideStringField
      DisplayLabel = #1055#1086#1089#1090#1072#1074#1097#1080#1082
      DisplayWidth = 30
      FieldName = 'postName'
      Size = 255
    end
    object ADOTable1phone: TWideStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      DisplayWidth = 18
      FieldName = 'phone'
    end
    object ADOTable1address: TWideStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      DisplayWidth = 50
      FieldName = 'address'
      Size = 255
    end
    object ADOTable1kontakty: TWideStringField
      DisplayLabel = #1050#1086#1085#1090#1072#1082#1090#1085#1086#1077' '#1083#1080#1094#1086
      DisplayWidth = 20
      FieldName = 'kontakty'
      Size = 255
    end
  end
end
