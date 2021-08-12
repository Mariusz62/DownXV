object fTestDB: TfTestDB
  Left = 0
  Top = 0
  Caption = 'fTestDB'
  ClientHeight = 336
  ClientWidth = 635
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
    Left = 416
    Top = 28
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Button1: TButton
    Left = 32
    Top = 16
    Width = 121
    Height = 25
    Caption = 'Wczytaj katalog'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 47
    Width = 619
    Height = 281
    ItemHeight = 13
    TabOrder = 1
  end
  object OD1: TOpenDialog
    Filter = 'Wszystkie|*.*'
    Left = 184
    Top = 16
  end
end
