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
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object NumberBox1: TNumberBox
    Left = 48
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
    SpinButtonOptions.Placement = nbspCompact
    OnChangeValue = NumberBox1ChangeValue
  end
  object ProgressBar1: TProgressBar
    Left = 240
    Top = 44
    Width = 150
    Height = 17
    TabOrder = 1
  end
  object SpinEdit1: TSpinEdit
    Left = 104
    Top = 160
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
    OnChange = SpinEdit1Change
  end
  object ProgressBar2: TProgressBar
    Left = 288
    Top = 152
    Width = 150
    Height = 17
    TabOrder = 3
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 28
    Top = 85
    object LinkControlToPropertyPosition: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = NumberBox1
      Track = True
      Component = ProgressBar1
      ComponentProperty = 'Position'
    end
    object LinkControlToPropertyPosition2: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = SpinEdit1
      Track = True
      Component = ProgressBar2
      ComponentProperty = 'Position'
    end
  end
end
