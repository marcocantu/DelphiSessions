object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Currency Converter'
  ClientHeight = 153
  ClientWidth = 261
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 23
    Top = 32
    Width = 32
    Height = 13
    Caption = 'Dollars'
  end
  object Label2: TLabel
    Left = 23
    Top = 75
    Width = 27
    Height = 13
    Caption = 'Euros'
  end
  object DollarsEdit: TEdit
    Left = 78
    Top = 29
    Width = 78
    Height = 21
    TabOrder = 0
    OnChange = OnChange
  end
  object EurosEdit: TEdit
    Left = 78
    Top = 72
    Width = 78
    Height = 21
    TabOrder = 1
    OnChange = OnChange
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    UseAppManager = True
    Left = 199
    Top = 12
    object BindExprItemsDollarsEdit1: TBindExprItems
      Category = 'Binding Expressions'
      ControlComponent = DollarsEdit
      SourceComponent = EurosEdit
      FormatExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = 'Owner.Converter.ConvertToDollars(Text)'
        end
        item
          ControlExpression = 'Owner.Converter.ConvertToEuros(Text)'
          SourceExpression = 'Text'
          Direction = dirControlToSource
        end>
      ClearExpressions = <>
      NotifyOutputs = False
    end
  end
end
