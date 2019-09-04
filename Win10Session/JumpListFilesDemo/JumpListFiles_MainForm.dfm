object JumpListForm: TJumpListForm
  Left = 0
  Top = 0
  Caption = 'JumpListForm'
  ClientHeight = 361
  ClientWidth = 645
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
  object ListBox1: TListBox
    Left = 32
    Top = 16
    Width = 577
    Height = 321
    ItemHeight = 13
    TabOrder = 0
  end
  object JumpList1: TJumpList
    AutoRefresh = True
    Enabled = True
    ApplicationID = 'JumpListAppID'
    CustomCategories = <
      item
        CategoryName = 'Dropped Files'
        Items = <>
      end>
    ShowRecent = True
    ShowFrequent = True
    TaskList = <
      item
        FriendlyName = 'Sample'
        Arguments = 'SampleParameter'
      end
      item
        FriendlyName = 'Second'
        Arguments = 'SecondParameter'
      end>
    Left = 56
    Top = 288
  end
end
