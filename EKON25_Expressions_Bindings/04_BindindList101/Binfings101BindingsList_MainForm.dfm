object FormBindings: TFormBindings
  Left = 0
  Top = 0
  Caption = 'Bindings101'
  ClientHeight = 187
  ClientWidth = 589
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 17
  object Edit1: TEdit
    Left = 32
    Top = 102
    Width = 110
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 0
    Text = 'Edit1'
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 186
    Top = 102
    Width = 120
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 1
    Text = 'Edit2'
    OnChange = Edit1Change
  end
  object ProgressBar1: TProgressBar
    Left = 186
    Top = 38
    Width = 120
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Position = 20
    TabOrder = 2
  end
  object SpinEdit1: TSpinEdit
    Left = 32
    Top = 38
    Width = 110
    Height = 27
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 20
    OnChange = SpinEdit2Change
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 476
    Top = 93
    object BindExprItemsEdits: TBindExprItems
      Category = 'Binding Expressions'
      ControlComponent = Edit1
      SourceComponent = Edit2
      FormatExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = 'Text'
          Direction = dirBidirectional
        end>
      ClearExpressions = <>
      NotifyOutputs = False
    end
    object BindExpression1: TBindExpression
      Category = 'Binding Expressions'
      ControlComponent = ProgressBar1
      SourceComponent = SpinEdit1
      SourceExpression = 'Value'
      ControlExpression = 'Position'
      NotifyOutputs = False
      Direction = dirSourceToControl
    end
  end
end
