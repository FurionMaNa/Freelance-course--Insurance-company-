object Form9: TForm9
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1044#1080#1072#1083#1086#1075' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103'/'#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1082#1083#1080#1077#1085#1090#1072
  ClientHeight = 91
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 169
    Height = 19
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1060#1048#1054' '#1082#1083#1080#1077#1085#1090#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 8
    Top = 33
    Width = 478
    Height = 21
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 60
    Width = 233
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1083#1080#1077#1085#1090#1072
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 253
    Top = 60
    Width = 233
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object ADOQuery3: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 320
    Top = 16
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 408
    Top = 6
  end
end
