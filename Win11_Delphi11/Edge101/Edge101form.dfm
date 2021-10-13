object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    635
    299)
  PixelsPerInch = 96
  TextHeight = 13
  object EdgeBrowser1: TEdgeBrowser
    Left = 8
    Top = 39
    Width = 577
    Height = 241
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
  end
  object Button1: TButton
    Left = 16
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Go'
    TabOrder = 1
    OnClick = Button1Click
  end
end
