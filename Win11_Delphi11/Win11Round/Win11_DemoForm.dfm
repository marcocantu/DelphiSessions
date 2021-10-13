object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Win11_DemoProject'
  ClientHeight = 761
  ClientWidth = 1346
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 192
  TextHeight = 32
  object Button1: TButton
    Left = 152
    Top = 112
    Width = 290
    Height = 50
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Caption = 'Press to add'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 152
    Top = 224
    Width = 290
    Height = 306
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    ItemHeight = 32
    Items.Strings = (
      'one'
      'two'
      'three')
    TabOrder = 1
  end
  object ListBox2: TListBox
    Left = 696
    Top = 224
    Width = 282
    Height = 306
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    ItemHeight = 32
    Items.Strings = (
      'Default'
      'None'
      'Rounded'
      'Small Rounded')
    TabOrder = 2
    OnClick = ListBox2Click
  end
end
