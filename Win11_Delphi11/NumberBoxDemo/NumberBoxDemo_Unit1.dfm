object NumBoxDemo: TNumBoxDemo
  Left = 0
  Top = 0
  Caption = 'TNumberBox Demo'
  ClientHeight = 403
  ClientWidth = 594
  Color = clBtnFace
  Constraints.MinHeight = 462
  Constraints.MinWidth = 610
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    594
    403)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 215
    Width = 36
    Height = 13
    Caption = 'Decimal'
  end
  object Label2: TLabel
    Left = 8
    Top = 242
    Width = 52
    Height = 13
    Caption = 'Large Step'
  end
  object Label3: TLabel
    Left = 8
    Top = 296
    Width = 40
    Height = 13
    Caption = 'Max Len'
  end
  object Label4: TLabel
    Left = 8
    Top = 269
    Width = 49
    Height = 13
    Caption = 'Small Step'
  end
  object Label5: TLabel
    Left = 8
    Top = 323
    Width = 49
    Height = 13
    Caption = 'Max Value'
  end
  object Label6: TLabel
    Left = 8
    Top = 350
    Width = 45
    Height = 13
    Caption = 'Min Value'
  end
  object Label7: TLabel
    Left = 150
    Top = 279
    Width = 25
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Color'
  end
  object Label15: TLabel
    Left = 8
    Top = 189
    Width = 44
    Height = 13
    Caption = 'Currency'
  end
  object Label16: TLabel
    Left = 8
    Top = 377
    Width = 44
    Height = 13
    Caption = 'Font Size'
  end
  object Label17: TLabel
    Left = 228
    Top = 201
    Width = 100
    Height = 13
    Caption = 'Example Expressions'
  end
  object NumberBox1: TNumberBox
    Left = 168
    Top = 128
    Width = 225
    Height = 38
    AcceptExpressions = True
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight]
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 30
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 1
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 0
    Value = -100.000000000000000000
    SpinButtonOptions.ButtonWidth = 24
    SpinButtonOptions.Placement = nbspInline
    SpinButtonOptions.ArrowHotColor = clHotLight
    SpinButtonOptions.ArrowPressedColor = clBtnHighlight
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 8
    Width = 129
    Height = 17
    Caption = 'Accept Expressions'
    Checked = True
    State = cbChecked
    TabOrder = 1
  end
  object CheckBox2: TCheckBox
    Left = 8
    Top = 54
    Width = 97
    Height = 17
    Caption = 'Autosize'
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 408
    Top = 8
    Width = 185
    Height = 336
    Anchors = [akTop, akRight]
    Caption = 'Spin Button Options'
    TabOrder = 3
    object Label8: TLabel
      Left = 10
      Top = 142
      Width = 63
      Height = 13
      Caption = 'Button Width'
    end
    object Label9: TLabel
      Left = 10
      Top = 118
      Width = 60
      Height = 13
      Caption = 'Arrow Width'
    end
    object Label10: TLabel
      Left = 10
      Top = 169
      Width = 76
      Height = 13
      Caption = 'Repeat Interval'
    end
    object Label11: TLabel
      Left = 10
      Top = 246
      Width = 17
      Height = 13
      Caption = 'Hot'
    end
    object Label12: TLabel
      Left = 10
      Top = 274
      Width = 38
      Height = 13
      Caption = 'Pressed'
    end
    object Label13: TLabel
      Left = 10
      Top = 302
      Width = 40
      Height = 13
      Caption = 'Disabled'
    end
    object Label14: TLabel
      Left = 10
      Top = 219
      Width = 29
      Height = 13
      Caption = 'Arrow'
    end
    object rdoPlacement: TRadioGroup
      Left = 9
      Top = 25
      Width = 155
      Height = 81
      Caption = 'Placement'
      TabOrder = 0
      OnClick = rdoPlacementClick
    end
    object NumberBox9: TNumberBox
      Left = 92
      Top = 112
      Width = 80
      Height = 21
      Alignment = taCenter
      TabOrder = 1
      SpinButtonOptions.Placement = nbspCompact
    end
    object NumberBox8: TNumberBox
      Left = 92
      Top = 139
      Width = 80
      Height = 21
      Alignment = taCenter
      TabOrder = 2
      Value = 24.000000000000000000
      SpinButtonOptions.Placement = nbspCompact
    end
    object NumberBox10: TNumberBox
      Left = 92
      Top = 166
      Width = 80
      Height = 21
      Alignment = taCenter
      TabOrder = 3
      Value = 100.000000000000000000
      SpinButtonOptions.Placement = nbspCompact
    end
    object CheckBox5: TCheckBox
      Left = 11
      Top = 193
      Width = 129
      Height = 17
      Caption = 'Show Inline Dividers'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object ColorBox1: TColorBox
      Left = 64
      Top = 243
      Width = 110
      Height = 22
      Selected = clHotLight
      TabOrder = 5
    end
    object ColorBox2: TColorBox
      Left = 64
      Top = 271
      Width = 110
      Height = 22
      Selected = clBtnHighlight
      TabOrder = 6
    end
    object ColorBox3: TColorBox
      Left = 64
      Top = 299
      Width = 110
      Height = 22
      Selected = clGrayText
      TabOrder = 7
    end
    object ColorBox4: TColorBox
      Left = 64
      Top = 216
      Width = 110
      Height = 22
      Selected = clWindowText
      TabOrder = 8
    end
  end
  object ColorListBox1: TColorListBox
    Left = 150
    Top = 298
    Width = 139
    Height = 97
    Selected = clWindow
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 4
  end
  object CheckBox3: TCheckBox
    Left = 8
    Top = 31
    Width = 97
    Height = 17
    Caption = 'AutoSelect'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object rdoMode: TRadioGroup
    Left = 168
    Top = 8
    Width = 105
    Height = 90
    Caption = 'Mode'
    TabOrder = 6
    OnClick = rdoModeClick
  end
  object rdoCurrencyFormat: TRadioGroup
    Left = 295
    Top = 295
    Width = 106
    Height = 100
    Anchors = [akRight, akBottom]
    Caption = 'Currency Format'
    ItemIndex = 0
    Items.Strings = (
      '$0.00'
      '0.00$'
      '$ 0.00'
      '0.00 $')
    TabOrder = 7
    OnClick = rdoCurrencyFormatClick
  end
  object NumberBox2: TNumberBox
    Left = 64
    Top = 212
    Width = 80
    Height = 21
    Alignment = taCenter
    TabOrder = 8
    Value = 2.000000000000000000
    SpinButtonOptions.Placement = nbspCompact
  end
  object NumberBox3: TNumberBox
    Left = 64
    Top = 239
    Width = 80
    Height = 21
    Alignment = taCenter
    TabOrder = 9
    Value = 10.000000000000000000
    SpinButtonOptions.Placement = nbspCompact
  end
  object NumberBox4: TNumberBox
    Left = 64
    Top = 293
    Width = 80
    Height = 21
    Alignment = taCenter
    TabOrder = 10
    Value = 1.000000000000000000
    SpinButtonOptions.Placement = nbspCompact
  end
  object NumberBox5: TNumberBox
    Left = 64
    Top = 266
    Width = 80
    Height = 21
    Alignment = taCenter
    TabOrder = 11
    Value = 1.000000000000000000
    SpinButtonOptions.Placement = nbspCompact
  end
  object NumberBox6: TNumberBox
    Left = 64
    Top = 320
    Width = 80
    Height = 21
    Alignment = taCenter
    TabOrder = 12
    SpinButtonOptions.Placement = nbspCompact
  end
  object NumberBox7: TNumberBox
    Left = 64
    Top = 347
    Width = 80
    Height = 21
    Alignment = taCenter
    TabOrder = 13
    SpinButtonOptions.Placement = nbspCompact
  end
  object CheckBox4: TCheckBox
    Left = 8
    Top = 75
    Width = 97
    Height = 17
    Caption = 'ReadOnly'
    TabOrder = 14
  end
  object rdoAlign: TRadioGroup
    Left = 287
    Top = 8
    Width = 106
    Height = 90
    Caption = 'Align'
    TabOrder = 15
    OnClick = rdoAlignClick
  end
  object CheckBox6: TCheckBox
    Left = 8
    Top = 98
    Width = 116
    Height = 17
    Caption = 'Use Mouse Wheel'
    TabOrder = 16
  end
  object CheckBox7: TCheckBox
    Left = 8
    Top = 121
    Width = 116
    Height = 17
    Caption = 'Use NaN Value'
    TabOrder = 17
  end
  object CheckBox8: TCheckBox
    Left = 8
    Top = 144
    Width = 116
    Height = 17
    Caption = 'Use Up Down Keys'
    Checked = True
    State = cbChecked
    TabOrder = 18
  end
  object CheckBox9: TCheckBox
    Left = 8
    Top = 167
    Width = 116
    Height = 17
    Caption = 'Wrap'
    TabOrder = 19
  end
  object ComboBox1: TComboBox
    Left = 64
    Top = 185
    Width = 80
    Height = 21
    TabOrder = 20
    OnChange = ComboBox1Change
    Items.Strings = (
      '$'
      #163
      #8364
      #165
      #8361
      #8358
      #8369
      #8381
      #8360
      #3647
      #402
      'R$'
      #8353
      #162
      #8362)
  end
  object NumberBox11: TNumberBox
    Left = 64
    Top = 374
    Width = 80
    Height = 21
    Alignment = taCenter
    TabOrder = 21
    Value = 30.000000000000000000
    SpinButtonOptions.Placement = nbspCompact
  end
  object ComboBox2: TComboBox
    Left = 208
    Top = 220
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 22
    OnChange = ComboBox2Change
    Items.Strings = (
      '20*42'
      '1+2+3+4+5'
      '10/33'
      '8-2'
      '10/(2+5*3)*25')
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 124
    Top = 69
    object LinkControlToPropertyAcceptExpressions: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = CheckBox1
      Track = True
      Component = NumberBox1
      ComponentProperty = 'AcceptExpressions'
    end
    object LinkControlToPropertyAutoSize: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = CheckBox2
      Track = True
      Component = NumberBox1
      ComponentProperty = 'AutoSize'
    end
    object LinkControlToPropertyColor: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = ColorListBox1
      Track = True
      Component = NumberBox1
      ComponentProperty = 'Color'
    end
    object LinkControlToPropertyAutoSelect: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = CheckBox3
      Track = True
      Component = NumberBox1
      ComponentProperty = 'AutoSelect'
    end
    object LinkControlToPropertyDecimal: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = NumberBox2
      Track = True
      Component = NumberBox1
      ComponentProperty = 'Decimal'
    end
    object LinkControlToPropertyMaxLength: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = NumberBox4
      Track = True
      Component = NumberBox1
      ComponentProperty = 'MaxLength'
    end
    object LinkControlToPropertySmallStep: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = NumberBox5
      Track = True
      Component = NumberBox1
      ComponentProperty = 'SmallStep'
    end
    object LinkControlToPropertyMaxValue: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = NumberBox6
      Track = True
      Component = NumberBox1
      ComponentProperty = 'MaxValue'
    end
    object LinkControlToPropertyMinValue: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = NumberBox7
      Track = True
      Component = NumberBox1
      ComponentProperty = 'MinValue'
    end
    object LinkControlToPropertyReadOnly: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = CheckBox4
      Track = True
      Component = NumberBox1
      ComponentProperty = 'ReadOnly'
    end
    object LinkControlToPropertySpinButtonOptionsButtonWidth: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = NumberBox8
      Track = True
      Component = NumberBox1
      ComponentProperty = 'SpinButtonOptions.ButtonWidth'
    end
    object LinkControlToPropertySpinButtonOptionsArrowWidth: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = NumberBox9
      Track = True
      Component = NumberBox1
      ComponentProperty = 'SpinButtonOptions.ArrowWidth'
    end
    object LinkControlToPropertySpinButtonOptionsRepeatTimerInterval: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = NumberBox10
      Track = True
      Component = NumberBox1
      ComponentProperty = 'SpinButtonOptions.RepeatTimerInterval'
    end
    object LinkControlToPropertySpinButtonOptionsShowInlineDividers: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = CheckBox5
      Track = True
      Component = NumberBox1
      ComponentProperty = 'SpinButtonOptions.ShowInlineDividers'
    end
    object LinkControlToPropertyUseMouseWheel: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = CheckBox6
      Track = True
      Component = NumberBox1
      ComponentProperty = 'UseMouseWheel'
    end
    object LinkControlToPropertyUseNaNValue: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = CheckBox7
      Track = True
      Component = NumberBox1
      ComponentProperty = 'UseNaNValue'
    end
    object LinkControlToPropertyUseUpDownKeys: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = CheckBox8
      Track = True
      Component = NumberBox1
      ComponentProperty = 'UseUpDownKeys'
    end
    object LinkControlToPropertyWrap: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = CheckBox9
      Track = True
      Component = NumberBox1
      ComponentProperty = 'Wrap'
    end
    object LinkControlToPropertySpinButtonOptionsArrowColor: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = ColorBox4
      Track = True
      Component = NumberBox1
      ComponentProperty = 'SpinButtonOptions.ArrowColor'
    end
    object LinkControlToPropertySpinButtonOptionsArrowHotColor: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = ColorBox1
      Track = True
      Component = NumberBox1
      ComponentProperty = 'SpinButtonOptions.ArrowHotColor'
    end
    object LinkControlToPropertySpinButtonOptionsArrowPressedColor: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = ColorBox2
      Track = True
      Component = NumberBox1
      ComponentProperty = 'SpinButtonOptions.ArrowPressedColor'
    end
    object LinkControlToPropertySpinButtonOptionsArrowDisabledColor: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = ColorBox3
      Track = True
      Component = NumberBox1
      ComponentProperty = 'SpinButtonOptions.ArrowDisabledColor'
    end
    object LinkControlToPropertyLargeStep: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = NumberBox3
      Track = True
      Component = NumberBox1
      ComponentProperty = 'LargeStep'
    end
    object LinkControlToPropertyFontHeight: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = NumberBox11
      Track = True
      Component = NumberBox1
      ComponentProperty = 'Font.Height'
    end
  end
  object MainMenu1: TMainMenu
    Left = 128
    Top = 16
    object Exit1: TMenuItem
      Caption = 'Exit'
      OnClick = Exit1Click
    end
    object mnuStyle: TMenuItem
      Caption = 'Style'
    end
  end
end
