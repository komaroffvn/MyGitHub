object Form2: TForm2
  Left = 380
  Top = 135
  Caption = #1042#1077#1089#1100' '#1087#1088#1080#1093#1086#1076' '#1087#1088#1086#1076#1091#1082#1094#1080#1080' '#1085#1072' '#1089#1082#1083#1072#1076
  ClientHeight = 622
  ClientWidth = 1013
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 1013
    Height = 622
    Align = alClient
    DataSource = DataSource1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'tovName'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 600
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'project_begin'
        Title.Caption = #1044#1072#1090#1072' '#1087#1088#1080#1093#1086#1076#1072
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'price'
        Title.Caption = #1062#1077#1085#1072', '#1088#1091#1073
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'counts'
        Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086', '#1096#1090
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sum'
        Title.Caption = #1057#1091#1084#1084#1072', '#1088#1091#1073
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 392
    Top = 2
    Width = 20
    Height = 20
    Hint = #1059#1074#1077#1083#1080#1095#1080#1090#1100' '#1096#1088#1080#1092#1090
    Caption = 'A+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 412
    Top = 2
    Width = 20
    Height = 20
    Hint = #1059#1084#1077#1085#1100#1096#1080#1090#1100' '#1096#1088#1080#1092#1090
    Caption = 'A-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=bazaSKLAD.mdb;Persi' +
      'st Security Info=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 128
    Top = 544
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 216
    Top = 544
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 544
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N3: TMenuItem
        Caption = #1055#1077#1095#1072#1090#1100
        OnClick = N3Click
      end
    end
  end
  object PrintDialog1: TPrintDialog
    Collate = True
    Left = 352
    Top = 544
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = ADOQuery1CalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tovar ORDER BY tovName')
    Left = 288
    Top = 552
    object ADOQuery1tovar_id: TAutoIncField
      FieldName = 'tovar_id'
      ReadOnly = True
    end
    object ADOQuery1tovName: TWideStringField
      FieldName = 'tovName'
      Size = 150
    end
    object ADOQuery1screenshots: TBlobField
      FieldName = 'screenshots'
    end
    object ADOQuery1project_begin: TDateTimeField
      FieldName = 'project_begin'
    end
    object ADOQuery1price: TBCDField
      FieldName = 'price'
      Precision = 19
    end
    object ADOQuery1counts: TIntegerField
      FieldName = 'counts'
    end
    object ADOQuery1summa: TBCDField
      FieldName = 'summa'
      Precision = 19
    end
    object ADOQuery1IDpost: TWideStringField
      FieldName = 'ID-post'
      Size = 255
    end
    object ADOQuery1dogovor: TWideStringField
      FieldName = 'dogovor'
      Size = 255
    end
    object ADOQuery1postName: TWideStringField
      FieldName = 'postName'
      Size = 255
    end
    object ADOQuery1catName: TWideStringField
      FieldName = 'catName'
      Size = 255
    end
    object ADOQuery1Sum: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Sum'
      Calculated = True
    end
  end
end
