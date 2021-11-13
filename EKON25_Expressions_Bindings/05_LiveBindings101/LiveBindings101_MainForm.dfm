object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 246
  ClientWidth = 589
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 88
    Top = 133
    Width = 65
    Height = 65
  end
  object ColorBox1: TColorBox
    Left = 253
    Top = 157
    Width = 145
    Height = 22
    Selected = clWhite
    TabOrder = 0
  end
  object NumberBox1: TNumberBox
    Left = 104
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object ProgressBar1: TProgressBar
    Left = 272
    Top = 44
    Width = 150
    Height = 17
    TabOrder = 2
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkControlToPropertyBrushColor: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = ColorBox1
      Track = True
      Component = Shape1
      ComponentProperty = 'Brush.Color'
    end
    object LinkControlToPropertyPosition: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = NumberBox1
      Track = True
      Component = ProgressBar1
      ComponentProperty = 'Position'
    end
  end
end
