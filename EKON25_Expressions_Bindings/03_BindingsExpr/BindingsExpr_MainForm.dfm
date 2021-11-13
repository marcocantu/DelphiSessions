object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'BindingsExpr'
  ClientHeight = 514
  ClientWidth = 604
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object MemoExpr: TMemo
    Left = 32
    Top = 24
    Width = 545
    Height = 201
    Lines.Strings = (
      'person.name + " is " + fn.ToStr(person.age) + " years old."')
    TabOrder = 0
  end
  object btnEval: TButton
    Left = 248
    Top = 247
    Width = 75
    Height = 25
    Caption = 'btnEval'
    TabOrder = 1
    OnClick = btnEvalClick
  end
  object MemoOut: TMemo
    Left = 40
    Top = 288
    Width = 537
    Height = 185
    TabOrder = 2
  end
end
