object FormCallAPI: TFormCallAPI
  Left = 0
  Top = 0
  Caption = 'Call WinAPI'
  ClientHeight = 238
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnStandard: TButton
    Left = 64
    Top = 56
    Width = 177
    Height = 25
    Caption = 'Standard Call'
    TabOrder = 0
    OnClick = btnStandardClick
  end
  object btnDynamic: TButton
    Left = 64
    Top = 96
    Width = 177
    Height = 25
    Caption = 'Dynamic Call'
    TabOrder = 1
    OnClick = btnDynamicClick
  end
  object btnDelayed: TButton
    Left = 64
    Top = 136
    Width = 177
    Height = 25
    Caption = 'Delayed Call'
    TabOrder = 2
    OnClick = btnDelayedClick
  end
end
