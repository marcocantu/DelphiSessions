object frmCtrlListDemo3: TfrmCtrlListDemo3
  Left = 0
  Top = 0
  Caption = 'TControlList LiveBindings Demo'
  ClientHeight = 442
  ClientWidth = 602
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ControlList1: TControlList
    Left = 0
    Top = 82
    Width = 602
    Height = 360
    Align = alClient
    ItemCount = 200
    ItemWidth = 125
    ItemHeight = 50
    ItemIndex = 0
    ItemMargins.Left = 0
    ItemMargins.Top = 0
    ItemMargins.Right = 0
    ItemMargins.Bottom = 0
    ColumnLayout = cltMultiLeftToRight
    ItemSelectionOptions.HotColorAlpha = 50
    ItemSelectionOptions.SelectedColorAlpha = 70
    ItemSelectionOptions.FocusedColorAlpha = 80
    ParentColor = False
    TabOrder = 0
    OnBeforeDrawItem = ControlList1BeforeDrawItem
    OnItemClick = ControlList1ItemClick
    object lblColorValue: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 25
      Width = 36
      Height = 13
      Margins.Left = 10
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = '755384'
      ShowAccelChar = False
      Transparent = True
      WordWrap = True
    end
    object lblHeader: TLabel
      Left = 10
      Top = 6
      Width = 84
      Height = 13
      Caption = 'Darkgoldenrod'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblIndex: TLabel
      Left = 88
      Top = 23
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Idx #'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 602
    Height = 82
    Align = alTop
    Caption = ' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 12
      Top = 9
      Width = 96
      Height = 19
      Caption = 'Record Count'
    end
    object btnJump: TSpeedButton
      Left = 195
      Top = 28
      Width = 46
      Height = 27
      Caption = 'Jump'
      OnClick = btnJumpClick
    end
    object Label2: TLabel
      Left = 140
      Top = 9
      Width = 78
      Height = 19
      Caption = 'Item Index'
    end
    object Label3: TLabel
      Left = 265
      Top = 9
      Width = 84
      Height = 19
      Caption = 'Item Height'
    end
    object Label4: TLabel
      Left = 369
      Top = 9
      Width = 79
      Height = 19
      Caption = 'Item Width'
    end
    object Label5: TLabel
      Left = 463
      Top = 9
      Width = 93
      Height = 19
      Caption = 'Item Margins'
    end
    object numCount: TNumberBox
      Left = 12
      Top = 28
      Width = 96
      Height = 27
      Alignment = taCenter
      MaxValue = 200.000000000000000000
      TabOrder = 0
      Value = 200.000000000000000000
      SpinButtonOptions.Placement = nbspInline
    end
    object numIndex: TNumberBox
      Left = 128
      Top = 28
      Width = 65
      Height = 27
      Alignment = taCenter
      MaxValue = 200.000000000000000000
      TabOrder = 1
      SpinButtonOptions.Placement = nbspInline
    end
    object NumberBox2: TNumberBox
      Left = 369
      Top = 28
      Width = 79
      Height = 27
      Alignment = taCenter
      MaxValue = 200.000000000000000000
      TabOrder = 2
      Value = 125.000000000000000000
      SpinButtonOptions.Placement = nbspInline
    end
    object NumberBox3: TNumberBox
      Left = 463
      Top = 28
      Width = 93
      Height = 27
      Alignment = taCenter
      MaxValue = 200.000000000000000000
      TabOrder = 3
      SpinButtonOptions.Placement = nbspInline
    end
    object NumberBox1: TNumberBox
      Left = 265
      Top = 28
      Width = 84
      Height = 27
      Alignment = taCenter
      MaxValue = 200.000000000000000000
      TabOrder = 4
      Value = 50.000000000000000000
      SpinButtonOptions.Placement = nbspInline
    end
  end
  object PrototypeBindSource1: TPrototypeBindSource
    AutoActivate = True
    AutoEdit = False
    AutoPost = False
    FieldDefs = <
      item
        Name = 'ColorsName1'
        Generator = 'ColorsNames'
        ReadOnly = True
      end
      item
        Name = 'Color1'
        FieldType = ftUInteger
        Generator = 'Colors'
        ReadOnly = True
      end>
    ScopeMappings = <>
    Left = 116
    Top = 179
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 114
    Top = 125
    object LinkPropertyToFieldCaption2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = PrototypeBindSource1
      FieldName = 'Color1'
      Component = lblColorValue
      ComponentProperty = 'Caption'
    end
    object LinkGridToDataSourcePrototypeBindSource1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = PrototypeBindSource1
      GridControl = ControlList1
      Columns = <>
    end
    object LinkControlToPropertyItemCount: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = numCount
      Track = True
      Component = ControlList1
      ComponentProperty = 'ItemCount'
    end
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = PrototypeBindSource1
      FieldName = 'ColorsName1'
      Component = lblHeader
      ComponentProperty = 'Caption'
    end
    object LinkControlToPropertyMaxValue: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = numCount
      Track = True
      Component = numIndex
      ComponentProperty = 'MaxValue'
      InitializeControlValue = False
    end
    object LinkControlToPropertyItemIndex: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = numIndex
      Track = True
      Component = ControlList1
      ComponentProperty = 'ItemIndex'
    end
    object LinkControlToPropertyItemHeight: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = NumberBox1
      Track = True
      Component = ControlList1
      ComponentProperty = 'ItemHeight'
    end
    object LinkControlToPropertyItemWidth: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = NumberBox2
      Track = True
      Component = ControlList1
      ComponentProperty = 'ItemWidth'
    end
    object LinkControlToPropertyItemMarginsTop: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = NumberBox3
      Track = True
      Component = ControlList1
      ComponentProperty = 'ItemMargins.Top'
    end
    object LinkControlToPropertyItemMarginsRight: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = NumberBox3
      Track = True
      Component = ControlList1
      ComponentProperty = 'ItemMargins.Right'
      InitializeControlValue = False
    end
    object LinkControlToPropertyItemMarginsLeft: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = NumberBox3
      Track = True
      Component = ControlList1
      ComponentProperty = 'ItemMargins.Left'
      InitializeControlValue = False
    end
    object LinkControlToPropertyItemMarginsBottom: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = NumberBox3
      Track = True
      Component = ControlList1
      ComponentProperty = 'ItemMargins.Bottom'
      InitializeControlValue = False
    end
  end
end
