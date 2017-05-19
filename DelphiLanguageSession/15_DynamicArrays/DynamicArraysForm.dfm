object FormDynArray: TFormDynArray
  Left = 0
  Top = 0
  Caption = 'FormDynArray'
  ClientHeight = 429
  ClientWidth = 485
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnArrayInit: TButton
    Left = 48
    Top = 32
    Width = 129
    Height = 41
    Caption = 'btnArrayInit'
    TabOrder = 0
    OnClick = btnArrayInitClick
  end
  object btnArrayRTL: TButton
    Left = 48
    Top = 88
    Width = 129
    Height = 41
    Caption = 'btnArrayRTL'
    TabOrder = 1
    OnClick = btnArrayRTLClick
  end
  object Memo1: TMemo
    Left = 48
    Top = 152
    Width = 265
    Height = 233
    TabOrder = 2
  end
  object btnButtonsArray: TButton
    Left = 208
    Top = 32
    Width = 105
    Height = 41
    Caption = 'btnButtonsArray'
    TabOrder = 3
    OnClick = btnButtonsArrayClick
  end
end
