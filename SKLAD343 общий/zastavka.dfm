object Form3: TForm3
  Left = 740
  Top = 417
  BorderStyle = bsNone
  Caption = 'Form3'
  ClientHeight = 297
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnDestroy = FormDestroy
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 282
    Width = 472
    Height = 13
    Caption = 
      #1056#1072#1079#1088#1072#1073#1086#1090#1082#1072': '#1050#1086#1084#1072#1088#1086#1074' '#1042'.'#1053'.                                        ' +
      '                                                      2017 '#1075'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Timer1: TTimer
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 16
    Top = 216
  end
end
