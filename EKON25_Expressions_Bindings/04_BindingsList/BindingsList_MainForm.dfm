object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'BindingsList'
  ClientHeight = 464
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object ListBox1: TListBox
    Left = 250
    Top = 32
    Width = 301
    Height = 193
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 0
  end
  object btnAdd: TButton
    Left = 77
    Top = 83
    Width = 103
    Height = 39
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Add To List'
    TabOrder = 1
    OnClick = btnAddClick
  end
  object edName: TEdit
    Left = 77
    Top = 58
    Width = 103
    Height = 24
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 2
    Text = 'Anthony'
  end
  object ListView1: TListView
    Left = 250
    Top = 243
    Width = 301
    Height = 187
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Columns = <
      item
        Caption = 'Name'
        Width = 160
      end
      item
        Caption = 'Age'
        Width = 80
      end>
    TabOrder = 3
    ViewStyle = vsReport
  end
  object Button1: TButton
    Left = 24
    Top = 16
    Width = 100
    Height = 37
    Caption = 'Activate'
    TabOrder = 4
    OnClick = Button1Click
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 100
    Top = 189
    object BindListListBox11: TBindList
      Category = 'Lists'
      ControlComponent = ListBox1
      SourceComponent = BindScope1
      FormatExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = 'Current.Name + " is " + ToStr(Current.Age) + " years old"'
        end>
      FormatControlExpressions = <>
      ClearControlExpressions = <>
    end
  end
  object BindScope1: TBindScope
    ScopeMappings = <>
    Left = 184
    Top = 192
  end
end
