object Form39: TForm39
  Left = 0
  Top = 0
  Caption = 'RttiAcccess'
  ClientHeight = 292
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnReadValues: TButton
    Left = 32
    Top = 24
    Width = 121
    Height = 25
    Caption = 'btnReadValues'
    TabOrder = 0
    OnClick = btnReadValuesClick
  end
  object btnInvoke: TButton
    Left = 32
    Top = 80
    Width = 121
    Height = 25
    Caption = 'btnInvoke'
    TabOrder = 1
    OnClick = btnInvokeClick
  end
  object btnSet: TButton
    Left = 32
    Top = 176
    Width = 121
    Height = 25
    Caption = 'btnSet'
    TabOrder = 2
    OnClick = btnSetClick
  end
  object Memo1: TMemo
    Left = 176
    Top = 24
    Width = 361
    Height = 241
    TabOrder = 3
  end
  object btnLowLevel: TButton
    Left = 32
    Top = 129
    Width = 121
    Height = 25
    Caption = 'btnLowLevel'
    TabOrder = 4
    OnClick = btnLowLevelClick
  end
end
