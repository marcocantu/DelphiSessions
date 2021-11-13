object FormBindings: TFormBindings
  Left = 0
  Top = 0
  Caption = 'Bindings101'
  ClientHeight = 654
  ClientWidth = 641
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 21
  object Bevel2: TBevel
    Left = 256
    Top = 144
    Width = 193
    Height = 20
  end
  object LabelEval: TLabel
    Left = 469
    Top = 265
    Width = 70
    Height = 21
    Caption = 'LabelEval'
  end
  object SpinEdit1: TSpinEdit
    Left = 56
    Top = 48
    Width = 137
    Height = 32
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 20
    OnChange = SpinEdit1Change
  end
  object SpinEdit2: TSpinEdit
    Left = 56
    Top = 144
    Width = 137
    Height = 32
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 20
    OnChange = SpinEdit2Change
  end
  object memoExpression: TMemo
    Left = 56
    Top = 216
    Width = 393
    Height = 121
    Lines.Strings = (
      '4*10+2')
    TabOrder = 2
  end
  object btnEval: TButton
    Left = 461
    Top = 218
    Width = 124
    Height = 25
    Caption = 'btnEval'
    TabOrder = 3
    OnClick = btnEvalClick
  end
  object Edit1: TEdit
    Left = 64
    Top = 384
    Width = 121
    Height = 29
    TabOrder = 4
    Text = 'Edit2'
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 224
    Top = 384
    Width = 121
    Height = 29
    TabOrder = 5
    Text = 'Edit2'
    OnChange = Edit1Change
  end
  object btnUpdateObj: TButton
    Left = 256
    Top = 480
    Width = 163
    Height = 29
    Caption = 'btnUpdateObj'
    TabOrder = 6
    OnClick = btnUpdateObjClick
  end
  object edName: TEdit
    Left = 64
    Top = 480
    Width = 121
    Height = 29
    TabOrder = 7
    Text = 'edName'
  end
  object ProgressBar1: TProgressBar
    Left = 256
    Top = 48
    Width = 150
    Height = 21
    TabOrder = 8
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    UseAppManager = True
    Left = 548
    Top = 133
    object BindExpressionBevel21: TBindExpression
      Category = 'Binding Expressions'
      ControlComponent = Bevel2
      SourceComponent = SpinEdit2
      SourceMemberName = 'spin2'
      SourceExpression = 'Value'
      ControlExpression = 'Height'
      NotifyOutputs = False
      Direction = dirSourceToControl
    end
    object BindExprItemsEdit11: TBindExprItems
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
  end
end
