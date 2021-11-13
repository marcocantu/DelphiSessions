object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 277
  ClientWidth = 587
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -22
  Font.Name = 'Tahoma'
  Font.Style = []
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 27
  object StatusBar1: TStatusBar
    Left = 0
    Top = 258
    Width = 587
    Height = 19
    Panels = <>
    SimplePanel = True
    ExplicitTop = 224
    ExplicitWidth = 527
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object BindExpressionStatusBar11: TBindExpression
      Category = 'Binding Expressions'
      ControlComponent = StatusBar1
      SourceComponent = Owner
      SourceExpression = #39'Width: '#39' + ToStr(Width) + '#39', Height: '#39' + ToStr(Height)'
      ControlExpression = 'SimpleText'
      NotifyOutputs = False
      Direction = dirSourceToControl
    end
  end
end
