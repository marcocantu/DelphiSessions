object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 291
  ClientWidth = 724
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  StyleName = 'Windows'
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 18
    Top = 66
    Width = 555
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 724
    Height = 41
    Align = alTop
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 176
      Top = 8
      Width = 240
      Height = 25
      DataSource = DataSource1
      TabOrder = 0
    end
    object CheckBox1: TCheckBox
      Left = 12
      Top = 13
      Width = 97
      Height = 17
      Caption = 'Connected'
      TabOrder = 1
      OnClick = CheckBox1Click
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Server=127.0.0.1'
      'Port=3050'
      'ConnectionDef=EMPLOYEE')
    Connected = True
    LoginPrompt = False
    Left = 68
    Top = 232
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM customer')
    Left = 192
    Top = 236
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 318
    Top = 240
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 440
    Top = 234
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 582
    Top = 230
  end
end
