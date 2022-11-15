object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 554
  ClientWidth = 2000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Tahoma'
  Font.Style = []
  StyleName = 'Windows'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 192
  TextHeight = 24
  object Button1: TButton
    Left = 24
    Top = 64
    Width = 120
    Height = 40
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'StringList'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 677
    Top = 64
    Width = 120
    Height = 40
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Dictionary'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 154
    Top = 63
    Width = 476
    Height = 475
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object Memo2: TMemo
    Left = 806
    Top = 64
    Width = 477
    Height = 475
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Lines.Strings = (
      'Memo2')
    TabOrder = 3
  end
  object Button3: TButton
    Left = 13
    Top = 13
    Width = 246
    Height = 40
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Fill Lists'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 1332
    Top = 64
    Width = 120
    Height = 40
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'MemTable'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Memo3: TMemo
    Left = 1462
    Top = 63
    Width = 477
    Height = 475
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Lines.Strings = (
      'Memo3')
    TabOrder = 6
  end
  object FDMemTable1: TFDMemTable
    FieldDefs = <
      item
        Name = 'Name'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Value'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexesActive = False
    IndexFieldNames = 'Name'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvCountUpdatedRecords, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    StoreDefs = True
    Left = 1528
    Top = 360
    object FDMemTable1Name: TStringField
      FieldName = 'Name'
    end
    object FDMemTable1Value: TIntegerField
      FieldName = 'Value'
    end
  end
end
