object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Changing Per Control Styles at Runtime'
  ClientHeight = 455
  ClientWidth = 545
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 391
    Height = 436
    Align = alClient
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 1
    OnDragDrop = Button1DragDrop
    OnDragOver = Button1DragOver
    object Label1: TLabel
      Left = 8
      Top = 162
      Width = 31
      Height = 13
      Caption = 'Label1'
      OnDragDrop = Button1DragDrop
      OnDragOver = Button1DragOver
    end
    object Label2: TLabel
      Left = 0
      Top = 0
      Width = 391
      Height = 25
      Align = alTop
      Alignment = taCenter
      Caption = 'Drag a style from the left onto a control'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnDragDrop = Button1DragDrop
      OnDragOver = Button1DragOver
      ExplicitWidth = 374
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 127
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 0
      OnDragDrop = Button1DragDrop
      OnDragOver = Button1DragOver
    end
    object Button1: TButton
      Left = 212
      Top = 95
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 1
      OnDragDrop = Button1DragDrop
      OnDragOver = Button1DragOver
    end
    object CheckBox1: TCheckBox
      Left = 113
      Top = 206
      Width = 93
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 2
      OnDragDrop = Button1DragDrop
      OnDragOver = Button1DragOver
    end
    object ComboBox1: TComboBox
      Left = 212
      Top = 36
      Width = 145
      Height = 21
      TabOrder = 3
      Text = 'ComboBox1'
      OnDragDrop = Button1DragDrop
      OnDragOver = Button1DragOver
    end
    object DateTimePicker1: TDateTimePicker
      Left = 183
      Top = 229
      Width = 145
      Height = 21
      Date = 43976.000000000000000000
      Time = 0.776702326387749100
      TabOrder = 4
      OnDragDrop = Button1DragDrop
      OnDragOver = Button1DragOver
    end
    object Edit1: TEdit
      Left = 8
      Top = 181
      Width = 198
      Height = 21
      TabOrder = 5
      Text = 'Edit1'
      OnDragDrop = Button1DragDrop
      OnDragOver = Button1DragOver
    end
    object ListBox2: TListBox
      Left = 212
      Top = 126
      Width = 121
      Height = 97
      ItemHeight = 13
      TabOrder = 6
      OnDragDrop = Button1DragDrop
      OnDragOver = Button1DragOver
    end
    object MaskEdit1: TMaskEdit
      Left = 8
      Top = 266
      Width = 145
      Height = 21
      TabOrder = 7
      Text = 'MaskEdit1'
      OnDragDrop = Button1DragDrop
      OnDragOver = Button1DragOver
    end
    object Memo1: TMemo
      Left = 8
      Top = 36
      Width = 185
      Height = 89
      Lines.Strings = (
        'Memo1')
      TabOrder = 8
      OnDragDrop = Button1DragDrop
      OnDragOver = Button1DragOver
    end
    object ProgressBar1: TProgressBar
      Left = 183
      Top = 270
      Width = 150
      Height = 17
      TabOrder = 9
      OnDragDrop = Button1DragDrop
      OnDragOver = Button1DragOver
    end
    object RadioButton1: TRadioButton
      Left = 8
      Top = 208
      Width = 89
      Height = 17
      Caption = 'RadioButton1'
      TabOrder = 10
      OnDragDrop = Button1DragDrop
      OnDragOver = Button1DragOver
    end
    object ScrollBar1: TScrollBar
      Left = 8
      Top = 231
      Width = 145
      Height = 17
      PageSize = 0
      TabOrder = 11
      OnDragDrop = Button1DragDrop
      OnDragOver = Button1DragOver
    end
    object SearchBox1: TSearchBox
      Left = 212
      Top = 63
      Width = 145
      Height = 21
      TabOrder = 12
      Text = 'SearchBox1'
      OnDragDrop = Button1DragDrop
      OnDragOver = Button1DragOver
    end
    object StringGrid1: TStringGrid
      Left = 8
      Top = 304
      Width = 353
      Height = 120
      TabOrder = 13
      OnDragDrop = Button1DragDrop
      OnDragOver = Button1DragOver
    end
    object ToggleSwitch1: TToggleSwitch
      Left = 113
      Top = 131
      Width = 72
      Height = 20
      TabOrder = 14
      OnDragDrop = Button1DragDrop
      OnDragOver = Button1DragOver
    end
    object TrackBar2: TTrackBar
      Left = 347
      Top = 100
      Width = 31
      Height = 187
      Orientation = trVertical
      TabOrder = 15
      OnDragDrop = Button1DragDrop
      OnDragOver = Button1DragOver
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 436
    Width = 545
    Height = 19
    Panels = <>
    OnDragDrop = Button1DragDrop
    OnDragOver = Button1DragOver
  end
  object Panel2: TPanel
    Left = 391
    Top = 0
    Width = 154
    Height = 436
    Align = alRight
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 2
    object ListBox1: TListBox
      Left = 0
      Top = 0
      Width = 154
      Height = 382
      Align = alClient
      DragMode = dmAutomatic
      ItemHeight = 13
      Items.Strings = (
        '')
      TabOrder = 0
      OnClick = ListBox1Click
      OnDblClick = ListBox1DblClick
    end
    object Panel3: TPanel
      Left = 0
      Top = 382
      Width = 154
      Height = 54
      Align = alBottom
      BevelOuter = bvNone
      Caption = ' '
      TabOrder = 1
      object BitBtn2: TBitBtn
        Left = 41
        Top = 0
        Width = 41
        Height = 25
        Align = alLeft
        Caption = 'Reset'
        TabOrder = 0
        OnClick = BitBtn2Click
      end
      object CheckBox2: TCheckBox
        Left = 89
        Top = 5
        Width = 58
        Height = 17
        Caption = 'Psycho'
        TabOrder = 1
      end
      object BitBtn3: TBitBtn
        Left = 0
        Top = 0
        Width = 41
        Height = 25
        Align = alLeft
        Caption = ' Rand'
        TabOrder = 2
        OnClick = BitBtn3Click
      end
      object TrackBar1: TTrackBar
        Left = 0
        Top = 25
        Width = 154
        Height = 29
        Align = alBottom
        Max = 100
        Min = 1
        PageSize = 10
        Frequency = 10
        Position = 50
        TabOrder = 3
        OnChange = TrackBar1Change
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 456
    Top = 320
  end
end
