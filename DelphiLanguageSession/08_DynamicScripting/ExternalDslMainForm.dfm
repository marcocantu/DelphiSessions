object Form39: TForm39
  Left = 0
  Top = 0
  Caption = 'ExternalDsl (with code from Barry Kelly)'
  ClientHeight = 486
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 16
    Top = 67
    Width = 289
    Height = 366
    TabOrder = 0
  end
  object Button1: TButton
    Left = 16
    Top = 8
    Width = 105
    Height = 25
    Caption = 'btnLoad'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 9
    Width = 97
    Height = 25
    Caption = 'btnExecute'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 40
    Width = 289
    Height = 21
    TabOrder = 3
    OnKeyPress = Edit1KeyPress
  end
  object Memo2: TMemo
    Left = 312
    Top = 67
    Width = 313
    Height = 374
    TabOrder = 4
  end
  object OpenDialog1: TOpenDialog
    Left = 400
    Top = 16
  end
end
