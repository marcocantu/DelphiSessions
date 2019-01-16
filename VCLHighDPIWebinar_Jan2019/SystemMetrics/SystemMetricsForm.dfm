object frmSystemMetrics: TfrmSystemMetrics
  Left = 0
  Top = 0
  Caption = 'SystemMetrics'
  ClientHeight = 299
  ClientWidth = 388
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
    Left = 96
    Top = 40
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 96
    Top = 72
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object btnRefresh: TButton
    Left = 96
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Refresh'
    TabOrder = 0
    OnClick = btnRefreshClick
  end
end
